<?php
/*
 *   TTM is a web application to manage data collected by community organizations.
 *   Copyright (C) 2014, 2015  Local Initiatives Support Corporation (lisc.org)
 *
 *   This program is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU Affero General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU Affero General Public License for more details.
 *
 *   You should have received a copy of the GNU Affero General Public License
 *   along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
?>
<?php
include_once($_SERVER['DOCUMENT_ROOT'] . "/include/dbconnopen.php");
include_once($_SERVER['DOCUMENT_ROOT'] . "/core/include/setup_user.php");

user_enforce_has_access($TRP_id);

?>
<?
	include "../../header.php";
	include "../header.php";
	include "../include/dbconnopen.php";
        include "../include/datepicker_simple.php";
	$get_parent_info_sqlsafe = "SELECT * FROM Participants WHERE Participant_ID='" . mysqli_real_escape_string($cnnTRP, $_GET['origin']) . "'";
	$parent_info = mysqli_query($cnnTRP, $get_parent_info_sqlsafe);
	$parent = mysqli_fetch_array($parent_info);
        
        /* survey for parents of students in the New Horizons/Gads Hill tutoring program:
         * 
         * unfortunately, it isn't clear whether the participant linked here is meant to be the parent
         * or child.  I have it labeled as parent for now, but I don't know if these parents
         * are going to be entered in the DB.
         * Meanwhile, the originating participant id is saved as the child's id in the database.  Obviously
         * this needs to be cleared up, probably on their end. */
?>

<script type="text/javascript">
	$(document).ready(function(){
		$('#participants_selector').addClass('selected');
		});
</script>

