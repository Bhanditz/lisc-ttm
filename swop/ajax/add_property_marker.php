<?php

/* comes from property profile.  adds property marker or additional information related to the marker. */
if ($_POST['action'] == 'get_addtl_info') {
    /* add information for markers that have been chosen: */
    if ($_POST['marker'] == 7) {
        ?>
        <span class="helptext">Reason for interest: </span>
        <select id="addtl_info_1">
            <option value="">-----</option>
            <option value="vacant">Vacant</option>
            <option value="foreclosure">Foreclosure</option>
            <option value="sale">For sale</option>
            <option value="reo">REO</option>
        </select>
        <input id="addtl_info_2" style="display:none;"/>
        <input id="addtl_info_3" style="display:none;"/>
        <input id="addtl_info_4" style="display:none;"/>
        <?php

    } else if ($_POST['marker'] == 1) {
        ?>
        <span class="helptext">Acquisition cost: </span>
        <input id="addtl_info_1" />
        <input id="addtl_info_2" style="display:none;"/>
        <input id="addtl_info_3" style="display:none;"/>
        <input id="addtl_info_4" style="display:none;"/>
        <?php

    } else if ($_POST['marker'] == 2) {
        ?>
        <span class="helptext">Construction cost: </span>
        <input id="addtl_info_1" />
        <input id="addtl_info_2" style="display:none;"/>
        <input id="addtl_info_3" style="display:none;"/>
        <input id="addtl_info_4" style="display:none;"/>
        <?php

    } else if ($_POST['marker'] == 4) {
        ?>
        <span class="helptext">Number of contacts: </span>
        <input id="addtl_info_1"/>
        <input id="addtl_info_2" style="display:none;"/>
        <input id="addtl_info_3" style="display:none;"/>
        <input id="addtl_info_4" style="display:none;"/>
        <?php

    } else if ($_POST['marker'] == 5) {
        ?>
        <span class="helptext">Sale price: </span>
        <input id="addtl_info_1"/><br/>
        <span class="helptext">Purchaser: </span>
        <input id="addtl_info_2"/><br/>
        <span class="helptext">Days on the market: </span>
        <input id="addtl_info_3"/><br/>
        <span class="helptext">Amount of subsidy/second mortgage: </span>
        <input id="addtl_info_4"/>
        <?php

    } else {
        /* add these in so javascript doesn't malfunction when it can't find them. */
        ?>
        <input id="addtl_info_1" style="display:none;"/>
        <input id="addtl_info_2" style="display:none;"/>
        <input id="addtl_info_3" style="display:none;"/>
        <input id="addtl_info_4" style="display:none;"/>
        <?php

    }
//add new rehab marker	
} else if ($_POST['action'] == 'save') {
    $add_marker = "INSERT INTO Property_Progress (Marker, Addtl_Info_1, Addtl_Info_2, Addtl_Info_3, Addtl_Info_4, Property_ID)
					VALUES ('" . $_POST['marker'] . "', '" . $_POST['addtl_info_1'] . "', '" . $_POST['addtl_info_2'] . "', '" . $_POST['addtl_info_3'] . "', '" . $_POST['addtl_info_4'] . "', '" . $_POST['property'] . "')";
    echo $add_marker;
    include "../include/dbconnopen.php";
    mysqli_query($cnnSWOP, $add_marker);
    include "../include/dbconnclose.php";
//add/edit notes	
} else if ($_POST['action'] == 'save_notes') {
    $save_notes = "UPDATE Property_Progress SET Notes='" . $_POST['note'] . "' WHERE Property_Progress_ID='" . $_POST['event'] . "'";
    echo $save_notes;
    include "../include/dbconnopen.php";
    mysqli_query($cnnSWOP, $save_notes);
    include "../include/dbconnclose.php";
} elseif ($_POST['action'] == 'delete') {
    /* delete a marker (progress step) */
    $get_marker = "SELECT Marker, Property_ID FROM Property_Progress WHERE Property_Progress_ID='" . $_POST['id'] . "'";
    $delete_step = "DELETE FROM Property_Progress WHERE Property_Progress_ID='" . $_POST['id'] . "'";
    include "../include/dbconnopen.php";
    $marker = mysqli_query($cnnSWOP, $get_marker);
    $marker_num = mysqli_fetch_row($marker);
    if ($marker_num[0] == 9) {
        $delete_price = "UPDATE Properties SET Sale_Price='' WHERE Property_ID='" . $marker_num[1] . "'";
    }
    mysqli_query($cnnSWOP, $delete_price);
    mysqli_query($cnnSWOP, $delete_step);
    include "../include/dbconnclose.php";
}
?>