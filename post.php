<?php
include('session.php');
$userid = $_SESSION['id'];
$query = "SELECT * FROM users WHERE id = '$userid'" or die(mysql_error());
$results = mysqli_query($db, $query);
$row = mysqli_fetch_array($results);
$username = $row['username'];
?>

<?php
if(isset($_POST['up_pic'])){
  $title = $_POST['title'];
  $desc = $_POST['desc'];
  $name = $_FILES['file']['name'];
  $target_dir = "upload/";
  $target_file = $target_dir.basename($_FILES["file"]["name"]);

  $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
  $extensions_arr = array("jpg","jpeg","png","gif");

  if(in_array($imageFileType,$extensions_arr)){
    $query = "insert into posts(`user-id`,`title`,`description`,`type`,`img`) values('$userid','$title','$desc',1,'".$name."')";
    $result = mysqli_query($db,$query);
    if($result){
      move_uploaded_file($_FILES['file']['tmp_name'],$target_dir.$name);
      header('location:Welcome.php');
    }
  }
}
?>

<?php
  if(isset($_POST['up_story'])){
    $title = $_POST['title'];
    $desc = $_POST['desc'];
    $content = $_POST['content'];
    $query = "insert into posts(`user-id`,`title`,`description`,`type`,`content`) values('$userid','$title','$desc',2,'$content')";
    $result = mysqli_query($db,$query);
    if($result){
      header('location:Welcome.php');
    }
  }
?>

<?php
  if(isset($_POST['up_poem'])){
    $title = $_POST['title'];
    $desc = $_POST['desc'];
    $content = $_POST['content'];
    $query = "insert into posts(`user-id`,`title`,`description`,`type`,`content`) values('$userid','$title','$desc',3,'$content')";
    $result = mysqli_query($db,$query);
    if($result){
      header('location:Welcome.php');
    }
  }
?>

<?php
if(isset($_POST['up_song'])){
  $title = $_POST['title'];
  $desc = $_POST['desc'];
  $name = $_FILES['file']['name'];
  $target_dir = "upload/";
  $target_file = $target_dir.basename($_FILES["file"]["name"]);

  $audioFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
  $extensions_arr = array("mpeg","mpeg3","x-mpeg3","mp3","x-wav","wav");

  if(in_array($audioFileType,$extensions_arr)){
    $query = "insert into posts(`user-id`,`title`,`description`,`type`,`audio`) values('$userid','$title','$desc',4,'".$name."')";
    $result = mysqli_query($db,$query);
    if($result){
      move_uploaded_file($_FILES['file']['tmp_name'],$target_dir.$name);
      header('location:Welcome.php');
    }
  }
}
?>