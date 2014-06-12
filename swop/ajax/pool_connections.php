<?php
/* adds and deletes institutional connections from person profile (both participant and pool profile pages). */

if ($_POST['action'] == 'get_list') {
    /* obsolete. not sure what this was for. */
    ?><option value="">-----</option><?php
    $get_all_conns = "SELECT * FROM Participants INNER JOIN Institutions_Participants
            ON Institutions_Participants.Participant_Id=Participants.Participant_ID
            WHERE Institution_ID='" . $_POST['inst'] . "';";

    include "../include/dbconnopen.php";
    $all_conns = mysqli_query($cnnSWOP, $get_all_conns);
    while ($conn = mysqli_fetch_array($all_conns)) {
        ?><option value="<?php echo $conn['Participant_ID']; ?>"><?php echo $conn['Name_First'] . " " . $conn['Name_Last']; ?></option>
        <?php
    }
    include "../include/dbconnclose.php";
} elseif ($_POST['action'] == 'add_conn') {
    /* add a new institutional connection (if this person isn't already connected to this institution) */
    $check_already_connected = "SELECT * FROM Institutions_Participants WHERE Institution_ID='" . $_POST['inst'] . "' AND Participant_ID='" . $_POST['person'] . "'";

    $add_connection = "INSERT INTO Institutions_Participants (Institution_ID, Participant_Id, Is_Primary, Individual_Connection, Connection_Reason, Activity_Type)
        VALUES ('" . $_POST['inst'] . "',
            '" . $_POST['person'] . "',
                '" . $_POST['prime'] . "',
                '" . $_POST['conn'] . "',
                '" . $_POST['reason'] . "',
				6)";

    echo $add_connection;
    include "../include/dbconnopen.php";
    $check_conn = mysqli_query($cnnSWOP, $check_already_connected);
    $conn_num = mysqli_num_rows($check_conn);
    if ($conn_num <= 0) {
        mysqli_query($cnnSWOP, $add_connection);
        $id = mysqli_insert_id($cnnSWOP);
    } else {
        $id_conn = mysqli_fetch_row($check_conn);
        $id = $id_conn[0];
    }
    include "../include/dbconnclose.php";
} elseif ($_POST['action'] == 'delete_conn') {
    /* delete institutional connection. */
    $delete_connection = "DELETE FROM Institutions_Participants WHERE Institutions_Participants_ID='" . $_POST['link_id'] . "'";
    include "../include/dbconnopen.php";
    mysqli_query($cnnSWOP, $delete_connection);
    include "../include/dbconnclose.php";
}
?>
<!--            <option>this worked</option>-->