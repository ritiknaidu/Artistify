<?php
    include('session.php');
    $userid = $_SESSION['id'];
    $post_id =$_GET['id'];

    if(isset($_POST['share'])){
        $username = $_POST['user2'];
        $query = "SELECT * FROM users WHERE username = '$username'" or die(mysql_error());
        $results = mysqli_query($db, $query);
        $row = mysqli_fetch_array($results);
        $user2 = $row['id'];
        $query = mysqli_query($db,"INSERT into notification(`user1`,`user2`,`post-id`) values('$userid','$user2','$post_id')");
        header('location:Welcome.php'); 
    }
?>