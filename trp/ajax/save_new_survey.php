<?php
/* add a parent survey.  It's not clear how much this will be used, since Gads Hill
 * didn't implement ETO in time to fully integrate them into this system.
 *  */
	$date_formatted=explode('/', $_POST['date']);
	$date = $date_formatted[2]."-".$date_formatted[0]."-".$date_formatted[1];
$save_survey_answers = "INSERT INTO Gads_Hill_Parent_Survey (
    Child_ID,
    Child_Grade,
    Date_Surveyed,
    First_Part_1,
    First_Part_2,
    First_Part_3,
    First_Part_4,
    First_Part_5,
    First_Part_6,
    First_Part_7,
    First_Part_8,
    First_Part_9,
    Second_Part_1,
    Second_Part_2,
    Second_Part_3,
    Second_Part_4)
    VALUES (
    
    '" . $_POST['child'] . "',
                   '" . $_POST['grade'] . "',
                   '" . $date . "',
                       
                   '" . $_POST['first_1'] . "',
                   '" . $_POST['first_2'] . "',
                   '" . $_POST['first_3'] . "',
                   '" . $_POST['first_4'] . "',
                    '" . $_POST['first_5'] . "',
                    '" . $_POST['first_6'] . "',
                    '" . $_POST['first_7'] . "',
                    '" . $_POST['first_8'] . "',
                    '" . $_POST['first_9'] . "',
                       
                   '" . $_POST['second_1'] . "',
                   '" . $_POST['second_2'] . "',
                   '" . $_POST['second_3'] . "',
                   '" . $_POST['second_4'] . "')";
echo $save_survey_answers;
include "../include/dbconnopen.php";
mysqli_query($cnnTRP, $save_survey_answers);
include "../include/dbconnclose.php";
?>