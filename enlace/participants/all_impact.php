<?php
/*
 *   TTM is a web application to manage data collected by community organizations.
 *   Copyright (C) 2014, 2015  Local Initiatives Support Corporation (lisc.org)
 *   Copyright (C) 2018 Open Tech Strategies, LLC
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
include $_SERVER['DOCUMENT_ROOT'] . "/include/dbconnopen.php";
include $_SERVER['DOCUMENT_ROOT'] . "/core/include/setup_user.php";
include "../include/survey_entry_point.php";

include "../../header.php";

$anonymous_entry = false;
include "../include/dbconnopen.php";
$person_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_GET['person']);
include "../include/dbconnopen.php";

if (isset($_GET['code'])) {
    include "../include/dbconnopen.php";
    $code_sqlsafe = mysqli_real_escape_string($cnnEnlace, $_GET['code']);
    include "../include/dbconnclose.php";
    $lookup_result = lookup_and_validate_survey_entry_code($code_sqlsafe, 2);

    $session_id_safe = $lookup_result['Session_ID'];
    $person_sqlsafe = $lookup_result['Participant_ID'];
    $anonymous_entry = true;
}

if(!$anonymous_entry) {
    include "../header.php";
    user_enforce_has_access($Enlace_id);
}

$editable = true;
if(!$anonymous_entry) {
    /* so allow them in if it's a new survey OR if they have access to all
     * programs ('a') or if they have access to a program that is linked
     * to this...person? or this survey?: */

    $access_array = $USER->program_access($Enlace_id);

    include "../include/dbconnopen.php";
    $get_program_list = "SELECT Session_Names.Program_ID FROM Participants_Programs INNER JOIN Session_Names ON Participants_Programs.Program_ID = Session_ID WHERE Participant_ID = '" . $person_sqlsafe . "'";
    $program_connected = mysqli_query($cnnEnlace, $get_program_list);
    $program_array = array();
    while ($program_id = mysqli_fetch_row($program_connected)){
        $program_array[] = $program_id[0];
    }
    $USER->enforce_access_program_array($Enlace_id, $program_array);


    /*
     * This file is either a new impact survey, an editable impact survey, or a view for the impact survey.
     * The responses to questions are shown if they have been answered, and are always editable.
     */

    //get participant info
    include_once "../classes/participant.php";

    include "../include/dbconnopen.php";
    $id_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_GET['assessment']);
    $person_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_GET['person']);
    /* if the assessment is not new, then Get['assessment'] exists, and this query returns the entered responses. */
    $get_assessment_info = "SELECT * FROM Assessments
                            LEFT JOIN Participants_Caring_Adults ON Caring_Id=Caring_Adults_ID
                            LEFT JOIN Participants_Future_Expectations ON Future_Id=Future_Expectations_ID
                            LEFT JOIN Participants_Interpersonal_Violence ON Violence_Id=Interpersonal_Violence_ID
                            LEFT JOIN Session_Names ON Assessments.Session_ID = Session_Names.Session_ID
                            LEFT JOIN Programs ON Session_Names.Program_ID=Programs.Program_ID
                            WHERE Assessment_ID='" . $id_sqlsafe . "'";
    $get_assessment = mysqli_query($cnnEnlace, $get_assessment_info);
    $assessment_info = mysqli_fetch_array($get_assessment);
    $caring_id = $assessment_info['Caring_ID'];
    $baseline_id = $assessment_info['Baseline_ID'];
    $future_id = $assessment_info['Future_ID'];
    $violence_id = $assessment_info['Violence_ID'];
    $person = new Participant();
    $person->load_with_participant_id($assessment_info[1]);

    $editable = $USER->has_site_access($Enlace_id, $AdminAccess) || $assessment_info['Draft'] != '0';
}

/* if it IS a new assessment, then we get the person from the get[person]: */
if (!isset($_GET['assessment'])) {
    $person = new Participant();
    $person->load_with_participant_id($person_sqlsafe);
}

if (!$anonymous_entry) {
    /* create a dropdown of the programs/sessions that the person is involved in. */
    $get_programs = "SELECT * FROM Participants_Programs
                INNER JOIN Session_Names ON Participants_Programs.Program_ID=Session_Names.Session_ID
                INNER JOIN Programs ON Session_Names.Program_ID=Programs.Program_ID
                WHERE Participants_Programs.Participant_ID='" . $person->participant_id . "'";
    include "../include/dbconnopen.php";
    $programs = mysqli_query($cnnEnlace, $get_programs);
}
?>
<h4>Program Impact Survey -
    <?php
        if($anonymous_entry) {
            echo "Participant #$person_sqlsafe";
        } else {
            echo $person->first_name . " " . $person->last_name;
        }
   ?>
