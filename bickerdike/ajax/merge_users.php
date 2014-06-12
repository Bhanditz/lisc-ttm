<?php
/*
 * The alternative to straight deletion of users.  This allows you to merge the links (events, programs,
 * surveys, attendance, health data) associated with
 * one user to the profile of another.  Then deletes the secondary user.  Useful for 
 * double-entry that isn't discovered right away.
 */

/*
 * The merge action is actually secondary.  This is undertaken once we know who we're merging the 
 * duplicate with (the new_id is the user that will survive.  The origin_id refers to the user we're 
 * deleting).
 */

if ($_POST['action'] == 'merge') {
    $update_activities_query = "UPDATE Activities_Users SET User_ID='" . $_POST['new_id'] . "' WHERE User_ID='" . $_POST['origin_id'] . "'";
    $update_surveys_query = "UPDATE Participant_Survey_Responses SET User_ID='" . $_POST['new_id'] . "' WHERE User_ID='" . $_POST['origin_id'] . "'";
    $update_attendance_query = "UPDATE Program_Dates_Users SET User_ID='" . $_POST['new_id'] . "' WHERE User_ID='" . $_POST['origin_id'] . "'";
    $update_programs_query = "UPDATE Programs_Users SET User_ID='" . $_POST['new_id'] . "' WHERE User_ID='" . $_POST['origin_id'] . "'";
    $update_health_query = "UPDATE User_Health_Data SET User_ID='" . $_POST['new_id'] . "' WHERE User_ID='" . $_POST['origin_id'] . "'";
    $delete_user_query = "DELETE FROM Users WHERE User_ID='" . $_POST['origin_id'] . "'";
    echo $delete_user_query;
    include "../include/dbconnopen.php";
    mysqli_query($cnnBickerdike, $update_activities_query);
    mysqli_query($cnnBickerdike, $update_surveys_query);
    mysqli_query($cnnBickerdike, $update_attendance_query);
    mysqli_query($cnnBickerdike, $update_programs_query);
    mysqli_query($cnnBickerdike, $update_health_query);
    mysqli_query($cnnBickerdike, $delete_user_query);
    include "../include/dbconnclose.php";
}
/*
 * This is the first response, which allows system users to search for the participant they want to
 * be the new_id, above.
 */ else {
    ?>
    <div class="remove_step" id="remove_3a">
        <span class="helptext">Search for the profile you would like to transfer participant #<?echo $_POST['user_id'];?>'s information to.</span>
        <table class="search_table">
            <tr><td class="all_projects"><strong>First Name:</strong></td>
                <td class="all_projects"><input type="text" id="first_name2"></td>
                <td class="all_projects"><strong>Last Name:</strong></td>
                <td class="all_projects" colspan="2"><input type="text" id="last_name2"></td>
            </tr>
            <tr><td class="all_projects"><strong>Database ID:</strong></td>
                <td class="all_projects"><input type="text" id="db_id2"></td>
                <td class="all_projects"><input type="button" value="Search" onclick="
                            $.post(
                                    '../ajax/search_users.php',
                                    {
                                        original_id: '<?echo $_POST['user_id'];?>',
                                                first: document.getElementById('first_name2').value,
                                        last: document.getElementById('last_name2').value,
                                        id: document.getElementById('db_id2').value,
                                        remove: '2'
                                    },
                            function(response) {
                                //document.write(response);
                                document.getElementById('search_results2').innerHTML = response;
                            }
                            )"></td>
            </tr>
        </table>
        <div id="search_results2"></div>
    </div>
    <div class="remove_step" id="remove_3b">

    </div>
    <?php
}
?>