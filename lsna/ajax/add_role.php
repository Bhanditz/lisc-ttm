<?
include $_SERVER['DOCUMENT_ROOT'] . "/include/dbconnopen.php";
include $_SERVER['DOCUMENT_ROOT'] . "/core/include/setup_user.php";

user_enforce_has_access($LSNA_id, $DataEntryAccess);

/* add role - people can have more than one */
include "../include/dbconnopen.php";
$user_id_sqlsafe=mysqli_real_escape_string($cnnLSNA, $_POST['user_id']);
$role_sqlsafe=mysqli_real_escape_string($cnnLSNA, $_POST['role']);
if ($_POST['action']=='add'){
    $add_role = "INSERT INTO Participants_Roles (Participant_ID, Role_ID) VALUES ('" . $user_id_sqlsafe . "', '" . $role_sqlsafe . "')";
    echo $add_role;
    include "../include/dbconnopen.php";
    mysqli_query($cnnLSNA, $add_role);
    include "../include/dbconnclose.php";
}
/* remove participant role */
elseif ($_POST['action']=='remove'){
    $remove_role = "DELETE FROM Participants_Roles WHERE Participant_ID='" . $user_id_sqlsafe . "' AND Role_ID='" . $role_sqlsafe . "'";
    echo $remove_role;
    include "../include/dbconnopen.php";
    mysqli_query($cnnLSNA, $remove_role);
    include "../include/dbconnclose.php";
}
?>
