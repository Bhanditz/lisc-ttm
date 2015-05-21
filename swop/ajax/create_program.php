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
user_enforce_has_access($SWOP_id, $DataEntryAccess);

/* add a new campaign: */
    include "../include/dbconnopen.php";
    $make_campaign_sqlsafe="INSERT INTO Campaigns (
                Campaign_Name) VALUES(
                '" . mysqli_real_escape_string($cnnSWOP, $_POST['name']) ."')";
    //echo $make_campaign;
    mysqli_query($cnnSWOP, $make_campaign_sqlsafe);
    $id= mysqli_insert_id($cnnSWOP);
    include "../include/dbconnclose.php";



?>

<!-- Add an even to this campaign: -->                                              
<span class="helptext">Dates must be entered in the format YYYY-MM-DD.</span>                                              
Name: <input type="text" id="event" ><br>
<input type="button" value="Add Event" onclick="
                $.post(
                '../ajax/add_event.php',
                {
                    campaign_id: '<?echo $id;?>',
                    date: document.getElementById('first_program_date').value,
                    event_name: document.getElementById('event').value
                },
                function (response){
                    //alert('response');
                    document.getElementById('show_ok').innerHTML += 'Thank you for adding '+document.getElementById('event').value + ' <br>';
                    document.getElementById('first_campaign_date').value = '';
                    document.getElementById('first_campaign_date').focus();
                }
            );"><br/>
<div id="show_ok"></div>
<br/><br/>


Or, <a href="javascript:;" onclick="
                                                  $.post(
                                                    '../ajax/set_campaign_id.php',
                                                    {
                                                        id: '<?echo $id;?>',
                                                        page: 'search'
                                                    },
                                                    function (response){
                                                        if (response!='1'){
                                                            document.getElementById('show_error').innerHTML = response;
                                                        }
                                                        window.location='campaign_profile.php';
                                                    }
                                              )">go to campaign profile</a>.<br/><br/>