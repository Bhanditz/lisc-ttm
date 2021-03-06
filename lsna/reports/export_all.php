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

user_enforce_has_access($LSNA_id);

include "../../header.php";
include "../header.php";
//include ($_SERVER['DOCUMENT_ROOT']."/include/block_group_finder.php");
?>
<!--Export everything, with or without identifiers.  This will change once Taryn
gets me her new requirements,
so I'm not going to put too many comments in now.  It's fairly self-explanatory.
Each table (sometimes
joined) gets put into a file, which can be downloaded.
-->
<script type="text/javascript">
	$(document).ready(function() {
		$('#reports_selector').addClass('selected');
	});
</script>

<h3>Export All Database Contents</h3><hr/><br/>

<table class="all_projects">
<tr><th width="50%"></th><th>De-identified (if applicable)</th></tr>
<tr><td class="all_projects"><br/>
<strong>All Institutions</strong><br/>
<a href="/include/generalized_download_script.php?download_name=institutions_lsna">
    Download the CSV file of all institutions.</a><br/><br/></td>
<td class="all_projects"><br/>
<strong>De-identified Institutions</strong><br/>
<a href="/include/generalized_download_script.php?download_name=institutions_lsna_deid">
    Download the CSV file of all institutions.</a><br/><br/>
</td></tr>

<tr><td class="all_projects"><br/>
<strong>All Parent Mentor Attendance</strong> <br/>
<a href="/include/generalized_download_script.php?download_name=pm_attendance_lsna">
    Download the CSV file of all parent mentor attendance.</a> 
   <span class="helptext">  Does not currently include personal
    information on individual parent mentors.</span><br/><br/>
    </td><td class="all_projects">---------</td></tr>
<tr><td class="all_projects"><br/>
<strong>All Parent Mentor Children Information</strong> <br/>
<a href="/include/generalized_download_script.php?download_name=pm_children_lsna">
    Download the CSV file of all parent mentor children.</a><br/>
    <span class="helptext">  Includes grades and disciplinary records.</span><br>
<br>
    </td><td class="all_projects"><br/>
<strong>De-identified Parent Mentor Children Information</strong><br/>
<a href="/include/generalized_download_script.php?download_name=pm_children_lsna_deid">
    Download the CSV file of Parent Mentor's children.</a><br/>
    <span class="helptext">  Includes grades and disciplinary records.</span><br>
<br> </td></tr>

<tr><td class="all_projects"><br/><strong>All Teacher Pre-Surveys </strong><br/>
<a href="/include/generalized_download_script.php?download_name=lsna_teacher_pre_surveys">
    Download the CSV file of all teacher pre-surveys.</a><br><br></td>
<td class="all_projects"><br/><strong>De-identified Teacher Pre-Surveys</strong><br/>
<a href="/include/generalized_download_script.php?download_name=lsna_teacher_pre_surveys_deid">
    Download the CSV file of teacher pre-surveys.</a> <br><br></td></tr>

<tr><td class="all_projects"><br/>
<strong>All Teacher Post-Surveys </strong><br/>
<a href="/include/generalized_download_script.php?download_name=lsna_teacher_post_surveys">
    Download the CSV file of all teacher post-surveys.</a><br><br></td>
<td class="all_projects"><strong>De-identified Teacher Post-Surveys</strong><br/>
<a href="/include/generalized_download_script.php?download_name=lsna_teacher_post_surveys_deid">
    Download the CSV file of teacher post-surveys.</a><br></td></tr>

<tr><td class="all_projects"><br/><strong>All Parent Mentor Surveys </strong><br/>
<a href="/include/generalized_download_script.php?download_name=lsna_parent_mentor_surveys">
    Download the CSV file of all parent mentor surveys.</a><br><br/></td>
<td class="all_projects">
<br/><strong>De-identified Parent Mentor Surveys</strong><br/>
<a href="/include/generalized_download_script.php?download_name=lsna_parent_mentor_surveys_deid">
    Download the CSV file of parent mentor surveys.</a><br><br></td></tr>

<tr><td class="all_projects"><br/><strong>Parent Mentors by year</strong><br/>
<a href="/include/generalized_download_script.php?download_name=lsna_parent_mentor_years">
    Download the CSV file of parent mentors by year and school.</a><br><br/></td>
