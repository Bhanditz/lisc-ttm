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

user_enforce_has_access($TRP_id, $DataEntryAccess);


include "../include/dbconnopen.php";
/*
 * If search elements are filled in, they are added to the search query:
 */
if ($_POST['first'] == '') {
    $first_sqlsafe = '';
} else {
    $first_sqlsafe = ' AND First_Name LIKE "%' . mysqli_real_escape_string($cnnTRP, $_POST['first']) . '%"';
}
if ($_POST['last'] == '') {
    $last_sqlsafe = '';
} else {
    $last_sqlsafe = " AND Last_Name LIKE '%" . mysqli_real_escape_string($cnnTRP, $_POST['last']) . "%'";
}
if ($_POST['dob'] == '') {
    $dob_sqlsafe = '';
} else {
    $dob_sqlsafe = " AND DOB='" . mysqli_real_escape_string($cnnTRP, $_POST['dob']) . "'";
}
if ($_POST['gender'] == '') {
    $gender_sqlsafe = '';
} else {
    $gender_sqlsafe = " AND Gender='" . mysqli_real_escape_string($cnnTRP, $_POST['gender']) . "'";
}
if ($_POST['cps_id'] == '') {
    $cps_sqlsafe = '';
} else {
    $cps_sqlsafe = " AND CPS_ID='" . mysqli_real_escape_string($cnnTRP, $_POST['cps_id']) . "'";
}
if ($_POST['program'] == '') {
    $program_sqlsafe = '';
} else {
    $program_join_sqlsafe=" INNER JOIN Participants_Programs ON Participants.Participant_ID=Participants_Programs.Participant_ID ";
    $program_sqlsafe = " AND Program_ID='" . mysqli_real_escape_string($cnnTRP, $_POST['program']) . "'";
}
$uncertain_search_query_sqlsafe = "SELECT * FROM Participants" . $program_join_sqlsafe . " WHERE Participants.Participant_ID!='' " . $first_sqlsafe . $last_sqlsafe . $dob_sqlsafe . $gender_sqlsafe . $cps_sqlsafe . $program_sqlsafe . " ORDER BY Last_Name";

$results = mysqli_query($cnnTRP, $uncertain_search_query_sqlsafe);

