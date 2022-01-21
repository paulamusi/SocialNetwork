<?php
require 'config/config.php';
if(isset($_SESSION['username'])){
    $userLoggedIn = $_SESSION['username'];
    $user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username = '$userLoggedIn'");
    $user = mysqli_fetch_array($user_details_query);
}
else {
    header("Location: register.php");
}
?>

<html>
<head>
    <title>Social</title>

    <!-- Javascript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="assets/js/bootstrap.js"></script>

        <!-- CSS -->
    <script src="https://kit.fontawesome.com/03ddc398f6.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>
<body>
<!-- Example single danger button -->
<div class="top_bar">
    <div class="logo">
        <a href="index.php">Deepeople</a>
    </div>
    <nav>
        <a href="<?php echo $userLoggedIn; ?>"> <?php echo $user['first_name'] ?></a>
        <a href="#"><i class="fas fa-house-user"></i> Home</a>
        <a href="#"><i class="fas fa-envelope"></i> Messages</a>
        <a href="#"><i class="fas fa-bell"></i></a>
        <a href="#"><i class="fas fa-users"></i></a>
        <a href="#"><i class="fas fa-cog"></i></a>
    </nav>
</div>

<div class="wrapper">

