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

/* participant_program changes */
require_once("../classes/assessment.php");
require_once("../classes/participant.php");

// delete session and all corresponding data
if ($_POST['action'] == 'delete_session') {

    user_enforce_has_access($Enlace_id, $AdminAccess);

    include "../include/dbconnopen.php";
    $session_id_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['session_id']);
    date_default_timezone_set('America/Chicago');
    
    //delete session from baseline assessments
    $delete_session = "DELETE FROM Participants_Baseline_Assessments WHERE Program='" . $session_id_sqlsafe . "'";
    echo $delete_session;
    include "../include/dbconnopen.php";
    mysqli_query($cnnEnlace, $delete_session);
    include "../include/dbconnclose.php";
    
    //delete session from Participants_Interpersonal_Violence
    $delete_session = "DELETE FROM Participants_Interpersonal_Violence WHERE Program='" . $session_id_sqlsafe . "'";
    echo $delete_session;
    include "../include/dbconnopen.php";
    mysqli_query($cnnEnlace, $delete_session);
    include "../include/dbconnclose.php";
    
    //delete session from Participants_Caring_Adults
    $delete_session = "DELETE FROM Participants_Caring_Adults WHERE Program='" . $session_id_sqlsafe . "'";
    echo $delete_session;
    include "../include/dbconnopen.php";
    mysqli_query($cnnEnlace, $delete_session);
    include "../include/dbconnclose.php";
    
    //delete session from Participants_Future_Expectations
    $delete_session = "DELETE FROM Participants_Future_Expectations WHERE Program='" . $session_id_sqlsafe . "'";
    echo $delete_session;
    include "../include/dbconnopen.php";
    mysqli_query($cnnEnlace, $delete_session);
    include "../include/dbconnclose.php";
    
    //delete session from Participants_Programs
    $delete_session = "DELETE FROM Participants_Programs WHERE Program_ID='" . $session_id_sqlsafe . "'";
    echo $delete_session;
    include "../include/dbconnopen.php";
    mysqli_query($cnnEnlace, $delete_session);
    include "../include/dbconnclose.php";
    
    //delete session from program_surveys
    $delete_session = "DELETE FROM Program_Surveys WHERE Session_ID='" . $session_id_sqlsafe . "'";
    echo $delete_session;
    include "../include/dbconnopen.php";
    mysqli_query($cnnEnlace, $delete_session);
    include "../include/dbconnclose.php";
    
    //delete session from Session_Names
    $delete_session = "DELETE FROM Session_Names WHERE Session_ID='" . $session_id_sqlsafe . "'";
    echo $delete_session;
    include "../include/dbconnopen.php";
    mysqli_query($cnnEnlace, $delete_session);
    include "../include/dbconnclose.php";
    
}
/* delete participant completely */
else if ($_POST['action'] == 'delete_participant') {
    user_enforce_has_access($Enlace_id, $AdminAccess);
    include "../include/dbconnopen.php";
    $participant_id_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['participant_id']);
    date_default_timezone_set('America/Chicago');
    
    //delete participant from programs
    $delete_participant = "DELETE FROM Participants_Programs WHERE Participant_ID='" . $participant_id_sqlsafe . "'";
    echo $delete_participant;
    include "../include/dbconnopen.php";
    mysqli_query($cnnEnlace, $delete_participant);
    include "../include/dbconnclose.php";
    
    //delete participant from absences
    $delete_participant = "DELETE FROM Absences WHERE Participant_ID='" . $participant_id_sqlsafe . "'";
    echo $delete_participant;
    include "../include/dbconnopen.php";
    mysqli_query($cnnEnlace, $delete_participant);
    include "../include/dbconnclose.php";
    
    //delete participant from baseline assessments
    $delete_participant = "DELETE FROM Participants_Baseline_Assessments WHERE Participant_ID='" . $participant_id_sqlsafe . "'";
    echo $delete_participant;
    include "../include/dbconnopen.php";
    mysqli_query($cnnEnlace, $delete_participant);
    include "../include/dbconnclose.php";
    
    //delete participant from caring adults
    $delete_participant = "DELETE FROM Participants_Caring_Adults WHERE Participant_ID='" . $participant_id_sqlsafe . "'";
    echo $delete_participant;
    include "../include/dbconnopen.php";
    mysqli_query($cnnEnlace, $delete_participant);
    include "../include/dbconnclose.php";
    
    //delete participant from parent / child relationships
    $delete_participant = "DELETE FROM Child_Parent WHERE Child_ID ='" . $participant_id_sqlsafe . "' "
                            . "OR Parent_ID ='" . $participant_id_sqlsafe . "'";
    echo $delete_participant;
    include "../include/dbconnopen.php";
    mysqli_query($cnnEnlace, $delete_participant);
    include "../include/dbconnclose.php";
    
    //delete participant from interpersonal violence
    $delete_participant = "DELETE FROM Participants_Interpersonal_Violence WHERE Participant_ID='" . $participant_id_sqlsafe . "'";
    echo $delete_participant;
    include "../include/dbconnopen.php";
    mysqli_query($cnnEnlace, $delete_participant);
    include "../include/dbconnclose.php";
    
    //delete participant from consents
    $delete_participant = "DELETE FROM Participants_Consent WHERE Participant_ID='" . $participant_id_sqlsafe . "'";
    echo $delete_participant;
    include "../include/dbconnopen.php";
    mysqli_query($cnnEnlace, $delete_participant);
    include "../include/dbconnclose.php";
    
    //delete participant from events
    $delete_participant = "DELETE FROM Participants_Events WHERE Participant_ID='" . $participant_id_sqlsafe . "'";
    echo $delete_participant;
    include "../include/dbconnopen.php";
    mysqli_query($cnnEnlace, $delete_participant);
    include "../include/dbconnclose.php";
    
    //delete participant from future expectations
    $delete_participant = "DELETE FROM Participants_Future_Expectations WHERE Participant_ID='" . $participant_id_sqlsafe . "'";
    echo $delete_participant;
    include "../include/dbconnopen.php";
    mysqli_query($cnnEnlace, $delete_participant);
    include "../include/dbconnclose.php";
    
    //delete participant from referrals
    $delete_participant = "DELETE FROM Referrals WHERE Participant_ID='" . $participant_id_sqlsafe . "'";
    echo $delete_participant;
    include "../include/dbconnopen.php";
    mysqli_query($cnnEnlace, $delete_participant);
    include "../include/dbconnclose.php";

    //delete participant from participants
    $delete_participant = "DELETE FROM Participants WHERE Participant_ID='" . $participant_id_sqlsafe . "'";
    echo $delete_participant;
    include "../include/dbconnopen.php";
    mysqli_query($cnnEnlace, $delete_participant);
    include "../include/dbconnclose.php";
    

}
/* drop from program.  we delete people from participants_programs */ 
elseif ($_POST['action'] == 'delete_participant_from_program') {
    user_enforce_has_access($Enlace_id, $AdminAccess);
    date_default_timezone_set('America/Chicago');
    include "../include/dbconnopen.php";
    $link_id_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['link_id']);
    
    //delete participant from program
    $delete_participant_from_program = "DELETE FROM Participants_Programs WHERE Participant_Program_ID='" . $link_id_sqlsafe . "'";
    echo $delete_participant_from_program;
    mysqli_query($cnnEnlace, $delete_participant_from_program);
    include "../include/dbconnclose.php";
}
/* drop from program.  we don't delete people from participants_programs, just add a "dropped" date */ 
elseif ($_POST['action'] == 'drop') {
    date_default_timezone_set('America/Chicago');
    include "../include/dbconnopen.php";
    $link_id_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['link_id']);

    $drop_from_program = "UPDATE Participants_Programs SET Date_Dropped='" . date('Y-m-d') . "' WHERE Participant_Program_ID='" . $link_id_sqlsafe . "'";
    echo $drop_from_program;
    mysqli_query($cnnEnlace, $drop_from_program);
    include "../include/dbconnclose.php";
}
/* re_enroll in the program. */ 
elseif ($_POST['action'] == 're_enroll') {
    include "../include/dbconnopen.php";
    $link_id_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['link_id']);

    $re_enroll_in_program = "UPDATE Participants_Programs SET Date_Dropped=NULL WHERE Participant_Program_ID='" . $link_id_sqlsafe . "'";
    echo $re_enroll_in_program;
    mysqli_query($cnnEnlace, $re_enroll_in_program);
    include "../include/dbconnclose.php";
}
elseif ($_POST['action'] == 'change_drop_date') {
    include "../include/dbconnopen.php";
    $link_id_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['link_id']);
    $new_drop_date_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['new_date']);

    $change_drop_date = "UPDATE Participants_Programs SET Date_Dropped='" . $new_drop_date_sqlsafe . "' WHERE Participant_Program_ID='" . $link_id_sqlsafe . "'";
    $drop_attendance_dates = "DELETE Absences FROM Absences
        INNER JOIN Program_Dates ON Absences.Program_Date = Program_Dates.Program_Date_ID
        INNER JOIN Participants_Programs ON
            (Absences.Participant_ID = Participants_Programs.Participant_ID AND
             Participants_Programs.Program_ID = Program_Dates.Program_ID)
        WHERE Participants_Programs.Date_Dropped IS NOT NULL
            AND Participants_Programs.Date_Dropped < Program_Dates.Date_Listed
            AND Participant_Program_ID = '$link_id_sqlsafe'";

    mysqli_query($cnnEnlace, $change_drop_date);
    mysqli_query($cnnEnlace, $drop_attendance_dates);
    include "../include/dbconnclose.php";
}
/* or, add someone to a program!  which I believe is actually adding them to a session. */
else {
    include "../include/dbconnopen.php";
    $participant_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['participant']);
    $program_id_sqlsafe=mysqli_real_escape_string($cnnEnlace, $_POST['program_id']);

    $add_person_to_program = "INSERT INTO Participants_Programs (Participant_ID, Program_ID) VALUES ('$participant_sqlsafe', '$program_id_sqlsafe')";
    mysqli_query($cnnEnlace, $add_person_to_program);
    include "../include/dbconnclose.php";
}
?>
