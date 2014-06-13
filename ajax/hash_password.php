<?php
require("../include/phpass-0.3/PasswordHash.php");
$hasher=new PasswordHash(8, false);


$get_plaintext_passes="SELECT User_ID, User_Password FROM Users";
include "../include/dbconnopen.php";
echo $get_plaintext_passes;
/*$plaintext_passes=mysqli_query($cnnLISC, $get_plaintext_passes);
while ($plainpass=mysqli_fetch_row($plaintext_passes)){
    $hashpass=$hasher->HashPassword($plainpass[1]);
    $save_hashed="UPDATE Users SET User_Password='$hashpass' WHERE User_ID='$plainpass[0]'";
    mysqli_query($cnnLISC, $save_hashed);
}
*/

/*
include "../include/dbconnclose.php";*/

/*hash a sample password*/
$hashpass=$hasher->HashPassword('password');
echo $hashpass . "\n";

/*check to see if hash matches the plaintext*/
$check=$hasher->CheckPassword('password', $hashpass);
echo $check . "\n";


/*now that we've established that works, do this for an array of passwords*/

$password_array=array('password', 'test', '123456', 'c0mb0numl3t');
foreach ($password_array as $pass){
    $hashpass_array[]=$hasher->HashPassword($pass);
}
print_r($hashpass_array);

$n=0;

while($n<count($password_array)){
    $check_array[]=$hasher->CheckPassword($password_array[$n], $hashpass_array[$n]);
    $n++;
}
print_r($check_array);


/*attempted to save into file*/
$query="SELECT User_Email FROM Users INTO OUTFILE '/home/cdonnelly/tmp/emails.csv' FIELDS TERMINATED BY ',' 
    ENCLOSED BY '\"' LINES TERMINATED BY '\n'";
//ERROR 1 (HY000): Can't create/write to file '/home/cdonnelly/tmp/emails.csv' (Errcode: 13)


/*script!  ignore the need for a file for the moment: */

//file should include separated values with user id and user password
$file = fopen("test.txt","r");


//create array to put hashed (or plaintext) passwords into
$new_passes=array();

//loop through lines of file, extracting passwords
while(! feof($file))
  {
  $this_line=fgets($file);
  $line_array=explode(',' $this_line);
  print_r($line_array); //testing only
  if ($line_array[1]){   //if is hashed (how to check that?)
  //there is no way to unhash them using PHPass
      
  }
  //
  //else if is plaintext
  else{ //if not hashed (i.e. is plaintext)
      //hash
      //save each hashed password corresponding to the user ID
      $new_passes[$line_array[0]]=$hasher->HashPassword($line_array[1]);
  }
  }

fclose($file);

//now create the file to load new passwords into DB

$load_file=fopen('/path/to/sql.sql');
$insert_values="INSERT INTO ttm-core.Users VALUES ";
foreach ($new_passes as $id->$password){
    $insert_values.="($id, $password)";
    //add comma if not last pair
}


fwrite($load_file, $insert_values);

?>
