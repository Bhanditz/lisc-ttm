<?php
include "../include/dbconnopen.php";
if ($_POST['housing']==''){
    /*5 is n/a, or something of the sort.  Current housing links to another table, so it's
     * useful to have SOMETHING entered there.
     */
    $housing_sqlsafe=5;
}else{$housing_sqlsafe=mysqli_real_escape_string($cnnSWOP, $_POST['housing']);}
/* add new finances.  There's no option to edit finances, only add new ones (possible weakness). */
$new_finance_checkin_sqlsafe="INSERT INTO Pool_Finances (Participant_ID,
                    Credit_Score,
                    Income,
                    Current_Housing,
                    Household_Location,
                    Housing_Cost,
                    Assets)
                    VALUES
                    ('".mysqli_real_escape_string($cnnSWOP, $_POST['person']) ."',
                    '".mysqli_real_escape_string($cnnSWOP, $_POST['credit']) ."',
                     '".mysqli_real_escape_string($cnnSWOP, $_POST['income']) ."',
                     '".$housing_sqlsafe ."',
                     '".mysqli_real_escape_string($cnnSWOP, $_POST['location']) ."',
                     '".mysqli_real_escape_string($cnnSWOP, $_POST['cost']) ."',
                     '".mysqli_real_escape_string($cnnSWOP, $_POST['assets']) ."')";
/* since finance table includes employment, there is also an employers table to show where people work. */
$new_employer_sqlsafe="INSERT INTO Pool_Employers (Participant_ID, Employer_Name, Work_Time) VALUES ('".mysqli_real_escape_string($cnnSWOP, $_POST['person']) ."',
                    '".mysqli_real_escape_string($cnnSWOP, $_POST['employer']) ."',
                     '".mysqli_real_escape_string($cnnSWOP, $_POST['work_time']) ."')";
echo $new_finance_checking_sqlsafe . "<br>";
echo $new_employer_sqlsafe;
mysqli_query($cnnSWOP, $new_finance_checking_sqlsafe);
mysqli_query($cnnSWOP, $new_employer_sqlsafe);
$id = mysqli_insert_id($cnnSWOP);
include "../include/dbconnclose.php";
?>
