<?php
/*teacher surveys are different pre and post.  This is post only.
 * 
 *  add a new survey: */
if ($_POST['new_survey']==1){
$save_survey_answers = "INSERT INTO PM_Teacher_Survey_Post (
    School_Name,
    Teacher_Name,
    Grade,
    Classroom_Language,
    Attendance,
    Task_1,
    Task_2,
    Task_3,
    Task_4,
    Task_5,
    Task_6,
    Task_7,
    Task_8,
    Task_9,
    Task_10,
    Task_Other_Text,
	Majority_Task,
	Classroom_Benefits_8,
	Classroom_Benefits_9,
	Classroom_Benefits_10,
	Classroom_Benefits_11,
	Classroom_Benefits_12,
	School_Benefits_13,
	School_Benefits_14,
	School_Benefits_15,
	Recommendations_16,
	Recommendations_17,
	Recommendations_18,
    Teacher_Involvement_A,
    Teacher_Involvement_B,
    Teacher_Involvement_C,
    Teacher_Involvement_D,
    Teacher_Involvement_E,
    Teacher_Involvement_F,
    Teacher_Involvement_G,
    Teacher_Involvement_H,
    Teacher_Involvement_I,
    Teacher_Involvement_J,
    Teacher_Parent_Network_K,
    Teacher_Parent_Network_L,
	Explain_8,
	Explain_9,
	Explain_10,
	Explain_11,
	Explain_12,
	Explain_13,
	Explain_14,
	Explain_15,
	Parent_Mentor_ID)
    VALUES (    
                   '" . $_POST['school'] . "',
                   '" . $_POST['teacher'] . "',
                   '" . $_POST['grade'] . "',
                   '" . $_POST['class_lang'] . "',
                   '" . $_POST['pm_attendance'] . "',         
                   '" . $_POST['grade_checkbox'] . "',
                   '" . $_POST['tutor_checkbox'] . "',
                   '" . $_POST['half_checkbox'] . "',
                   '" . $_POST['hallway_checkbox'] . "',
                   '" . $_POST['discipline_checkbox'] . "',
                   '" . $_POST['homework_checkbox'] . "',
                   '" . $_POST['groups_checkbox'] . "',
                   '" . $_POST['whole_checkbox'] . "',
                   '" . $_POST['organize_checkbox'] . "',
                   '" . $_POST['other_checkbox'] . "',
                   '" . $_POST['other_task_text'] . "',                   
                   '" . $_POST['pm_time_spent'] . "',
				   '" . $_POST['8'] . "',
				   '" . $_POST['9'] . "',
				   '" . $_POST['10'] . "',
				   '" . $_POST['11'] . "',
				   '" . $_POST['12'] . "',
				   '" . $_POST['13'] . "',
				   '" . $_POST['14'] . "',
				   '" . $_POST['15'] . "',
				   '" . $_POST['pm_training'] . "',
				   '" . $_POST['teacher_training'] . "',
				   '" . $_POST['suggestions'] . "',
				   '" . $_POST['A'] . "',
                   '" . $_POST['B'] . "',
                   '" . $_POST['C'] . "',
                   '" . $_POST['D'] . "',
                   '" . $_POST['E'] . "',
                   '" . $_POST['F'] . "',
                   '" . $_POST['G'] . "',
                   '" . $_POST['H'] . "',
                   '" . $_POST['I'] . "',
                   '" . $_POST['J'] . "',
                   '" . $_POST['K'] . "',
                   '" . $_POST['L'] . "',
				   '" . $_POST['exp_8'] . "',
				   '" . $_POST['exp_9'] . "',
				   '" . $_POST['exp_10'] . "',
				   '" . $_POST['exp_11'] . "',
				   '" . $_POST['exp_12'] . "',
				   '" . $_POST['exp_13'] . "',
				   '" . $_POST['exp_14'] . "',
				   '" . $_POST['exp_15'] . "',
				   '" . $_COOKIE['participant'] . "')";
echo $save_survey_answers;
include "../include/dbconnopen.php";
mysqli_query($cnnLSNA, $save_survey_answers);
include "../include/dbconnclose.php";
} 

/* edit survey responses: */
else {
	$edit_survey = "UPDATE PM_Teacher_Survey_Post SET 
	School_Name='" . $_POST['school'] . "',
    Teacher_Name='" . $_POST['teacher'] . "',
    Grade='" . $_POST['grade'] . "',
    Classroom_Language='" . $_POST['class_lang'] . "',
	Attendance='" . $_POST['pm_attendance'] . "',
    Task_1='" . $_POST['grade_checkbox'] . "',
    Task_2='" . $_POST['tutor_checkbox'] . "',
    Task_3='" . $_POST['half_checkbox'] . "',
    Task_4='" . $_POST['hallway_checkbox'] . "',
    Task_5='" . $_POST['discipline_checkbox'] . "',
    Task_6='" . $_POST['homework_checkbox'] . "',
    Task_7='" . $_POST['groups_checkbox'] . "',
    Task_8='" . $_POST['whole_checkbox'] . "',
    Task_9='" . $_POST['organize_checkbox'] . "',
    Task_10='" . $_POST['other_checkbox'] . "',
    Task_Other_Text='" . $_POST['other_task_text'] . "',
    Majority_Task='" . $_POST['pm_time_spent'] . "',
	Classroom_Benefits_8='" . $_POST['8'] . "',
	Classroom_Benefits_9='" . $_POST['9'] . "',
	Classroom_Benefits_10='" . $_POST['10'] . "',
	Classroom_Benefits_11='" . $_POST['11'] . "',
	Classroom_Benefits_12='" . $_POST['12'] . "',
	School_Benefits_13='" . $_POST['13'] . "',
	School_Benefits_14='" . $_POST['14'] . "',
	School_Benefits_15='" . $_POST['15'] . "',
	Recommendations_16='" . $_POST['pm_training'] . "',
	Recommendations_17='" . $_POST['teacher_training'] . "',
	Recommendations_18='" . $_POST['suggestions'] . "',
	Teacher_Involvement_A='" . $_POST['A'] . "',
    Teacher_Involvement_B='" . $_POST['B'] . "',
    Teacher_Involvement_C='" . $_POST['C'] . "',
    Teacher_Involvement_D='" . $_POST['D'] . "',
    Teacher_Involvement_E='" . $_POST['E'] . "',
    Teacher_Involvement_F='" . $_POST['F'] . "',
    Teacher_Involvement_G='" . $_POST['G'] . "',
    Teacher_Involvement_H='" . $_POST['H'] . "',
    Teacher_Involvement_I='" . $_POST['I'] . "',
    Teacher_Involvement_J='" . $_POST['J'] . "',
    Teacher_Parent_Network_K='" . $_POST['K'] . "',
    Teacher_Parent_Network_L='" . $_POST['L'] . "',
	Explain_8='" . $_POST['8_exp'] . "',
	Explain_9='" . $_POST['9_exp'] . "',
	Explain_10='" . $_POST['10_exp'] . "',
	Explain_11='" . $_POST['11_exp'] . "',
	Explain_12='" . $_POST['12_exp'] . "',
	Explain_13='" . $_POST['13_exp'] . "',
	Explain_14='" . $_POST['14_exp'] . "',
	Explain_15='" . $_POST['15_exp'] . "',
	Parent_Mentor_ID='" . $_COOKIE['participant'] . "'
	WHERE PM_Teacher_Survey_ID='" . $_POST['survey_id'] . "'";
	
	include "../include/dbconnopen.php";
	echo $edit_survey;
	mysqli_query($cnnLSNA, $edit_survey);
	include "../include/dbconnclose.php";
}
?>