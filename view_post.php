<?php
    include('session.php');
    $userid = $_SESSION['id'];
    $query = "SELECT * FROM users WHERE id = '$userid'" or die(mysql_error());
    $results = mysqli_query($db, $query);
    $row = mysqli_fetch_array($results);
    $username = $row['username'];
    $post_id =$_GET['id'];
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
    <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/Viewpost.css">
    <link href="https://fonts.googleapis.com/css2?family=Lily+Script+One&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Alegreya+Sans+SC:wght@700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">

    <title>View Post | Artistify</title>
</head>

<body>
    <nav class="nav-section navbar navbar-expand-lg fixed-top">
        <a class="site-logo navbar-brand" href="welcome.php"><img src="logo.png" alt="site logo"></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="bars"><i class="fa fa-bars"></i></span>
        </button>
        <div class="nav-right collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="main-menu navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="Welcome.php">Home</a></li>
                <li class="nav-item">
                    <div class="btn-group">
                        <a class="btn upload" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Upload
                        </a>
                        <div class="dropdown-menu">
                            <a class="btn dropdown-item" data-toggle="modal" data-target="#picModal">
                                Photograph
                            </a>
                            <a class="btn dropdown-item" data-toggle="modal" data-target="#storyModal">
                                Story
                            </a>
                            <a class="btn dropdown-item" data-toggle="modal" data-target="#poemModal">
                                Poem
                            </a>
                            <a class="btn dropdown-item" data-toggle="modal" data-target="#musicModal">
                                Music
                            </a>
                        </div>
                    </div>
                </li>
                <li class="nav-item"><a class="nav-link" href="view_fav.php">Favourites</a></li>
                <li class="nav-item">
                    <div class="btn-group notification">
                        <a class="btn btn-notify" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false">Notifications</a>
                        <div class="dropdown-menu">
                            <?php 
                                $query = mysqli_query($db,"SELECT * from notification where `user2`='$userid'");
                                while($row = mysqli_fetch_array($query)){
                                    $sent_id = $row['user1'];
                                    $postid = $row['post-id'];

                                    $query1 = mysqli_query($db,"SELECT username from users where `id`='$sent_id'");
                                    $query2 = mysqli_query($db,"SELECT * from posts where `post-id`='$postid'");
                                    $row1 = mysqli_fetch_array($query1);
                                    $row2 = mysqli_fetch_array($query2);
                                    $sent_by = $row1['username'];
                                    $post_by_id = $row2['user-id'];
                                    $title = $row2['title'];

                                    $query3 = mysqli_query($db,"SELECT username from users where `id`='$post_by_id'");
                                    $row3 = mysqli_fetch_array($query3);
                                    $post_by = $row3['username'];
                            ?>

                            <a class="btn not-item" href="view_post.php<?php echo '?id='.$postid; ?>">
                                <div class="container not-content">
                                    @<?php echo $sent_by ?> shared a post by @<?php echo $post_by ?>
                                    <p>Title : <?php echo $title ?></p>
                                </div>
                            </a>
                            <?php } ?>
                        </div>
                    </div>
                </li>
                <li class="nav-item search">
                    <!-- a class="nav-link" href="#"> -->
                    <form action="search.php" method="post">
                        <input type="text" name="query" placeholder="Search">
                        <button type="submit" name="search"><i class="fa fa-search"></i></button>
                    </form>
                </li>
            </ul>
            <div class="btn-group">
                <a class="btn dropdown-toggle profile" data-toggle="dropdown" aria-haspopup="true"
                    aria-expanded="false"><i class="fas fa-user-circle"></i> Profile</a>
                <div class="dropdown-menu">
                    <div class="profile-pic">
                    <?php 
                    $query = mysqli_query($db,"SELECT * from users where `id` = $userid") or die(mysqli_error($db));
                    $row = mysqli_fetch_array($query);
                    if($row['pic']==""){ ?>
                        <img src="avatar.svg" alt="Display Picture">
                    <?php } else { ?>
                        <img src="<?php echo $img_src ?>" alt="Display Picture">
                    <?php } ?>
                    </div>
                    <div class="username"><?php echo $username?></div>
                    <div class="view-link"><a class="dropdown-item" href="profile.php">View Profile</a></div>
                </div>
            </div>
            <span>|</span>
            <a href="logout.php" class="logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-lg-1 col-md-1 col-sm-1"></div>
            <div class="col-lg-10 col-md-10 col-sm-10">
                <!-- Getting the posts from the database -->
                <?php
                    $query = mysqli_query($db,"SELECT * from posts LEFT JOIN users on users.`id` = posts.`user-id` where `post-id` = $post_id") or die(mysqli_error($db));
                    $row = mysqli_fetch_array($query);
                    $post_by = $row['username'];
                    $post_id = $row['post-id'];
                    $title = $row['title'];
                    $desc = $row['description'];
                    $type = $row['type'];
                    $img_src = "upload/".$row['img'];
                    $content = $row['content'];
                    $audio_src = "upload/".$row['audio'];
                ?>

                <?php if($type == 1){ ?>
                <div class="posts photo">
                    <div class="post-by">
                        @<?php echo $post_by; ?>
                    </div>
                    <div class="post-body">
                        <p class="post-title"><?php echo $title; ?></p>
                        <p class="post-headings"><span>Description : </span><?php echo $desc; ?></p>
                        <img src="<?php echo $img_src ?>" alt="">
                    </div>
                    <div class="post-footer">
                        <button type="button" class="btn review" data-toggle="modal" data-target="#review">Add a
                            Review</button>
                        <button type="button" class="btn share" data-toggle="modal" data-target="#share"><i
                                class="fa fa-share"></i> Share</button>
                        <form action="favourite.php<?php echo '?id='.$post_id; ?>" method="post">
                            <input type="submit" name="fav" value="Add to Favourites" class="btn fav">
                        </form>
                    </div>
                </div>
                <?php } ?>

                <?php if($type == 2){ ?>
                <div class="posts story">
                    <div class="post-by">
                        @<?php echo $post_by; ?>
                    </div>
                    <div class="post-body">
                        <p class="post-title"><?php echo $title; ?></p>
                        <p class="post-content"><?php echo $content; ?></p>
                    </div>
                    <div class="post-footer">
                        <button type="button" class="btn review" data-toggle="modal" data-target="#review">Add a
                            Review</button>
                        <button type="button" class="btn share" data-toggle="modal" data-target="#share"><i
                                class="fa fa-share"></i> Share</button>
                        <form action="favourite.php<?php echo '?id='.$post_id; ?>" method="post">
                            <input type="submit" name="fav" value="Add to Favourites" class="btn fav">
                        </form>
                    </div>
                </div>
                <?php } ?>

                <?php if($type == 3){ ?>
                <div class="posts poem">
                    <div class="post-by">
                        @<?php echo $post_by; ?>
                    </div>
                    <div class="post-body">
                        <p class="post-title"><?php echo $title; ?></p>
                        <p class="post-content"><?php echo $content; ?></p>
                    </div>
                    <div class="post-footer">
                        <button type="button" class="btn review" data-toggle="modal" data-target="#review">Add a
                            Review</button>
                        <button type="button" class="btn share" data-toggle="modal" data-target="#share"><i
                                class="fa fa-share"></i> Share</button>
                        <form action="favourite.php<?php echo '?id='.$post_id; ?>" method="post">
                            <input type="submit" name="fav" value="Add to Favourites" class="btn fav">
                        </form>
                    </div>
                </div>
                <?php } ?>

                <?php if($type == 4){ ?>
                <div class="posts song">
                    <div class="post-by">
                        @<?php echo $post_by; ?>
                        <span>posted a song</span>
                    </div>
                    <div class="post-body">
                        <p class="post-title"><?php echo $title; ?></p>
                        <p class="post-headings"><span>Description : </span><?php echo $desc; ?></p>
                        <audio controls>
                            <source src="<?php echo $audio_src ?>">
                            Your browser does not support the audio element.
                        </audio>
                    </div>
                    <div class="post-footer">
                        <button type="button" class="btn review" data-toggle="modal" data-target="#review">Add a
                            Review</button>
                        <button type="button" class="btn share" data-toggle="modal" data-target="#share"><i
                                class="fa fa-share"></i> Share</button>
                        <form action="favourite.php<?php echo '?id='.$post_id; ?>" method="post">
                            <input type="submit" name="fav" value="Add to Favourites" class="btn fav">
                        </form>
                    </div>
                </div>
                <?php } ?>
            </div>
            <div class="col-lg-1 col-md-1 col-sm-1"></div>
        </div>
        <div class="comments">
            <?php
                $query = mysqli_query($db,"SELECT * from review where `post-id` = $post_id") or die(mysqli_error($db));
                while($row = mysqli_fetch_array($query)){
                    $reviewer = $row['user'];
                    $comment = $row['comment'];
            ?>
            <div class="row">
                <div class="col-lg-1 col-md-1 col-sm-1"></div>
                <div class="comment-tab col-lg-10 col-md-10 col-sm-10">
                    <!-- Getting the reviews from the database -->
                    <div class="user"><?php echo $reviewer ?></div>
                    <div class="comment"><?php echo $comment ?></div>
                </div>
                <div class="col-lg-1 col-md-1 col-sm-1"></div>
            </div>
            <?php
                }
            ?>
        </div>



        <div class="share-modal">
            <div class="modal fade" id="review" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Write a review</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="review.php<?php echo '?id='.$post_id; ?>" method="post">
                            <div class="modal-body">
                                <label for="title">Share your thoughts on the post : </label>
                                <textarea placeholder="Start Writing Here....." name="comment" rows="15"
                                    id="content"></textarea>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <input type='submit' class="btn btn-up" value='Add' name='review'>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="share-modal">
            <div class="modal fade" id="share" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Share Post</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="notification.php<?php echo '?id='.$post_id; ?>" method="post">
                            <div class="modal-body">
                                <label for="title">Share To : </label>
                                <input type="text" name='user2'><br>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <input type='submit' class="btn btn-up" value='Share' name='share'>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Bodies-->
        <div class="modal fade" id="picModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Share your click</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="post.php" method="post" enctype='multipart/form-data'>
                        <div class="modal-body">
                            <label for="title">Title : </label>
                            <input type="text" name='title'><br>
                            <label for="desc">Description : </label>
                            <input type="text" name='desc'><br>
                            <input type='file' name='file' id='filec'>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <input type='submit' class="btn btn-up" value='Save' name='up_pic'>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="modal fade" id="storyModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Write a Story</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="post.php" method="post" enctype='multipart/form-data'>
                        <div class="modal-body">
                            <label for="title">Title : </label>
                            <input type="text" name='title'><br>
                            <label for="desc">Description : </label>
                            <input type="text" name='desc'><br>
                            <textarea placeholder="Start Writing Here....." name="content" rows="15"
                                id="content"></textarea>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <input type='submit' class="btn btn-up" value='Save' name='up_story'>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="modal fade" id="poemModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Showcase your Poetry</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="post.php" method="post" enctype='multipart/form-data'>
                        <div class="modal-body">
                            <label for="title">Title : </label>
                            <input type="text" name='title'><br>
                            <label for="desc">Description : </label>
                            <input type="text" name='desc'><br>
                            <textarea placeholder="Start Writing Here....." name="content" rows="13"
                                id="content"></textarea>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <input type='submit' class="btn btn-up" value='Save' name='up_poem'>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="modal fade" id="musicModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Share your music</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="post.php" method="post" enctype='multipart/form-data'>
                        <div class="modal-body">
                            <label for="title">Title : </label>
                            <input type="text" name='title'><br>
                            <label for="desc">Description : </label>
                            <input type="text" name='desc'><br>
                            <input type='file' name='file' id='files'>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <input type='submit' class="btn btn-up" value='Save' name='up_song'>
                        </div>
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