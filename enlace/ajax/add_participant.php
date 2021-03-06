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
user_enforce_has_access($Enlace_id, $DataEntryAccess);

/* several participant actions */
require_once("../classes/assessment.php");
require_once("../classes/participant.php");

/* add a participant to the attendees at an event */
if ($_POST['action'] == 'link_event') {
    include "../include/dbconnopen.php";
    $participant_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['participant']);
    $event_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['event']);
    $role_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['role']);
    $new_event = "INSERT INTO Participants_Events (Participant_ID, Event_ID, Role_Type)
        VALUES ('" . $participant_sqlsafe . "', '" . $event_sqlsafe . "', '" . $role_sqlsafe . "')";
    mysqli_query($cnnEnlace, $new_event);
    include "../include/dbconnclose.php";

    
    /* change the role of a participant at an event */
}
    elseif ($_POST['action'] == 'update_role') {
    include "../include/dbconnopen.php";
    $role_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['role']);
    $link_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['link']);
    $update_role = "UPDATE Participants_Events SET Role_Type='" . $role_sqlsafe . "' WHERE Participants_Events_ID='" . $link_sqlsafe . "'";
    mysqli_query($cnnEnlace, $update_role);
    include "../include/dbconnclose.php";

    /* or just create a new participant altogether */
} else {
    include "../include/dbconnopen.php";
    $first_name_sqlsafe=  mysqli_real_escape_string($cnnEnlace, $_POST['first_name']);
    $last_name_sqlsafe=  mysqli_real_escape_string($cnnEnlace, $_POST['last_name']);
    $dob_sqlsafe=  mysqli_real_escape_string($cnnEnlace, $_POST['dob']);
    $age_sqlsafe=  mysqli_real_escape_string($cnnEnlace, $_POST['age']);
    $gender_sqlsafe=  mysqli_real_escape_string($cnnEnlace, $_POST['gender']);
    $grade_sqlsafe=  mysqli_real_escape_string($cnnEnlace, $_POST['grade']);
    $school_sqlsafe=  mysqli_real_escape_string($cnnEnlace, $_POST['school']);
    $role_sqlsafe=  mysqli_real_escape_string($cnnEnlace, $_POST['role']);
    $home_lang_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['home_lang']);
    $ethnicity_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['ethnicity']);
    $race_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['race']);
    $recruitment_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['recruitment']);
    $youth_behavioral_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['youth_behavioral']);

    if(($dob_sqlsafe == "" && $age_sqlsafe == "") ||
       $grade_sqlsafe == "" ||
       $school_sqlsafe == "" ||
       $gender_sqlsafe == "") {
       /* Note: This won't be shown to the user, but useful for logs */
       throw new Exception("Required demographics for adding not included");
    }
    
    $add_participant = "INSERT INTO Participants (
		First_Name,
		Last_Name,
		DOB,
		Age,
		Gender,
		Grade,
		School,
        Home_Language,
        Ethnicity,
        Race,
        Recruitment,
        Youth_Behavioral,
		Role
	) VALUES (
		'" . $first_name_sqlsafe . "',
		'" . $last_name_sqlsafe . "',
		'" . $dob_sqlsafe . "',
		'" . $age_sqlsafe . "',
		'" . $gender_sqlsafe . "',
		'" . $grade_sqlsafe . "',
		'" . $school_sqlsafe . "',
		'" . $home_lang_sqlsafe . "',
		'" . $ethnicity_sqlsafe . "',
		'" . $race_sqlsafe . "',
		'" . $recruitment_sqlsafe . "',
		'" . $youth_behavioral_sqlsafe . "',
		'" . $role_sqlsafe . "'	
	)";
    mysqli_query($cnnEnlace, $add_participant);
    $id = mysqli_insert_id($cnnEnlace);
    include "../include/dbconnclose.php";
    if ($_POST['action'] == 'link_child') {
        $parent_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['parent']);
        $add_relative = "INSERT INTO Child_Parent (Parent_ID, Child_ID)
                VALUES ('" . $parent_sqlsafe . "', '" . $id . "')";
        include "../include/dbconnopen.php";
        mysqli_query($cnnEnlace, $add_relative);
        include "../include/dbconnclose.php";
    }
    if ($_POST['action'] == 'link_parent') {
        $child_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['child']);
        $add_relative = "INSERT INTO Child_Parent (Parent_ID, Child_ID)
                VALUES ('" . $id . "', '" . $child_sqlsafe . "')";
        include "../include/dbconnopen.php";
        mysqli_query($cnnEnlace, $add_relative);
        include "../include/dbconnclose.php";
    }
        /* add a participant to the people in a program */
    if($_POST['action']=='add_program'){
            include "../include/dbconnopen.php";
            $program_id_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['program_id']);
            $add_person_to_program = "INSERT INTO Participants_Programs (Participant_ID, Program_ID) VALUES ('$id', '$program_id_sqlsafe')";
            mysqli_query($cnnEnlace, $add_person_to_program);
            include "../include/dbconnclose.php";
            
    }
    
    ?>
    <br/><br/>
    <span style="color:#990000; font-weight:bold;">Thank you for adding <?php echo $_POST['first_name'] . " " . $_POST['last_name']; ?> to the database.</span><br/>
    <?php if($_POST['action']=='add_program'){
        ?> <a href="../participants/participant_profile.php?id=<?php echo $id; ?>">View profile</a><?php
    } else{?>
    <a href="participant_profile.php?id=<?php echo $id; ?>">View profile</a>
    <?php }?>
    <br/>
    <?php
}
?>