<h3>Gads Hill Survey - <?echo $parent['First_Name'] . " " . $parent['Last_Name'];?></h3><hr/><br/>
<a href="profile.php?id=<?echo $_GET['origin'];?>">Return to participant profile</a>
<div id="gads_hill_parent_survey">
<table class="pm_survey">
    

    <tr><td class="pm_survey question">Grade</td>
        <td class="pm_survey response"><input type="text" id="new_grade"></td></tr>
    <tr><td class="pm_survey question">Date</td>
        <td class="pm_survey response"><input type="text" id="new_survey_date" class="hasDatepickers"></td></tr>
    
    <tr><td class="pm_survey question"><strong>Since August, how often have you done the following activities with your child? </strong></td>
        <td class="pm_survey response"></td></tr>
    <tr><td class="pm_survey question">1. Talked to my child about his/her school work. </td>
        <td class="pm_survey response"><select id="first_1">
                <option value="">-----</option>
                <option value="1">Not at all</option>
                <option value="2">Once or twice</option>
                <option value="3">About once a week</option>
                <option value="4">2 to 3 days a week</option>
                <option value="5">4 or more days a week</option>
            </select></td></tr>
    <tr><td class="pm_survey question">2. Helped my child with his/her homework. </td>
        <td class="pm_survey response"><select id="first_2">
                <option value="">-----</option>
                <option value="1">Not at all</option>
                <option value="2">Once or twice</option>
                <option value="3">About once a week</option>
                <option value="4">2 to 3 days a week</option>
                <option value="5">4 or more days a week</option>
            </select></td></tr>
    <tr><td class="pm_survey question">3.	Helped my child find a tutor or other support for his /her school work. </td>
        <td class="pm_survey response"><select id="first_3">
                <option value="">-----</option>
                <option value="1">Not at all</option>
                <option value="2">Once or twice</option>
                <option value="3">About once a week</option>
                <option value="4">2 to 3 days a week</option>
                <option value="5">4 or more days a week</option>
            </select></td></tr>
    <tr><td class="pm_survey question">4.	Talked to my child about the importance of graduating from high school.</td>
        <td class="pm_survey response"><select id="first_4">
                <option value="">-----</option>
                <option value="1">Not at all</option>
                <option value="2">Once or twice</option>
                <option value="3">About once a week</option>
                <option value="4">2 to 3 days a week</option>
                <option value="5">4 or more days a week</option>
            </select></td></tr>
    <tr><td class="pm_survey question">5.	Talked with my child about a book he/she is reading.</td>
        <td class="pm_survey response"><select id="first_5">
                <option value="">-----</option>
                <option value="1">Not at all</option>
                <option value="2">Once or twice</option>
                <option value="3">About once a week</option>
                <option value="4">2 to 3 days a week</option>
                <option value="5">4 or more days a week</option>
            </select></td></tr>
    <tr><td class="pm_survey question">6.	Encouraged my child to go to the library to check out books. </td>
        <td class="pm_survey response"><select id="first_6">
                <option value="">-----</option>
                <option value="1">Not at all</option>
                <option value="2">Once or twice</option>
                <option value="3">About once a week</option>
                <option value="4">2 to 3 days a week</option>
                <option value="5">4 or more days a week</option>
            </select></td></tr>
    <tr><td class="pm_survey question">7.	Gone with my child to a museum.</td>
        <td class="pm_survey response"><select id="first_7">
                <option value="">-----</option>
                <option value="1">Not at all</option>
                <option value="2">Once or twice</option>
                <option value="3">About once a week</option>
                <option value="4">2 to 3 days a week</option>
                <option value="5">4 or more days a week</option>
            </select></td></tr>
    <tr><td class="pm_survey question">8.	Gone with my child to a community event (like a farmer's market or community celebration). </td>
        <td class="pm_survey response"><select id="first_8">
                <option value="">-----</option>
                <option value="1">Not at all</option>
                <option value="2">Once or twice</option>
                <option value="3">About once a week</option>
                <option value="4">2 to 3 days a week</option>
                <option value="5">4 or more days a week</option>
            </select></td></tr>
    <tr><td class="pm_survey question">9.	Met with my child's teacher or teachers to talk about his/her progress at school. </td>
        <td class="pm_survey response"><select id="first_9">
                <option value="">-----</option>
                <option value="1">Not at all</option>
                <option value="2">Once or twice</option>
                <option value="3">About once a week</option>
                <option value="4">2 to 3 days a week</option>
                <option value="5">4 or more days a week</option>
            </select></td></tr>
   
    <tr><td class="pm_survey question"><strong>How much do you agree or disagree with the following statements? </strong></td>
        <td class="pm_survey response"></td></tr>
    
    <tr><td class="pm_survey question">1. I think it is important to talk to my child about his/her school work.</td>
        <td class="pm_survey response"><select id="second_1">
                <option value="">-----</option>
                <option value="1">Strongly disagree</option>
                <option value="2">Disagree</option>
                <option value="3">Neither disagree nor agree</option>
                <option value="4">Agree</option>
                <option value="5">Strongly agree</option>
            </select></td></tr>
    <tr><td class="pm_survey question">2. I feel confident in my ability to help my child with his/her homework.</td>
        <td class="pm_survey response"><select id="second_2">
                <option value="">-----</option>
                <option value="1">Strongly disagree</option>
                <option value="2">Disagree</option>
                <option value="3">Neither disagree nor agree</option>
                <option value="4">Agree</option>
                <option value="5">Strongly agree</option>
            </select></td></tr>
    <tr><td class="pm_survey question">3. I think it is important to talk to my child about his/her plans for the future. </td>
        <td class="pm_survey response"><select id="second_3">
                <option value="">-----</option>
                <option value="1">Strongly disagree</option>
                <option value="2">Disagree</option>
                <option value="3">Neither disagree nor agree</option>
                <option value="4">Agree</option>
                <option value="5">Strongly agree</option>
            </select></td></tr>
    <tr><td class="pm_survey question">4. I feel confident in my ability to help my child prepare for his/her future.</td>
        <td class="pm_survey response"><select id="second_4">
                <option value="">-----</option>
                <option value="1">Strongly disagree</option>
                <option value="2">Disagree</option>
                <option value="3">Neither disagree nor agree</option>
                <option value="4">Agree</option>
                <option value="5">Strongly agree</option>
            </select></td></tr>
    
    
    
    <tr><td class="pm_survey question">Comments:</td>
        <td class="pm_survey response"></td></tr>
    
    <tr><th colspan="2"><input type="button" value="Save Survey" onclick="
  
        $.post(
               '../ajax/save_new_survey.php',
               {
                   child: '<?echo $_GET['origin'];?>',
                    date: document.getElementById('new_survey_date').value,
                   grade:  document.getElementById('new_grade').value,
                   first_1: document.getElementById('first_1').options[document.getElementById('first_1').selectedIndex].value,
                   first_2: document.getElementById('first_2').options[document.getElementById('first_2').selectedIndex].value,
                   first_3: document.getElementById('first_3').options[document.getElementById('first_3').selectedIndex].value,
                   first_4: document.getElementById('first_4').options[document.getElementById('first_4').selectedIndex].value,
                   first_5: document.getElementById('first_5').options[document.getElementById('first_5').selectedIndex].value,
                   first_6: document.getElementById('first_6').options[document.getElementById('first_6').selectedIndex].value,
                   first_7: document.getElementById('first_7').options[document.getElementById('first_7').selectedIndex].value,
                   first_8: document.getElementById('first_8').options[document.getElementById('first_8').selectedIndex].value,
                   first_9: document.getElementById('first_9').options[document.getElementById('first_9').selectedIndex].value,
                   
                   second_1:  document.getElementById('second_1').options[document.getElementById('second_1').selectedIndex].value,
                   second_2:  document.getElementById('second_2').options[document.getElementById('second_2').selectedIndex].value,
                   second_3:  document.getElementById('second_3').options[document.getElementById('second_3').selectedIndex].value,
                   second_4:  document.getElementById('second_4').options[document.getElementById('second_4').selectedIndex].value
               },
               function (response){
                   document.getElementById('show_survey_response').innerHTML = '<span style=color:#990000;font-weight:bold;font-size:.9em; padding-left: 25px;>Thank you for entering this survey!</span>';
               }
               ).fail(failAlert);"></th></tr>
</table>
<div id="show_survey_response"></div>
</div>
<br/><br/>

<?
	include "../include/dbconnclose.php";
	include "../../footer.php";
?>