</h4>

<div style="text-align:center;"><span class="helptext">Program: </span>
    <?php
        if ($anonymous_entry) {
            $get_program = "SELECT Name, Session_Name FROM Session_Names " .
                "LEFT JOIN Programs ON Programs.Program_ID = Session_Names.Program_ID " .
                "WHERE Session_ID = '$session_id_safe'";
            include "../include/dbconnopen.php";
            $program_info = mysqli_fetch_array(mysqli_query($cnnEnlace, $get_program));

            echo $program_info["Name"] . " -- " . $program_info["Session_Name"];
        } else if (isset($_GET['assessment'])) {
            $session_id_safe = $assessment_info["Session_ID"];
            echo $assessment_info["Name"] . " -- " . $assessment_info["Session_Name"];
        } else {
    ?>
        <select id="program">
            <option value="">-------</option>
            <?php
            while ($program = mysqli_fetch_array($programs)) {
                ?>
                <option value="<?php echo $program['Session_ID']; ?>" <?php echo($assessment_info['Program_ID'] == $program['Session_ID'] ? 'selected="selected"' : null); ?>><?php echo $program['Name'] . ' -- ' . $program['Session_Name']; ?></option>
                <?php
            }
            include "../include/dbconnclose.php";
            ?>
        </select>
    <?php } ?>
    <br />
    <br />
</div>

<!--
Show tables of survey questions and response options.  The chosen response is selected if one is saved.
-->

<h4>Caring Adults Survey</h4><hr/><br/>

