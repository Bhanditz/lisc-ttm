<?php
include $_SERVER['DOCUMENT_ROOT'] . "/include/dbconnopen.php";
include $_SERVER['DOCUMENT_ROOT'] . "/core/include/setup_user.php";

user_enforce_has_access($Bickerdike_id, $DataEntryAccess);

include "../include/dbconnopen.php";
$name_sqlsafe=mysqli_real_escape_string($cnnBickerdike, $_POST['name']);
$date_sqlsafe=mysqli_real_escape_string($cnnBickerdike, $_POST['date']);
$org_sqlsafe=mysqli_real_escape_string($cnnBickerdike, $_POST['org']);
$note_sqlsafe=mysqli_real_escape_string($cnnBickerdike, $_POST['note']);
$type_sqlsafe=  mysqli_real_escape_string($cnnBickerdike, $_POST['type']);
$event_id_sqlsafe=mysqli_real_escape_string($cnnBickerdike, $_POST['event_id']);
$edit_event_query_sqlsafe = "UPDATE User_Established_Activities SET 
                            Activity_Name='" . $name_sqlsafe . "',
                            Activity_Date='" . $date_sqlsafe . "',
                            Activity_Type='" . $type_sqlsafe . "',
                            Notes='" . $note_sqlsafe . "',
                            Activity_Org='" . $org_sqlsafe ."'
                            WHERE User_Established_Activities_ID='" . $event_id_sqlsafe . "'";
echo $edit_event_query_sqlsafe;
mysqli_query($cnnBickerdike, $edit_event_query_sqlsafe);
include "../include/dbconnclose.php";


?>
