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
 * Even this simple search uses the query format.  They can search on all or none
 * of the offered fields.
 */

/*
 * If any of the fields is blank, then it isn't included in the search query.  If it is filled in, then
 * the search includes it (organization is equal to the selected org).
 */
include "../include/dbconnopen.php";
$name_sqlsafe=mysqli_real_escape_string($cnnBickerdike, $_POST['name']);
$org_sqlsafe=mysqli_real_escape_string($cnnBickerdike, $_POST['org']);
$type_sqlsafe=  mysqli_real_escape_string($cnnBickerdike, $_POST['type']);
if ($_POST['name']==''){$first_sqlsafe='';}else{$first_sqlsafe=' AND Program_Name LIKE "%' . $name_sqlsafe . '%"';};
if ($_POST['org']==''){$last_sqlsafe='';}else{$last_sqlsafe=" AND Program_Organization='" . $org_sqlsafe . "'";}
if ($_POST['type']==''){$zip_sqlsafe='';}else{$zip_sqlsafe=" AND Program_Type='" . $type_sqlsafe. "'";}


$uncertain_search_query_sqlsafe = "SELECT * FROM Programs WHERE Program_ID!='' " . $first_sqlsafe . $last_sqlsafe .  $zip_sqlsafe . "ORDER BY Program_Name";

$results =mysqli_query($cnnBickerdike, $uncertain_search_query_sqlsafe);
?>

<!--Show search results:-->
    <table class="program_table">
        <tr><th colspan="5"><h4>Search Results</h4></th></tr>
    <tr>
        <th>Name</th>
        <th>Organization</th>
        <th>Type</th>
        <th></th>
    </tr>
    <?
while ($program=mysqli_fetch_array($results)){
    ?>
    <tr>
        <td class="all_projects"><a href="/bickerdike/activities/program_profile.php?program=<?echo $program['Program_ID'];?>"><?echo $program['Program_Name'];?></a></td>
        <td class="all_projects">
            <!--Get the organization name (I didn't know how to use joins at this point, which is why I did this so inefficiently).-->
            <?$find_org_sqlsafe = "SELECT * FROM Org_Partners WHERE Partner_ID='" . $program['Program_Organization'] . "'";
							include "../include/dbconnopen.php";
							$org = mysqli_query($cnnBickerdike, $find_org_sqlsafe);
							if ($partner = mysqli_fetch_array($org)) {
							echo $partner['Partner_Name'];
							}
							?></td>
        <td class="all_projects">
            <!--Get the type text-->
            <?$find_org_sqlsafe = "SELECT * FROM Program_Types WHERE Program_Type_ID='" . $program['Program_Type'] . "'";
                                include "../include/dbconnopen.php";
                                $org = mysqli_query($cnnBickerdike, $find_org_sqlsafe);
                                if ($partner = mysqli_fetch_array($org)) {
                                    echo $partner['Program_Type_Name'];
                                }
                                ?></td>
        <td class="all_projects hide_on_view">
            <!--See /ajax/delete_program for more this.  Deletes program.-->
            <input type="button" value="Delete Program" onclick="
                                                     $.post(
                                                     '../ajax/delete_program.php',
                                                     {
                                                         id: '<?echo $program['Program_ID'];?>'
                                                     },
                                                     function (response){
                                                         window.location='view_all_programs.php';
                                                     }
                                                 )"></td>
    </tr>
        <?
}
include "../include/dbconnclose.php";
?>
