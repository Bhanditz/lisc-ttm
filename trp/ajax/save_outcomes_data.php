<?php
/* save outcomes data from the Community Engagement page. */
include "../include/dbconnopen.php";
$new_outcomes_data_sqlsafe = "INSERT INTO Outcomes_Months (
				Outcome_ID,
				Month,
				Year,
				Goal_Outcome,
				Actual_Outcome
				) VALUES (
				'" . mysqli_real_escape_string($cnnTRP, $_POST['outcome_id']) . "',
				'" . mysqli_real_escape_string($cnnTRP, $_POST['outcome_month']) . "',
				'" . mysqli_real_escape_string($cnnTRP, $_POST['outcome_year']) . "',
				'" . mysqli_real_escape_string($cnnTRP, $_POST['outcome_goal']) . "',
				'" . mysqli_real_escape_string($cnnTRP, $_POST['outcome_actual']) . "')";
echo $new_outcomes_data_sqlsafe;
mysqli_query($cnnTRP, $new_outcomes_data_sqlsafe);
include "../include/dbconnclose.php";

?>