if ($_POST['family_search'] == '1') {
    /* for those searching for a parent or child (from the profile): */
    while ($user = mysqli_fetch_array($results)) {
        ?>
        <!-- button options for adding the parent-child link: -->
        <span style="font-weight:bold;font-size:.9em;padding-left:25px;">Add <?php echo $user['First_Name'] . " " . $user['Last_Name']; ?> as <a href="javascript:;" onclick="
                $.post(
                        '../ajax/add_family.php',
                        {
                            parent_id: <?php echo $user['Participant_ID']; ?>,
                            child_id: <?php echo $_POST['current_user']; ?>
                        },
                function(response) {
                    //document.write(response);
                    window.location = '../participants/profile.php?id=<?php echo $_POST['current_user']; ?>';
                }
                )">parent</a> or <a href="javascript:;" onclick="
                        $.post(
                                '../ajax/add_family.php',
                                {
                                    child_id: <?php echo $user['Participant_ID']; ?>,
                                    parent_id: <?php echo $_POST['current_user']; ?>
                                },
                        function(response) {
                            //document.write(response);
                            window.location = '../participants/profile.php?id=<?php echo $_POST['current_user']; ?>';
                        }
                        )">child</a>
        </span>
        <br/>
        <?php
    }
} else if ($_POST['event_add'] == '1') {
    /* if you're searching for a person to add as an attendee, then this button shows up: */
    while ($user = mysqli_fetch_array($results)) {
        ?>
        <span>Add <a href="javascript:;" onclick="
                $.post(
                        '../ajax/add_attendee_to_event.php',
                        {
                            event_id: <?php echo $_POST['event_id']; ?>,
                            participant_id: <?php echo $user['Participant_ID']; ?>
                        },
                function(response) {
                    window.location = '../engagement/engagement.php?event=<?php echo $_POST['event_id']; ?>';
                }
                )"><?php echo $user['First_Name'] . " " . $user['Last_Name']; ?></a> to this event
        </span><br/>

        <?php
    }
} else if ($_POST['program_add'] == '1') {
    /* if you're looking to add a person to a program, this button appears: */
    while ($user = mysqli_fetch_array($results)) {
        ?>
        <strong style="font-size:.9em;margin-left:25px;"><?php echo $user['First_Name'] . " " . $user['Last_Name']; ?></strong> <a class="helptext" href="javascript:;" onclick="
                $.post(
                        '../ajax/add_participant_to_program.php',
                        {
                            program_id: <?php echo $_POST['program_id']; ?>,
                            participant: <?php echo $user['Participant_ID']; ?>
                        },
                function(response) {
                    window.location = '../programs/profile.php?id=<?php echo $_POST['program_id']; ?>';
                }
                )">Add to program...</a>
                <br/>
            <?php
        }
        echo "<br/>";
    } else {
        /* table of search results on the participants home page: */
        ?>
    <br/><h4>Search Results</h4>
    <table class="program_table" width="70%">
        <tr>
            <th>CPS ID</th>
            <th>Name</th>
            <th>DOB</th>
            <th>Gender</th>
            <?php
            //if an administrator
    if ($USER->has_site_access($TRP_id, $AdminAccess)) {
                //show delete area
                ?>
                <th>
                    Delete
                </th>
                <?php
            }
            ?>
        </tr>
<?php
//get LC users for profile link below
            $la_casa_id = 6; //should be set globally
            $select_distinct_LC_users = "SELECT DISTINCT Participant_ID FROM Participants_Programs WHERE Program_ID = $la_casa_id;";
$lc_people = array();
$LC_users = mysqli_query($cnnTRP, $select_distinct_LC_users);
while ($user_id = mysqli_fetch_row($LC_users)){
    $lc_people[] = $user_id[0];
}
        while ($user = mysqli_fetch_array($results)) {
            $date_formatted = explode('-', $user['DOB']);
            $DOB = $date_formatted[1] . "/" . $date_formatted[2] . "/" . $date_formatted[0];
            ?>
            <tr>
<?php
            if ( in_array($user['Participant_ID'], $lc_people)) {
?>
                <td class="all_projects"><a href="lc_profile.php?id=<?php echo $user['Participant_ID']; ?>"><?php echo $user['CPS_ID']; ?></a></td>
                <td class="all_projects" style="text-align:left;"><a href="lc_profile.php?id=<?php echo $user['Participant_ID']; ?>"><?php echo $user['First_Name'] . " " . $user['Last_Name']; ?></a></td>

<?php
            }
            else {
?>
                <td class="all_projects"><a href="profile.php?id=<?php echo $user['Participant_ID']; ?>"><?php echo $user['CPS_ID']; ?></a></td>
                <td class="all_projects" style="text-align:left;"><a href="profile.php?id=<?php echo $user['Participant_ID']; ?>"><?php echo $user['First_Name'] . " " . $user['Last_Name']; ?></a></td>
<?php
            } //end profile differentiation
?>
                <td class="all_projects"><?php echo $DOB; ?></td>
                <td class="all_projects"><?php
                    if ($user['Gender'] == 'm') {
                        echo "Male";
                    } else if ($user['Gender'] == 'f') {
                        echo "Female";
                    }
                    ?></td>
                <?php
                //if an administrator
                                                                                                                                                        if ($USER->has_site_access($TRP_id, $AdminAccess)) {
                    //show delete area
                    ?>
                    <td class="all_projects" style="text-align: center;">
                        <a href="javascript:;" onclick="
                                            if (confirm('ARE YOU SURE YOU WANT TO COMPLETELY DELETE THIS PARTICIPANT?\r\n'
                                                        + 'NOTE: This will delete all of this participant\'s data as well.')) {
                                                if (confirm('ARE YOU SURE?')) {
                                                    $.post(
                                                            '../ajax/delete_participant.php',
                                                            {
                                                                //action: 'delete_participant',
                                                                participant_id: '<?php echo $user['Participant_ID']; ?>'
                                                            },
                                                    function(response) {
                                                        //document.write(response);
                                                        if (response == '') {
                                                            window.location = 'participants.php';
                                                        } else {
                                                            alert('An error occurred: ' + response);
                                                        }
                                                    }
                                                    )
                                                }
                                            }" style="font-size:.8em; color: #f00; font-weight: bold;">X</a>
                    </td>
                    <?php
                }
                ?>
            </tr>
            <?php
        }
    }
    include "../include/dbconnclose.php";
    ?>

