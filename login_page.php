<div id="login_here" align="center">
    <!--
    Fairly routine login page.
    -->
    <form name='login_form' id='login_form' action="/" method="post">
        <table>
            <tr>
                <td colspan="2" align="center">
                    <h3>TTM Login</h3>
                </td>
            </tr>
            <tr>
                <td>
                    Username:
                </td>
                <td>
                    <input type="text" name="username" id="username" maxlength="50" />
                </td>
            </tr>
            <tr>
                <td>
                    Password:
                </td>
                <td>
                    <input type="password" name="password" id="password" maxlength="50" />
                </td>
                <td>
                    <!--
                    Link to page where users can reset their own passwords.
                    -->
                    <a href="/reset_password.php">Change Password</a>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <div id="login_error" style="color: #ff0000;"></div>
                    <input type="submit" value="Log In" id="login_submit_button"/>
                </td>
            </tr>
        </table>
    </form>
</div>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">

    (function($){

        $(document).ready(function() {
            $('#username').focus();

            $('#login_form').on('submit',function(e){
                e.preventDefault();
                $('#ajax_loader').fadeIn('slow');
                if (log_in_form_check()) {
                    $.post(
                        '/ajax/login_submit.php',
                        {
                            username: $('#username').val(),
                            password: $('#password').val()
                        },
                        function(response) {
                            if (response != '0') {
                                window.location.href = '/';
                            } else {
                                $('#ajax_loader').fadeOut('slow');
                                $('#password').val('');
                                $('#login_error').html('Invalid username / password');
                                $('#login_error').slideDown('slow').delay(2000).slideUp('slow');
                                $('#login_submit_button').fadeIn('slow');
                            }
                        }
                    );
                }
            });
        });

        //login script
        function log_in_form_check() {
            $('#login_submit_button').fadeOut('slow');
            if ($('#username').val().length < 1) {
                $('#login_error').html('Please enter a valid username');
                $('#login_error').slideDown('slow').delay(2000).slideUp('slow');
                $('#username').focus();
            } else if ($('#password').val().length < 1) {
                $('#login_error').html('Please enter a valid password');
                $('#login_error').slideDown('slow').delay(2000).slideUp('slow');
                $('#password').focus();
            } else {
                return true;
            }
            $('#ajax_loader').hide();
            $('#login_submit_button').fadeIn('slow');
            return false;
        }

    })(jQuery)

</script>
