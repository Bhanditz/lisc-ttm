<?php

//make arrays for selector functions


$school_year_array = array(2013 => '2013', 2014 => '2014', 2015 => '2015', 2016 => '2016', 2017 => '2017'); 
$get_college_list_sqlsafe = "SELECT * FROM Colleges ORDER BY College_Name";
include "../include/dbconnopen.php";
$college_list = mysqli_query($cnnTRP, $get_college_list_sqlsafe);
$college_array = array();
while ($college = mysqli_fetch_row($college_list)){
    $college_array[$college[0]] = $college[1];
}
$term_type_array = array(1 => 'Semester', 2 => 'Quarter', 3 => 'Trimester');
$season_array = array(1 => 'Fall', 2 => 'Winter', 3 => 'Spring', 4 => 'Summer');
$get_major_list_sqlsafe = "SELECT DISTINCT Major FROM LC_Terms";
$major_list = mysqli_query($cnnTRP, $get_major_list_sqlsafe);
$major_array = array();
while ($major = mysqli_fetch_row($major_list)){
    $major_array[] = $major[0];
}
$get_minor_list_sqlsafe = "SELECT DISTINCT Minor FROM LC_Terms";
$minor_list = mysqli_query($cnnTRP, $get_minor_list_sqlsafe);
$minor_array = array();
while ($minor = mysqli_fetch_row($minor_list)){
    $minor_array[] = $minor[0];
}
$get_selectivity_list_sqlsafe = "SELECT DISTINCT Selectivity FROM Colleges";
$selectivity_list = mysqli_query($cnnTRP, $get_selectivity_list_sqlsafe);
$selectivity_array = array();
while ($selectivity = mysqli_fetch_row($selectivity_list)){
    $selectivity_array[] = $selectivity[0];
}
$match_array = array(1 => 'Above Match', 2 => 'Match', 3 => 'Below Match');
$yn_array = array(1 => 'Yes', 2 => 'No');
$get_cohort_list_sqlsafe = "SELECT DISTINCT Cohort FROM LC_Basics";
$cohort_list = mysqli_query($cnnTRP, $get_cohort_list_sqlsafe);
$cohort_array = array( 'ChiSem' => 'Chicago Semester', 'CM' => 'Casa Norte', 'ACM' => 'Associated Colleges of the Midwest', 'NONE' => 'Does not have one', 'Blank' => 'Missing/Not reported', 'ARCH' => 'ARCHEWORKS');
while ($cohort = mysqli_fetch_row($cohort_list)){
    $cohort_array[] = $cohort[0];
}
$status_array = array('S' => 'Signed', 'S*' => 'Scheduled to Sign', 'MS' => 'May Sign', 'OUT' => 'Moved Out', 'HOLD' => 'Pending App', 'DENIED' => 'Not Admitted', 'N' => 'Not Interested');
$get_participant_list_sqlsafe = "SELECT Participant_ID, First_Name, Last_Name FROM Participants INNER JOIN Participants_Programs WHERE Program_ID = 6";
$participant_list = mysqli_query($cnnTRP, $get_participant_list_sqlsafe);
$participant_array = array();
while ($participant = mysqli_fetch_row($participant_list)){
    $participant_array[$participant[0]] = $participant[1] . " " . $participant[2];
}
$grade_array = array('Freshman', 'Sophomore', 'Junior', 'Senior');
$get_education_levels_sqlsafe = "SELECT * FROM Educational_Levels";
$education_levels = mysqli_query($cnnTRP, $get_education_levels_sqlsafe);
$education_levels_array = array();
while ($education = mysqli_fetch_row($education_levels)) {
    $education_levels_array[$education[0]] = $education[1];
}




function la_casa_edit_data_gen_selector($array_of_options, $existing_value, $id_string, $class_string){
    $result = "<select id = " . $id_string;
    $result .= " style = 'width:100px' class = " . $class_string . ">";
    $result .= "<option value = 0>----</option>"; 
    foreach ($array_of_options as $val => $display){
        $result .= "<option value = " . $val . " ";
        $result .= ($existing_value == $val ? 'selected="selected"' : null) . ">";
        $result .= $display . " </option>"; 
    }
    $result .= "</select>";
    
    return $result;
}

function la_casa_edit_data_gen_input($existing_value, $id_string, $class_string){
    $result = "<input type=text id=" . $id_string;
    $result .= " class='" . $class_string . "'";
    $result .= " size=5px ";
    $result .= " value=" . $existing_value;
    $result .= ">";
    return $result;
}


?>