<?php
    include('session.php');
    $userid = $_SESSION['id'];
    $post_id =$_GET['id'];

    if(isset($_POST['review'])){
        $query = "SELECT * FROM users WHERE id = '$userid'" or die(mysql_error());
        $results = mysqli_query($db, $query);
        $row = mysqli_fetch_array($results);
        $username = $row['username'];
        $review = $_POST['comment'];
        $query = mysqli_query($db,"INSERT into review(`post-id`,`user`,`comment`) values('$post_id','$username','$review')");
        header("location:view_post.php?id=".$post_id); 
    }
?>