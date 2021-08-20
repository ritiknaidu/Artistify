<?php 
  session_start(); 

  if (!isset($_SESSION['id'])) {
  	header('location: Signin.php');
  }
  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['id']);
  	header("location: Signin.php");
  }
  $db = mysqli_connect('localhost', 'root', '','Artistify') or die ("Connection to database could not be established.");
?>