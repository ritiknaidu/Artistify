<?php
    include('session.php');
    $userid = $_SESSION['id'];
    $post_id =$_GET['id'];

    if(isset($_POST['fav'])){
        $query = mysqli_query($db,"INSERT into favourite(`user-id`,`post-id`) values('$userid','$post_id')");
        header('location:Welcome.php'); 
    }
?>