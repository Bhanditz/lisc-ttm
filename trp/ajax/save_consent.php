<?php
/* Save consent per person per year (for CPS).  May need to be expanded for program-specific consent. */

$insert_consent="INSERT INTO Participants_Consent (Participant_ID, School_Year, Consent_Given) VALUES (
    '".$_POST['participant']."', '".$_POST['year']."', '".$_POST['form']."')";

echo $insert_consent;

include "../include/dbconnopen.php";
mysqli_query($cnnTRP, $insert_consent);
include "../include/dbconnclose.php";
?>