<table class="inner_table" style="border: 2px solid #696969;font-size:.9em;width:70%;margin-left:auto;margin-right:auto;" id="caring_adults_table">
    <tr><td><strong>How many adults in your life:</strong></td><td></td></tr>
    <tr><td>Pay attention to what's going on in your life?</td><td><select id="pay_attention"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Pay_Attention'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>
                <option value="1" <?php echo($assessment_info['Pay_Attention'] == 1 ? 'selected=="selected"' : null); ?>>None</option>
                <option value="2" <?php echo($assessment_info['Pay_Attention'] == 2 ? 'selected=="selected"' : null); ?>>One</option>
                <option value="3" <?php echo($assessment_info['Pay_Attention'] == 3 ? 'selected=="selected"' : null); ?>>2-3</option>
                <option value="4" <?php echo($assessment_info['Pay_Attention'] == 4 ? 'selected=="selected"' : null); ?>>More than 3</option>
            </select></td></tr>
    <tr><td>Would say something to you if something in your life wasn't going right?</td>
        <td><select id="check_in"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Check_In'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>
                <option value="1" <?php echo($assessment_info['Check_In'] == 1 ? 'selected=="selected"' : null); ?>>None</option>
                <option value="2" <?php echo($assessment_info['Check_In'] == 2 ? 'selected=="selected"' : null); ?>>One</option>
                <option value="3" <?php echo($assessment_info['Check_In'] == 3 ? 'selected=="selected"' : null); ?>>2-3</option>
                <option value="4" <?php echo($assessment_info['Check_In'] == 4 ? 'selected=="selected"' : null); ?>>More than 3</option>
            </select></td></tr>
    <tr><td>Say something nice to you when you do something good?</td><td><select id="praise"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Compliment'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>
                <option value="1" <?php echo($assessment_info['Compliment'] == 1 ? 'selected=="selected"' : null); ?>>None</option>
                <option value="2" <?php echo($assessment_info['Compliment'] == 2 ? 'selected=="selected"' : null); ?>>One</option>
                <option value="3" <?php echo($assessment_info['Compliment'] == 3 ? 'selected=="selected"' : null); ?>>2-3</option>
                <option value="4" <?php echo($assessment_info['Compliment'] == 4 ? 'selected=="selected"' : null); ?>>More than 3</option>
            </select></td></tr>
    <tr><td>Could you talk to if you are upset or mad about something?</td><td><select id="upset"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Upset_Discussion'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>
                <option value="1" <?php echo($assessment_info['Upset_Discussion'] == 1 ? 'selected=="selected"' : null); ?>>None</option>
                <option value="2" <?php echo($assessment_info['Upset_Discussion'] == 2 ? 'selected=="selected"' : null); ?>>One</option>
                <option value="3" <?php echo($assessment_info['Upset_Discussion'] == 3 ? 'selected=="selected"' : null); ?>>2-3</option>
                <option value="4" <?php echo($assessment_info['Upset_Discussion'] == 4 ? 'selected=="selected"' : null); ?>>More than 3</option>
            </select></td></tr>
    <tr><td>Could you go to for help in a crisis?</td><td><select id="crisis"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Crisis_Help'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>
                <option value="1" <?php echo($assessment_info['Crisis_Help'] == 1 ? 'selected=="selected"' : null); ?>>None</option>
                <option value="2" <?php echo($assessment_info['Crisis_Help'] == 2 ? 'selected=="selected"' : null); ?>>One</option>
                <option value="3" <?php echo($assessment_info['Crisis_Help'] == 3 ? 'selected=="selected"' : null); ?>>2-3</option>
                <option value="4" <?php echo($assessment_info['Crisis_Help'] == 4 ? 'selected=="selected"' : null); ?>>More than 3</option>
            </select></td></tr>
    <tr><td>Could you go to if you need advice about personal problems?</td><td><select id="advice"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Personal_Advice'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>
                <option value="1" <?php echo($assessment_info['Personal_Advice'] == 1 ? 'selected=="selected"' : null); ?>>None</option>
                <option value="2" <?php echo($assessment_info['Personal_Advice'] == 2 ? 'selected=="selected"' : null); ?>>One</option>
                <option value="3" <?php echo($assessment_info['Personal_Advice'] == 3 ? 'selected=="selected"' : null); ?>>2-3</option>
                <option value="4" <?php echo($assessment_info['Personal_Advice'] == 4 ? 'selected=="selected"' : null); ?>>More than 3</option>
            </select></td></tr>
    <tr><Td>Know a lot about you?</td><td><select id="know_you"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Know_You'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>
                <option value="1" <?php echo($assessment_info['Know_You'] == 1 ? 'selected=="selected"' : null); ?>>None</option>
                <option value="2" <?php echo($assessment_info['Know_You'] == 2 ? 'selected=="selected"' : null); ?>>One</option>
                <option value="3" <?php echo($assessment_info['Know_You'] == 3 ? 'selected=="selected"' : null); ?>>2-3</option>
                <option value="4" <?php echo($assessment_info['Know_You'] == 4 ? 'selected=="selected"' : null); ?>>More than 3</option>
            </select></td></tr>
    <tr><td>Know what is important to you?</td><td><select id="important"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['KnowImportance'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>
                <option value="1" <?php echo($assessment_info['KnowImportance'] == 1 ? 'selected=="selected"' : null); ?>>None</option>
                <option value="2" <?php echo($assessment_info['KnowImportance'] == 2 ? 'selected=="selected"' : null); ?>>One</option>
                <option value="3" <?php echo($assessment_info['KnowImportance'] == 3 ? 'selected=="selected"' : null); ?>>2-3</option>
                <option value="4" <?php echo($assessment_info['KnowImportance'] == 4 ? 'selected=="selected"' : null); ?>>More than 3</option>
            </select></td></tr>
    <tr><td colspan="2"></td></tr>
</table>
<br/><br/>


<hr><hr>

<h4>Future Expectations Questionnaire </h4><hr/><br/>


<table class="inner_table" style="border: 2px solid #696969;font-size:.9em;width:70%;margin-left:auto;margin-right:auto;" id="future_table">
    <tr><td><b>When I think about the future...</b></td><td></td></tr>
    <tr><td>I am sure I can handle the problems that might come up.</td><td><select id="solve_probs"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Solve_Problems'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>\
                <option value="1" <?php echo($assessment_info['Solve_Problems'] == 1 ? 'selected=="selected"' : null); ?>>Not likely at all</option>
                <option value="2" <?php echo($assessment_info['Solve_Problems'] == 2 ? 'selected=="selected"' : null); ?>>May be likely but probably not</option>
                <option value="3" <?php echo($assessment_info['Solve_Problems'] == 3 ? 'selected=="selected"' : null); ?>>Could go either way</option>
                <option value="4" <?php echo($assessment_info['Solve_Problems'] == 4 ? 'selected=="selected"' : null); ?>>Very likely, not absolute</option>
                <option value="5" <?php echo($assessment_info['Solve_Problems'] == 5 ? 'selected=="selected"' : null); ?>>Definitely will</option>
            </select></td></tr>
    <tr><td>I will be able to stay safe and out of danger.</td><td><select id="stay_safe"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Stay_Safe'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>\
                <option value="1" <?php echo($assessment_info['Stay_Safe'] == 1 ? 'selected=="selected"' : null); ?>>Not likely at all</option>
                <option value="2" <?php echo($assessment_info['Stay_Safe'] == 2 ? 'selected=="selected"' : null); ?>>May be likely but probably not</option>
                <option value="3" <?php echo($assessment_info['Stay_Safe'] == 3 ? 'selected=="selected"' : null); ?>>Could go either way</option>
                <option value="4" <?php echo($assessment_info['Stay_Safe'] == 4 ? 'selected=="selected"' : null); ?>>Very likely, not absolute</option>
                <option value="5" <?php echo($assessment_info['Stay_Safe'] == 5 ? 'selected=="selected"' : null); ?>>Definitely will</option>
            </select></td></tr>
    <tr><td>I will be alive and well.</td><td><select id="alive_well"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Alive_Well'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>\
                <option value="1" <?php echo($assessment_info['Alive_Well'] == 1 ? 'selected=="selected"' : null); ?>>Not likely at all</option>
                <option value="2" <?php echo($assessment_info['Alive_Well'] == 2 ? 'selected=="selected"' : null); ?>>May be likely but probably not</option>
                <option value="3" <?php echo($assessment_info['Alive_Well'] == 3 ? 'selected=="selected"' : null); ?>>Could go either way</option>
                <option value="4" <?php echo($assessment_info['Alive_Well'] == 4 ? 'selected=="selected"' : null); ?>>Very likely, not absolute</option>
                <option value="5" <?php echo($assessment_info['Alive_Well'] == 5 ? 'selected=="selected"' : null); ?>>Definitely will</option>
            </select></td></tr>
    <tr><td>I am sure that I can handle work or school.</td><td><select id="manage_work"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Manage_Work'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>\
                <option value="1" <?php echo($assessment_info['Manage_Work'] == 1 ? 'selected=="selected"' : null); ?>>Not likely at all</option>
                <option value="2" <?php echo($assessment_info['Manage_Work'] == 2 ? 'selected=="selected"' : null); ?>>May be likely but probably not</option>
                <option value="3" <?php echo($assessment_info['Manage_Work'] == 3 ? 'selected=="selected"' : null); ?>>Could go either way</option>
                <option value="4" <?php echo($assessment_info['Manage_Work'] == 4 ? 'selected=="selected"' : null); ?>>Very likely, not absolute</option>
                <option value="5" <?php echo($assessment_info['Manage_Work'] == 5 ? 'selected=="selected"' : null); ?>>Definitely will</option>
            </select></td></tr>
    <tr><td>I think I will have friends and people that care about me.</td><td><select id="have_friends"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Friends'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>\
                <option value="1" <?php echo($assessment_info['Friends'] == 1 ? 'selected=="selected"' : null); ?>>Not likely at all</option>
                <option value="2" <?php echo($assessment_info['Friends'] == 2 ? 'selected=="selected"' : null); ?>>May be likely but probably not</option>
                <option value="3" <?php echo($assessment_info['Friends'] == 3 ? 'selected=="selected"' : null); ?>>Could go either way</option>
                <option value="4" <?php echo($assessment_info['Friends'] == 4 ? 'selected=="selected"' : null); ?>>Very likely, not absolute</option>
                <option value="5" <?php echo($assessment_info['Friends'] == 5 ? 'selected=="selected"' : null); ?>>Definitely will</option>
            </select></td></tr>
    <tr><td>I will have a happy life.</td><td><select id="happy_life"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Happy_Life'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>\
                <option value="1" <?php echo($assessment_info['Happy_Life'] == 1 ? 'selected=="selected"' : null); ?>>Not likely at all</option>
                <option value="2" <?php echo($assessment_info['Happy_Life'] == 2 ? 'selected=="selected"' : null); ?>>May be likely but probably not</option>
                <option value="3" <?php echo($assessment_info['Happy_Life'] == 3 ? 'selected=="selected"' : null); ?>>Could go either way</option>
                <option value="4" <?php echo($assessment_info['Happy_Life'] == 4 ? 'selected=="selected"' : null); ?>>Very likely, not absolute</option>
                <option value="5" <?php echo($assessment_info['Happy_Life'] == 5 ? 'selected=="selected"' : null); ?>>Definitely will</option>
            </select></td></tr>
    <tr><td>My life will be interesting.</td><td><select id="interesting_life"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Interesting_Life'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>\
                <option value="1" <?php echo($assessment_info['Interesting_Life'] == 1 ? 'selected=="selected"' : null); ?>>Not likely at all</option>
                <option value="2" <?php echo($assessment_info['Interesting_Life'] == 2 ? 'selected=="selected"' : null); ?>>May be likely but probably not</option>
                <option value="3" <?php echo($assessment_info['Interesting_Life'] == 3 ? 'selected=="selected"' : null); ?>>Could go either way</option>
                <option value="4" <?php echo($assessment_info['Interesting_Life'] == 4 ? 'selected=="selected"' : null); ?>>Very likely, not absolute</option>
                <option value="5" <?php echo($assessment_info['Interesting_Life'] == 5 ? 'selected=="selected"' : null); ?>>Definitely will</option>
            </select></td></tr>
    <tr><td>My parents will be proud of me.</td><td><select id="proud_parents"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Proud_Parents'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>\
                <option value="1" <?php echo($assessment_info['Proud_Parents'] == 1 ? 'selected=="selected"' : null); ?>>Not likely at all</option>
                <option value="2" <?php echo($assessment_info['Proud_Parents'] == 2 ? 'selected=="selected"' : null); ?>>May be likely but probably not</option>
                <option value="3" <?php echo($assessment_info['Proud_Parents'] == 3 ? 'selected=="selected"' : null); ?>>Could go either way</option>
                <option value="4" <?php echo($assessment_info['Proud_Parents'] == 4 ? 'selected=="selected"' : null); ?>>Very likely, not absolute</option>
                <option value="5" <?php echo($assessment_info['Proud_Parents'] == 5 ? 'selected=="selected"' : null); ?>>Definitely will</option>
            </select></td></tr>
    <tr><td>Thinking about yourself and when you get older, how likely do you think it is that you will finish high school?</td>
        <td><select id="finish_hs"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Finish_HS'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>\
                <option value="1" <?php echo($assessment_info['Finish_HS'] == 1 ? 'selected=="selected"' : null); ?>>Not likely at all</option>
                <option value="2" <?php echo($assessment_info['Finish_HS'] == 2 ? 'selected=="selected"' : null); ?>>May be likely but probably not</option>
                <option value="3" <?php echo($assessment_info['Finish_HS'] == 3 ? 'selected=="selected"' : null); ?>>Could go either way</option>
                <option value="4" <?php echo($assessment_info['Finish_HS'] == 4 ? 'selected=="selected"' : null); ?>>Very likely, not absolute</option>
                <option value="5" <?php echo($assessment_info['Finish_HS'] == 5 ? 'selected=="selected"' : null); ?>>Definitely will</option>
            </select></td></tr>
    <tr><td colspan="2"></td></tr>
</table>
<div id="show_future_response"></div>
<br/><br/>

<hr><hr>

<h4>Attitude Toward Interpersonal Peer Violence</h4><hr/><br/>

<table class="inner_table" style="border: 2px solid #696969;font-size:.9em;width:70%;margin-left:auto;margin-right:auto;" id="peer_violence_table">
    <tr><td>If I walked away from a fight, I'd be a coward ("chicken").</td><td><select id="chicken"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Cowardice'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>
                <option value="4" <?php echo($assessment_info['Cowardice'] == 4 ? 'selected=="selected"' : null); ?>>Disagree a lot</option>
                <option value="3" <?php echo($assessment_info['Cowardice'] == 3 ? 'selected=="selected"' : null); ?>>Disagree a little</option>
                <option value="2" <?php echo($assessment_info['Cowardice'] == 2 ? 'selected=="selected"' : null); ?>>Agree a little</option>
                <option value="1" <?php echo($assessment_info['Cowardice'] == 1 ? 'selected=="selected"' : null); ?>>Agree a lot</option>
            </select></td></tr>
    <tr><td>Anyone who won't fight is going to be picked on even more.</td><td><select id="prevention"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Teasing_Prevention'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>
                <option value="4" <?php echo($assessment_info['Teasing_Prevention'] == 4 ? 'selected=="selected"' : null); ?>>Disagree a lot</option>
                <option value="3" <?php echo($assessment_info['Teasing_Prevention'] == 3 ? 'selected=="selected"' : null); ?>>Disagree a little</option>
                <option value="2" <?php echo($assessment_info['Teasing_Prevention'] == 2 ? 'selected=="selected"' : null); ?>>Agree a little</option>
                <option value="1" <?php echo($assessment_info['Teasing_Prevention'] == 1 ? 'selected=="selected"' : null); ?>>Agree a lot</option>
            </select></td></tr>
    <tr><td>I don't need to fight because there are other ways to deal with being mad.</td><td><select id="other_ways"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Anger_Mgmt'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>
                <option value="1" <?php echo($assessment_info['Anger_Mgmt'] == 1 ? 'selected=="selected"' : null); ?>>Disagree a lot</option>
                <option value="2" <?php echo($assessment_info['Anger_Mgmt'] == 2 ? 'selected=="selected"' : null); ?>>Disagree a little</option>
                <option value="3" <?php echo($assessment_info['Anger_Mgmt'] == 3 ? 'selected=="selected"' : null); ?>>Agree a little</option>
                <option value="4" <?php echo($assessment_info['Anger_Mgmt'] == 4 ? 'selected=="selected"' : null); ?>>Agree a lot</option>
            </select></td></tr>
    <tr><td>It's okay to hit someone who hits you first.</td><td><select id="self_defense"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Self_Defense'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>
                <option value="4" <?php echo($assessment_info['Self_Defense'] == 4 ? 'selected=="selected"' : null); ?>>Disagree a lot</option>
                <option value="3" <?php echo($assessment_info['Self_Defense'] == 3 ? 'selected=="selected"' : null); ?>>Disagree a little</option>
                <option value="2" <?php echo($assessment_info['Self_Defense'] == 2 ? 'selected=="selected"' : null); ?>>Agree a little</option>
                <option value="1" <?php echo($assessment_info['Self_Defense'] == 1 ? 'selected=="selected"' : null); ?>>Agree a lot</option>
            </select></td></tr>
    <tr><td>When actions of others make me angry, I can usually deal with it without getting into a physical fight.</td><td>
            <select id="coping_strategies"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Coping'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>
                <option value="1" <?php echo($assessment_info['Coping'] == 1 ? 'selected=="selected"' : null); ?>>Disagree a lot</option>
                <option value="2" <?php echo($assessment_info['Coping'] == 2 ? 'selected=="selected"' : null); ?>>Disagree a little</option>
                <option value="3" <?php echo($assessment_info['Coping'] == 3 ? 'selected=="selected"' : null); ?>>Agree a little</option>
                <option value="4" <?php echo($assessment_info['Coping'] == 4 ? 'selected=="selected"' : null); ?>>Agree a lot</option>
            </select></td></tr>
    <tr><Td>If a kid teases me or disses me, I usually cannot get them to stop unless I hit them.</td><td><select id="act_out"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Handle_Others'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>
                <option value="4" <?php echo($assessment_info['Handle_Others'] == 4 ? 'selected=="selected"' : null); ?>>Disagree a lot</option>
                <option value="3" <?php echo($assessment_info['Handle_Others'] == 3 ? 'selected=="selected"' : null); ?>>Disagree a little</option>
                <option value="2" <?php echo($assessment_info['Handle_Others'] == 2 ? 'selected=="selected"' : null); ?>>Agree a little</option>
                <option value="1" <?php echo($assessment_info['Handle_Others'] == 1 ? 'selected=="selected"' : null); ?>>Agree a lot</option>
            </select></td></tr>
    <tr><td>If I really want to, I can usually talk someone out of trying to fight with me.</td><td><select id="negotiation"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Negotiation'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>
                <option value="1" <?php echo($assessment_info['Negotiation'] == 1 ? 'selected=="selected"' : null); ?>>Disagree a lot</option>
                <option value="2" <?php echo($assessment_info['Negotiation'] == 2 ? 'selected=="selected"' : null); ?>>Disagree a little</option>
                <option value="3" <?php echo($assessment_info['Negotiation'] == 3 ? 'selected=="selected"' : null); ?>>Agree a little</option>
                <option value="4" <?php echo($assessment_info['Negotiation'] == 4 ? 'selected=="selected"' : null); ?>>Agree a lot</option>
            </select></td></tr>
    <tr><td>My family would be mad at me if I got in a fight with another student, no matter what the reason.</td><td>
            <select id="disapproval"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Parent_Disapproval'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>
                <option value="1" <?php echo($assessment_info['Parent_Disapproval'] == 1 ? 'selected=="selected"' : null); ?>>Disagree a lot</option>
                <option value="2" <?php echo($assessment_info['Parent_Disapproval'] == 2 ? 'selected=="selected"' : null); ?>>Disagree a little</option>
                <option value="3" <?php echo($assessment_info['Parent_Disapproval'] == 3 ? 'selected=="selected"' : null); ?>>Agree a little</option>
                <option value="4" <?php echo($assessment_info['Parent_Disapproval'] == 4 ? 'selected=="selected"' : null); ?>>Agree a lot</option>
            </select></td></tr>
    <tr><td>If a student hits me first, my family would want me to hit them back.</td><td><select id="approval"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Parent_Approval'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>
                <option value="4" <?php echo($assessment_info['Parent_Approval'] == 4 ? 'selected=="selected"' : null); ?>>Disagree a lot</option>
                <option value="3" <?php echo($assessment_info['Parent_Approval'] == 3 ? 'selected=="selected"' : null); ?>>Disagree a little</option>
                <option value="2" <?php echo($assessment_info['Parent_Approval'] == 2 ? 'selected=="selected"' : null); ?>>Agree a little</option>
                <option value="1" <?php echo($assessment_info['Parent_Approval'] == 1 ? 'selected=="selected"' : null); ?>>Agree a lot</option>
            </select></td></tr>
    <Tr><td>I usually can tell when things are bothering me or getting on my nerves.</td><td><select id="self_awareness"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Self_Awareness'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>
                <option value="1" <?php echo($assessment_info['Self_Awareness'] == 1 ? 'selected=="selected"' : null); ?>>Disagree a lot</option>
                <option value="2" <?php echo($assessment_info['Self_Awareness'] == 2 ? 'selected=="selected"' : null); ?>>Disagree a little</option>
                <option value="3" <?php echo($assessment_info['Self_Awareness'] == 3 ? 'selected=="selected"' : null); ?>>Agree a little</option>
                <option value="4" <?php echo($assessment_info['Self_Awareness'] == 4 ? 'selected=="selected"' : null); ?>>Agree a lot</option>
            </select></td></tr>
    <tr><td>If things are bothering me or getting on my nerves, I do things to relax.</td><td><select id="self_care"<?php if(!$editable) {?> disabled='disabled'<?php } ?>>
                <option value="0" <?php echo($assessment_info['Self_Care'] == 0 ? 'selected=="selected"' : null); ?>>N/A</option>
                <option value="1" <?php echo($assessment_info['Self_Care'] == 1 ? 'selected=="selected"' : null); ?>>Disagree a lot</option>
                <option value="2" <?php echo($assessment_info['Self_Care'] == 2 ? 'selected=="selected"' : null); ?>>Disagree a little</option>
                <option value="3" <?php echo($assessment_info['Self_Care'] == 3 ? 'selected=="selected"' : null); ?>>Agree a little</option>
                <option value="4" <?php echo($assessment_info['Self_Care'] == 4 ? 'selected=="selected"' : null); ?>>Agree a lot</option>
            </select></td></tr>
    <tr><td colspan="2"></td></tr>
</table>
<div id="show_violent_response"></div>
<br/><br/>
<?php
//determine whether this is new or edited
//this information is used in the /ajax/ file.
if (isset($_GET['assessment'])) {
    $edit = 1;
} else {
    $edit = 0;
}
//echo $edit;
?>
<!--Save all.  New and edited surveys are differentiated in save_assessments.php:-->
<div style="text-align:center;">
        <link href="/styles/styles.css" rel="stylesheet" type="text/css" />
        <link href="/include/jquery/1.9.1/css/redmond/jquery-ui-1.8.23.custom.css" rel="stylesheet" type="text/css" />
        <script src="/include/jquery/1.9.1/js/jquery-1.8.2.js" type="text/javascript"></script>
        <script src="/include/jquery/1.9.1/development-bundle/ui/jquery.ui.core.js" type="text/javascript"></script>
        <script src="/include/jquery/1.9.1/development-bundle/ui/jquery.ui.widget.js" type="text/javascript"></script>
        <script src="/include/jquery/1.9.1/development-bundle/ui/jquery.ui.datepicker.js" type="text/javascript"></script>
        <script>
        //on search events
	$(function() {
                $('.addDP').datepicker({changeYear: true,
                yearRange: "1920:2030"});
	});
        </script>

        Date completed:

        <?php
            if($anonymous_entry) {
                date_default_timezone_set('America/Chicago');
                $date = date("Y-m-d");
            ?>
                <input type="hidden" id="admin_date" value="<?php echo $date; ?>">
            <?php
                echo $date;
            } else {
            ?>
                <input type="text" id="admin_date" class="addDP" value="<?php echo date("Y-m-d"); ?>" <?php if(!$editable) {?> disabled='disabled'<?php } ?>>
            <?php
            }
        ?>
    &nbsp; &nbsp; &nbsp;
    <?php
        if($editable) {
    ?>
    <div id="draftcontainer" class="floating_draft" style="float:left">
        <input type="button" value="Save Draft" onclick="saveSurvey(1);">
    </div>
    <input type="button" value="Save" onclick="saveSurvey(0)">
        <?php } ?>
    <div id="show_intake_response"></div>
</div>
<br/>
<br/>
<script type="text/javascript">
    $(document).ready(function() {
        $(window).scroll(function() {
            var bottom = $(document).height() - $(window).scrollTop() - $(window).height();
            if(bottom < 100) {
                $("#draftcontainer").attr("class", "unfloating_draft");
            } else {
                $("#draftcontainer").attr("class", "floating_draft");
            }
        });
    });

    function saveSurvey(draftValue) {
       <?php if(!$anonymous_entry && !isset($_GET['assessment'])) { ?>
           var chosen_program = document.getElementById('program').value;
           if (chosen_program == '') {
               alert('Please choose a program and then hit Save again.');
               return false;
           }
       <?php } ?>
       // start caring adult post
       $.post(
               '../ajax/save_assessments.php',
               {
                   <?php if ($anonymous_entry) { echo "code: '" . $_GET['code'] . "',"; } ?>
                   baseline_id: '<?php echo $baseline_id; ?>',
                   action_2: 'caring',
                   person: '<?php echo $person->participant_id; ?>',
                   attn: document.getElementById('pay_attention').value,
                   check: document.getElementById('check_in').value,
                   praise: document.getElementById('praise').value,
                   upset: document.getElementById('upset').value,
                   crisis: document.getElementById('crisis').value,
                   advice: document.getElementById('advice').value,
                   know: document.getElementById('know_you').value,
                   important: document.getElementById('important').value,
                   program: <?php if ($anonymous_entry || isset($_GET['assessment'])) {
                                 echo "'$session_id_safe'";
                            } else { ?> document.getElementById('program').value <?php } ?>,
                   pre_post: 2,
                   caring_id: '<?php echo $caring_id ?>',
                   action_3: 'future',
                   person: '<?php echo $person->participant_id; ?>',
                           solutions: document.getElementById('solve_probs').value,
                   safety: document.getElementById('stay_safe').value,
                   living: document.getElementById('alive_well').value,
                   manage: document.getElementById('manage_work').value,
                   friends: document.getElementById('have_friends').value,
                   happy: document.getElementById('happy_life').value,
                   interesting: document.getElementById('interesting_life').value,
                   parents: document.getElementById('proud_parents').value,
                   finish_hs: document.getElementById('finish_hs').value,
                   future_id: '<?php echo $future_id ?>',
                   action_4: 'violence',
                   person: '<?php echo $person->participant_id; ?>',
                           fear: document.getElementById('chicken').value,
                   prevent: document.getElementById('prevention').value,
                   manage: document.getElementById('other_ways').value,
                           defense: document.getElementById('self_defense').value,
                   coping: document.getElementById('coping_strategies').value,
                   others: document.getElementById('act_out').value,
                   negotiation: document.getElementById('negotiation').value,
                   disapproval: document.getElementById('disapproval').value,
                   approval: document.getElementById('approval').value,
                   awareness: document.getElementById('self_awareness').value,
                   care: document.getElementById('self_care').value,
                   violence_id: '<?php echo $violence_id; ?>',
                   edited: '<?php echo $edit; ?>',
                   assessment_id: '<?php echo $id_sqlsafe; ?>',
                   draft: draftValue,
                   base_date: document.getElementById('admin_date').value
               },
       function(response) {
           document.getElementById('show_intake_response').innerHTML += response + '<br>';
       }).fail(function(response) {
           if(response.responseText == 'bad_date') {
               alert('Please enter a date completed within last six weeks.');
           } else {
               alert('You do not have permission to perform this action.');
           }
       });
    }
</script>
<?php
if (!$anonymous_entry) {
    include "../../footer.php";
}
 ?>
