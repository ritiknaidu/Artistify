<?php 
    include('server.php'); 
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css"
        href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="CSS/Nav_bar.css">
    <link rel="stylesheet" href="CSS/Signinbody.css">
    <title>Signin For Artistify</title>
</head>

<body>
    <!-- NAVIGATION BAR -->
    <nav class="nav-section navbar navbar-expand-lg fixed-top">
        <a class="site-logo navbar-brand" href="index.php"><img src="logo.png" alt="site logo"></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="bars"><i class="fa fa-bars"></i></span>
        </button>
        <div class="nav-right collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="main-menu navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="index.php">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#">About</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Gallery</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Contact Us</a></li>
            </ul>
            <a href="Signin.php" class="login">Login</a>
            <a href="Signup.php" class="register">Create an account</a>
        </div>
    </nav>
   
    <!-- The main body of the website -->
    <div id="login-body">
    <div class="container">
        <div class="row">
            <div class="ml-auto col-lg-4 col-md-6 col-sm-12">
                    <form class="login-content" action="Signin.php" method="post">
                        <?php include('errors.php'); ?>
                        <img src="avatar.svg">
                        <h2 class="title">Welcome</h2>
                        <div class="input-div one">
                            <div class="icon">
                                <i class="fa fa-user"></i>
                            </div>
                            <div class="div">
                                <input type="text" class="input" name="username" placeholder="Username">
                            </div>
                        </div>
                        <div class="input-div pass">
                            <div class="icon">
                                <i class="fa fa-lock"></i>
                            </div>
                            <div class="div">
                                <input type="password" class="input" name="password" placeholder="Password">
                            </div>
                        </div>
                        <a href="Signup.php">New here? Sign Up.</a>
                        <button type="submit" name="signin" class="btn login-btn">Sign In</button>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
</body>

</html>