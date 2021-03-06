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

/* Add a link between a parent and child, from the participant profile. */


	include "../include/dbconnopen.php";
	$add_family_sqlsafe = "
		INSERT INTO Parents_Children (
			Parent_ID,
			Child_ID
		) VALUES (
			'" . mysqli_real_escape_string($cnnTRP, $_POST['parent_id']) . "',
			'" . mysqli_real_escape_string($cnnTRP, $_POST['child_id']) . "'
		)";
	mysqli_query($cnnTRP, $add_family_sqlsafe);
	include "../dbconnclose.php";
?>
