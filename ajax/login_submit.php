<?php

include ($_SERVER['DOCUMENT_ROOT'] . "/include/dbconnopen.php");
if (isset($_POST['username'])){
    $username = $_POST["username"];
    $password = $_POST["password"];
}

$username_sqlsafe=mysqli_real_escape_string($cnnLISC, $username);
$password_sqlsafe=mysqli_real_escape_string($cnnLISC, $password);

$user_query = "SELECT * FROM  Users WHERE User_Email = '$username_sqlsafe' AND User_Password = '$password_sqlsafe'";

$user = mysqli_query($cnnLISC, $user_query);

$is_user = mysqli_num_rows($user);
$user_id = mysqli_fetch_array($user);

//if this user exists in the database
if ($is_user>0){
    //record this login in the Log
    $log_call = "INSERT INTO Log (Log_Event) VALUES (CONCAT('" . $username_sqlsafe . "', ' - Logged In'))";
    
    mysqli_query($cnnLISC, $log_call);
    
    //set the user cookie
       // FIXME: see issue #33 re the single-quotes around $username here
       setcookie("user", "'$username'", time() + 10800, '/');
      
       //now find which, if any, privileges they have and set an appropriate cookie
       $privileges_query = "CALL User__Find_Privileges('$username_sqlsafe')";
       $privileges = mysqli_query($cnnLISC, $privileges_query);
       
       $i=0;
       while ($privilege = mysqli_fetch_array($privileges)){
           if ($privilege['Privilege_Id'] == '1'){
               /*we don't really use this one*/
               setcookie('sites[]', 'all_sites', time() + 10800, '/');
               echo "Congrats!  You have access to all the sites.";
               break;
           }
           else{
               /*set a site cookie for each of the sites this person has access to.*/
               setcookie('sites['.$i.']', $privilege['Privilege_Id'], time() + 10800, '/');
               $get_level_of_access = "SELECT Site_Privilege_ID FROM Users_Privileges INNER JOIN Users
                    ON Users_Privileges.User_ID=Users.User_ID WHERE User_Email = '$username_sqlsafe' AND User_Password = '$password_sqlsafe'";
              
               $access_level = mysqli_query($cnnLISC, $get_level_of_access);
               $level = mysqli_fetch_row($access_level);
               if ($level[0] !=1){
                   /*all non-admin users have the view_restricted cookie, which stops them from seeing admin-only
                    * options (e.g. Alter Privileges, delete buttons)
                    */
                   setcookie('view_restricted', $level[0], time()+10800, '/');
                   if ($level[0]==3){
                       /*View-only users have the view_only cookie, which is used to hide
                        * anything that edits or changes information.
                        */
                       setcookie('view_only', $level[0], time()+10800, '/');
                   }
               }
               else{
                   /* If user is an admin, unset the view_only and
                      view_restricted cookies. */
                   setcookie('view_only', $level[0], time()-10800, '/');
                   setcookie('view_restricted', $level[0], time()-10800, '/');
               }
           }
           //echo $i . "<br>";
           $i=$i+1;
           
       }
}
else{
    $log_call = "INSERT INTO Log (Log_Event) VALUES (CONCAT('" . $username_sqlsafe . "', ' - Invalid Login'))";
    
    
    mysqli_query($cnnLISC, $log_call);

    echo '0';
}

include ($_SERVER['DOCUMENT_ROOT'] . "/include/dbconnclose.php");
?>
