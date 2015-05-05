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
include $_SERVER['DOCUMENT_ROOT'] . "/include/dbconnopen.php";
include $_SERVER['DOCUMENT_ROOT'] . "/core/include/setup_user.php";

user_enforce_has_access($Bickerdike_id, $DataEntryAccess);

/*
 * The onchange save from the program profile directs here.  Notes save into the 
 * Programs table, so only one can be saved per program.
 */
if ($_POST['type']=='program'){
    include "../include/dbconnopen.php";
    $note_sqlsafe=mysqli_real_escape_string($cnnBickerdike, $_POST['note']);
    $id_sqlsafe=mysqli_real_escape_string($cnnBickerdike, $_POST['id']);
    $query_sqlsafe = "UPDATE Programs SET Notes='" . $note_sqlsafe . "' WHERE Program_ID='" . $id_sqlsafe . "'";
    echo $query_sqlsafe;
    mysqli_query($cnnBickerdike, $query_sqlsafe);
    include "../include/dbconnclose.php";
}


?>
