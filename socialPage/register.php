<?php
require 'config/config.php';
require 'includes/form_handlers/register_handler.php'
?>

<html>
    <head>
        <title>Welcome to Deepeople</title>
    </head>
    <body>

        <form action="register.php" method="POST">
            <input type="email" name="log_email" placeholder="Email">
            <input type="password" name="log_password" placeholder="Password">
            <input type="submit" name="login_button" value="Login">
        </form> 

        <form action="register.php" method="POST">

      
            <input type="text" name="reg_fname" placeholder="First Name" value="<?php 
            if(isset($_SESSION['reg_fname'])){
             echo $_SESSION['reg_fname'];
            }
             ?>" required>
            <br>

            <?php if (in_array("Your first name must be between 2 and 25 characters<br>", $error_array)) 
            echo "Your first name must be between 2 and 25 characters<br>"; ?>

            <input type="text" name="reg_lname" placeholder="Last Name" value="<?php 
            if(isset($_SESSION['reg_lname'])){
             echo $_SESSION['reg_lname'];
            }
             ?>" required>
            <br>

            <?php if(in_array("Your last name must be between 2 and 25 characters<br>", $error_array)) 
            echo "Your last name must be between 2 and 25 characters<br>";?>

           
            <input type="email" name="reg_email" placeholder="Email" value="<?php 
            if(isset($_SESSION['reg_email'])){
             echo $_SESSION['reg_email'];
            }
             ?>"required>
            <br>

            <input type="email" name="reg_email2" placeholder="Confirm Email" value="<?php 
            if(isset($_SESSION['reg_email2'])){
             echo $_SESSION['reg_email2'];
            }
             ?>"required>
            <br>
            <?php if(in_array("E-mail already in use.<br>", $error_array)) echo "E-mail already in use.<br>";
            else if(in_array("Invalid e-mail format.<br>", $error_array)) echo "Invalid e-mail format.<br>";
            else if(in_array("E-mails don't match.<br>", $error_array)) echo "E-mails don't match.<br>"; ?>

            <input type="password" name="reg_password" placeholder="Password" required>
            <br>
            <input type="password" name="reg_password2" placeholder="Confirm Password" required>
            <br>

            <?php if (in_array("Your password do not match<br>", $error_array)) echo "Your password do not match<br>";
            else if (in_array("Your password can only have english character or numbers<br>", $error_array)) echo "Your password can only have english character or numbers<br>";
            else if (in_array("Your password must be betwen 5 and 30 characters<br>", $error_array)) echo "Your password must be betwen 5 and 30 characters<br>";?>

            <input type="submit" name="register_button" value="Register">
            <br>
            <?php if (in_array("<span style='color:#14C800;'>You are all set! Goahead and login!</span><br>", 
            $error_array)) echo "<span style='color:#14C800;'>You are all set! Goahead and login!</span><br>";?>
        </form>
    </body>
</html> 