<td class="all_projects"><br/><strong>De-identified Parent Mentors by year</strong>
<br/>
<a href="/include/generalized_download_script.php?download_name=lsna_parent_mentor_years_deid">
    Download the CSV file of parent mentors by year and school.</a><br><br/></td>
</tr>

<tr><td class="all_projects"><br/><strong>All Participants</strong><br/>
<a href="/include/generalized_download_script.php?download_name=lsna_participants">
    Download the CSV file of all participants.</a><br><br/></td>
<td class="all_projects">
<br/><strong>De-identified Participant Information</strong><br/>
<a href="/include/generalized_download_script.php?download_name=lsna_participants_deid">
    Download the CSV file of participants.</a><br><br></td></tr>

<tr><td class="all_projects"><br/><strong>All Programs and Campaigns</strong><br/>
<a href="/include/generalized_download_script.php?download_name=lsna_all_programs_campaigns">
    Download the CSV file of all programs and campaigns.</a><br><br></td>
<td class="all_projects">---------</td></tr>

<tr><td class="all_projects"><br/>
<strong>All Satisfaction Surveys (3rd grade and younger)</strong><br/>
<a href="/include/generalized_download_script.php?download_name=lsna_young_satisfaction_surveys">
    Download the CSV file of all satisfaction surveys (3rd grade and younger).
<a><br><br/></td>
<td class="all_projects"><br/><strong>
    De-identified Satisfaction Surveys (3rd grade and younger)</strong><br/>
<a href="/include/generalized_download_script.php?download_name=lsna_young_satisfaction_surveys_deid">
    Download the CSV file of satisfaction surveys (3rd grade and younger).</a><br><br/>
</td></tr>

<tr><td class="all_projects"><br/><strong>
    All Satisfaction Surveys (4th grade and older) </strong><br/>
<a href="/include/generalized_download_script.php?download_name=lsna_older_satisfaction_surveys">
    Download the CSV file of all satisfaction surveys (4th grade and older).</a><br><br/></td>
<td class="all_projects"><br/><strong>De-identified Satisfaction Surveys (4th grade and older)</strong><br/>
<a href="/include/generalized_download_script.php?download_name=lsna_older_satisfaction_surveys_deid">
    Download the CSV file of satisfaction surveys (4th grade and older).</a><br><br/></td></tr>

<tr><tr><td class="all_projects"><br/>
<strong>All Program/Campaign Attendance</strong>
<br/><a href="/include/generalized_download_script.php?download_name=lsna_campaign_attendance">
    Download the CSV file of all program and campaign attendance.</a><br><br/></td>
<td class="all_projects"><br/><strong>De-identified Program/Campaign Attendance</strong><br/>
<a href="/include/generalized_download_script.php?download_name=lsna_campaign_attendance_deid">
    Download the CSV file of program and campaign attendance.</a><br><br/></td></tr>

<tr><td class="all_projects"><br/><strong>All Campaign Events</strong><br/>
<a href="/include/generalized_download_script.php?download_name=lsna_campaign_events">
    Download the CSV file of all campaign events.</a><br><br/></td>
<td class="all_projects">---------</td></tr>

<tr><td class="all_projects"><br/><strong>All School Records</strong><br/>
<a href="/include/generalized_download_script.php?download_name=lsna_school_records">
    Download the CSV file of all school records.</a><br><br/></td>
<td class="all_projects"><br/><strong>De-identified School Records</strong><br/>
<a href="/include/generalized_download_script.php?download_name=lsna_school_records_deid">
    Download the CSV file of school records.</a><br><br/></td></tr>

<tr><td class="all_projects"><br/><strong>All Issue Event Attendance</strong><br/>
<a href="/include/generalized_download_script.php?download_name=lsna_event_attendance">
    Download the CSV file of all specific issue event attendees.</a><br><br/></td>
<td class="all_projects"><br/><strong>De-identified Issue Event Attendance</strong><br/>
<a href="/include/generalized_download_script.php?download_name=lsna_event_attendance_deid">
    Download the CSV file of all specific issue event attendees (deidentified).</a><br><br/></td></tr>

</table>
<br/><br/>
<?include "../../footer.php";?>
