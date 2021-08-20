<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css"
        href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="CSS/Nav_bar.css">
    <link rel="stylesheet" href="CSS/Body.css">
    <link rel="stylesheet" href="CSS/Cards.css">
    <link rel="stylesheet" href="CSS/Footer.css">
    <link rel="stylesheet" href="CSS/Intro.css">
    <title>Artstify</title>
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
                <li class="nav-item"><a class="nav-link" href="#body-2">About</a></li>
                <li class="nav-item"><a class="nav-link" href="#body-3">Contact Us</a></li>
            </ul>
            <a href="Signin.php" class="login">Login</a>
            <a href="Signup.php" class="register">Create an account</a>
        </div>
    </nav>

    <!-- The main body of the website -->
    <div id="body-1">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="main-text">
                        <h2><span>Hello! </span><br> Welcome to Aritistify</h2>
                        <p>One platform.<br>Many Opportunities.</p>
                        <a href="#body-2" class="site-btn">Get Started</a>
                    </div>
                </div>
                <div class="col-lg-6">
                </div>
            </div>
        </div>
    </div>

    <!-- Intro section of the website -->
    <div id="body-2" class="intro">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="intro-title">
                        <h2>Showcase your potential to the world!</h2>
                    </div>
                </div>
                <div class="col-lg-6">
                    <p>
                        With Artistify your original content gains a much larger audience and lets you showcase your
                        talent at a bigger stage. Be it Photography, Music, Art, or Writing stories, Artistify will give
                        you the audience that appreciates your content and help you build a fanbase of your own.
                    </p>
                </div>
            </div>
        </div>
    </div>

    <!-- Cards to display options -->
    <div id="body-3" class="card-container">
        <div class="container">
            <div class="row margin-fix">
                <div class="col-sm-3">
                    <div class="card photo">
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card music">
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card story">
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card art">
                    </div>
                </div>
            </div>
            <div id="card-names" class="row margin-fix">
                <div class="col-sm-3">
                    <h5>Photography</h5>
                </div>
                <div class="col-sm-3">
                    <h5>Music</h5>
                </div>
                <div class="col-sm-3">
                    <h5>Writing</h5>
                </div>
                <div class="col-sm-3">
                    <h5>Art</h5>
                </div>
            </div>
        </div>
    </div>
    <footer id="body-4" class="footer">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-7 order-lg-2">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="footer-text">
                                <h2>About us</h2>
                                <ul>
                                    <li><a href="">Our Story</a></li>
                                    <li><a href="">History</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="footer-text">
                                <h2>Portals</h2>
                                <ul>
                                    <li><a href="">Music</a></li>
                                    <li><a href="">Photography</a></li>
                                    <li><a href="">Art</a></li>
                                    <li><a href="">Stories</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="footer-text">
                                <h2>In The Media</h2>
                                <ul>
                                    <li><a href="">Newsletter</a></li>
                                    <li><a href="">Contact Us</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="textcenter col-xl-6 col-lg-5 order-lg-1">
                    <img id="logo" src="logo.png" alt="Aritistify">
                    <div class="copyright">
                        All rights reserved.
                    </div>
                    <div class="social-media">
                        <a href=""><i class="fa fa-instagram"></i></a>
                        <a href=""><i class="fa fa-pinterest"></i></a>
                        <a href=""><i class="fa fa-facebook"></i></a>
                        <a href=""><i class="fa fa-twitter"></i></a>
                        <a href=""><i class="fa fa-youtube"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </footer>


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