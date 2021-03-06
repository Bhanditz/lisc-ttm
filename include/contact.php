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
if (! isLoggedIn()) {
    if (function_exists(http_response_code)){
        http_response_code(401);
        include "error.html";
    }
    exit;
}
include "../header.php";

?><html>
<body>
<h2>Contact Us</h2>




<?php
//this code is drawn from the example at: http://www.w3schools.com/php/php_secure_mail.asp
//test test

function spamcheck($field) {
  // Sanitize e-mail address
  $field=filter_var($field, FILTER_SANITIZE_EMAIL);
  // Validate e-mail address
  if(filter_var($field, FILTER_VALIDATE_EMAIL)) {
    return TRUE;
  } else {
    return FALSE;
  }
}
?>

<?php
// display form if user has not clicked submit
if (!isset($_POST["submit"])) {
  ?>
<span class="helptext">Fill out this form:</span>
  <form method="post" action="<?php echo $_SERVER["PHP_SELF"];?>">
 <table class="all_projects">
     <tr><th class="contact">Full Name:</th><td class="contact"> <input type="text" name="subject"></td></tr>
  <tr><th class="contact">Email:</th><td class="contact">  <input type="text" name="email"></td></tr>
  <tr><th class="contact">Message: </th><td class="contact"> <textarea rows="10" cols="40" name="message"></textarea></td></tr>
  <tr><th class="contact" colspan="2"><input type="submit" name="submit" value="Send Message"></th></tr>
 </table>
  </form><p></p>
<p>Or, email us directly at <tt>ttmhelp{AT}opentechstrategies{DOT}com</tt> <span class="helptext">(replacing "{AT}" with an "@"-sign and {DOT} with a ".")</span>.</p>
  <?php 
} else {  // the user has submitted the form
  // Check if the "from" input field is filled out
  if (isset($_POST["email"])) {
    // Check if "from" email address is valid
    $mailcheck = spamcheck($_POST["email"]);
    if ($mailcheck==FALSE) {
      echo "Invalid input.  Please enter a valid email address.";
    } else {
      $from = $_POST["email"]; // sender
      $subject = "LISC TTM Help message submitted by: " .$_POST["subject"];
      $message = $_POST["message"];
      // message lines should not exceed 70 characters (PHP rule), so wrap it
      $message = wordwrap($message, 70);
      // send mail
      mail("ttmhelp@opentechstrategies.com",$subject,$message,"From: $from\n");
      ?><span class="helptext">Thank you for your message.  Someone will respond to you as soon as possible.
          <a href="/index.php">Back to homepage.</a><span>
          <?php
    }
  }
}
?>
</body>
</html>


<!--When the git repository is open, add a line here about submitting issues on GitHub. -->
    
    <?php

include "../footer.php";
?>