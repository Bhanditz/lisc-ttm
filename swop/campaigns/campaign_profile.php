<?php
/* shows associated institutions and events; provides space to add a new event: */

include "../../header.php";
include "../header.php";
include "../classes/campaign.php";
include "../include/datepicker_simple.php";
$campaign = new Campaign();
$campaign->load_with_id($_COOKIE['campaign']);
?>
<script type="text/javascript">
    $(document).ready(function() {
        $('#programs_selector').addClass('selected');
        //$('#add_new_campaign').hide();
        //$('#search_all_campaigns').hide();
        $('#campaign_profile').show();
        $('.attendee_role_edit').hide();
    });
</script>
<div class="content_block">
    <h3>Campaign Profile: <?php echo $campaign->name; ?></h3><hr/><br/>

    <table class="profile_table">
        <tr>
            <!--Add a new event here: -->
            <td class="no_view"><strong><em>Add event:</em></strong><br/>
                <table class="inner_table">
                    <tr><td><strong>Name: </strong></td><td><input type="text" id="new_event" ></td></tr>
                    <tr><td><strong>Date: </strong></td><td><input type="text" id="new_date" class="hasDatepickers" /></td></tr>
                    <tr><td><strong>Subcampaign: </strong></td><td><select id="subcampaign">
                                <option value="0">-------</option>
                                <?php
                                /* list of existing subcampaigns for this campaign: */
                                $get_subcampaigns = "SELECT DISTINCT Subcampaign FROM Campaigns_Events WHERE Subcampaign!='0' AND Subcampaign IS NOT NULL 
        AND Campaign_ID='" . $_COOKIE['campaign'] . "' ORDER BY Subcampaign";
                                include "../include/dbconnopen.php";
                                $subcampaigns = mysqli_query($cnnSWOP, $get_subcampaigns);
                                while ($subcam = mysqli_fetch_row($subcampaigns)) {
                                    ?>
                                    <option><?php echo $subcam[0]; ?></option>
                                    <?php
                                }
                                include "../include/dbconnclose.php";
                                ?>
                            </select></td></tr>
                    <tr><td><span class="helptext">Or, add a new subcampaign: </span></td><td>
                            <!-- Adds this as text, which then shows up in dropdown above (in future). -->
                            <input type="text" id="new_subcampaign"></td></tr>
                    <tr><td><strong>Location: </strong></td><td><select id="location">
                                <option value="0">-------</option>
                                <?php
                                /* same as subcampaigns. */
                                $get_subcampaigns = "SELECT DISTINCT Location FROM Campaigns_Events WHERE Location!='0' AND Location IS NOT NULL  ORDER BY Location";
                                include "../include/dbconnopen.php";
                                $subcampaigns = mysqli_query($cnnSWOP, $get_subcampaigns);
                                while ($subcam = mysqli_fetch_row($subcampaigns)) {
                                    ?>
                                    <option><?php echo $subcam[0]; ?></option>
                                    <?php
                                }
                                include "../include/dbconnclose.php";
                                ?>
                            </select></td></tr>
                    <tr><td><span class="helptext">Or, add a new location: </span></td><td><input type="text" id="new_location"></td></tr>
                    <tr><td colspan="2"><input type="button" value="Add Event" onclick="
                            /* determines whether subcampaign and location are being pulled from select or from text. */
                            if ($('#new_event').val() == '') {
                                $('#new_event').focus();
                                alert('Please enter an event name.');
                                return false;
                            }
                            
                            if ($('#new_date').val() == '') {
                                $('#new_date').focus();
                                alert('Please enter a date.');
                                return false;
                            }
                            
                            var subcampaign_old = $('#subcampaign option:selected').text();
                            var subcampaign_new = document.getElementById('new_subcampaign').value;
                            
                            if (subcampaign_old == '-------' && subcampaign_new != '') {
                                var subcampaign = subcampaign_new;
                            } else if (subcampaign_old != '-------') {
                                var subcampaign = subcampaign_old;
                            } else {
                                var subcampaign = '';
                            }
                            
                            var location_old = $('#location option:selected').text();
                            var location_new = document.getElementById('new_location').value;
                            
                            if (location_old == '-------' && location_new != '') {
                                var location = location_new;
                            } else if (location_old != '-------') {
                                var location = location_old;
                            } else {
                                var location = '';
                            }
                            
                            //alert(location);
                            $.post(
                                    '../ajax/add_event.php',
                                    {
                                        campaign_id: '<?php echo $campaign->campaign_id; ?>',
                                        date: document.getElementById('new_date').value,
                                        event_name: document.getElementById('new_event').value,
                                        subcampaign: subcampaign,
                                        location: location
                                    },
                            function(response) {
                                //alert('response');
                                //document.getElementById('show_ok11').innerHTML += 'Thank you for adding '+document.getElementById('event').value + ' <br>';
                                //document.getElementById('show_ok11').innerHTML = response;
                                window.location = 'campaign_profile.php';
                            }
                            );"><br/><span class="helptext">Dates must be entered in the format YYYY-MM-DD.</span>
                            <div id="show_ok"></div></td></tr>
                </table>
            </td>
            
            <!-- List of associated institutions. -->
            <td><h4>Associated Institutions</h4>
                <table class="inner_table">
                    <tr><th>Institution Name</th></tr>
                    <?php
                    $get_associated_institutions = "SELECT * FROM Campaigns_Institutions
    INNER JOIN Institutions ON Institutions.Institution_ID=Campaigns_Institutions.Institution_ID
    WHERE Campaigns_Institutions.Campaign_ID='" . $campaign->campaign_id . "'";
                    include "../include/dbconnopen.php";
                    $institutions = mysqli_query($cnnSWOP, $get_associated_institutions);
                    while ($institution = mysqli_fetch_array($institutions)) {
                        ?><tr><td class="all_projects"><a href="javascript:;" onclick="$.post(
                                            '../ajax/set_institution_id.php',
                                            {
                                                id: '<?php echo $institution['Institution_ID']; ?>'
                                            },
                                    function(response) {
                                        window.location = '../institutions/inst_profile.php';
                                    })"><?php echo $institution['Institution_Name']; ?></a></td></tr><?php
                        }
                        include "../include/dbconnclose.php";
                        ?>
                </table><br/><br/>
                Add Institution: <select id="choose_inst">
                    <option value="">-----</option>
                    <?php
                    $get_institutions = "SELECT * FROM Institutions ORDER BY Institution_Name";
                    include "../include/dbconnopen.php";
                    $institutions = mysqli_query($cnnSWOP, $get_institutions);
                    while ($institution = mysqli_fetch_array($institutions)) {
                        ?>
                        <option value="<?php echo $institution['Institution_ID']; ?>"><?php echo $institution['Institution_Name']; ?></option>
                        <?php
                    }
                    include "../include/dbconnclose.php";
                    ?>
                </select>
                <input type="button" class="no_view" value="Add Institution" onclick="
                        $.post(
                                '../ajax/link_inst.php',
                                {
                                    type: 'campaign',
                                    campaign: '<?php echo $campaign->campaign_id; ?>',
                                    inst: document.getElementById('choose_inst').value
                                },
                        function(response) {
                            //document.write(response);
                            window.location = 'campaign_profile.php';
                        }
                        )">
            </td>
        </tr>
        <tr>
            <td colspan="2">

                <!-- The meat of it is here.  Campaigns are just associated events.  This is the list of events. -->

                <h4>Associated Events</h4>
                <table class="inner_table" style="border: 2px solid #696969;">
                    <tr style="font-size:.9em;"><th> Date</th><th>Name</th><th>Subcampaign</th><th>Location</th><!--<th>Attendees</th>--></tr>
                    <?php
                    $get_associated_events = "SELECT * FROM Campaigns_Events WHERE Campaign_ID='" . $campaign->campaign_id . "' ORDER BY Event_Date DESC";
                    include "../include/dbconnopen.php";
                    $events = mysqli_query($cnnSWOP, $get_associated_events);
                    while ($event = mysqli_fetch_array($events)) {
                        ?><tr> <td class="all_projects" width="15%">
                                            <?php
                                            echo $event['Event_Date'];
                                            //echo " (" . $event['Activity_Type'] . ")";
                                            ?></td>
                            <td class="all_projects"><a href="event.php?event=<?php echo $event['Campaign_Event_ID']; ?>"><?php echo $event['Event_Name']; ?></a></td>
                            <td class="all_projects"><?php echo $event['Subcampaign']; ?></td>
                            <td class="all_projects"><?php echo $event['Location']; ?></td>

                        </tr><?php
                    }
                    include "../include/dbconnclose.php";
                    ?>
                </table>
            </td>
        </tr>
    </table>
</div>
<br/><br/>
<?php include "../../footer.php"; ?>