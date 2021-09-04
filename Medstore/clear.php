<?php 
session_start();
$_SESSION['bill'] = array();
$url = "location:".$_GET['url'];
header($url);

 ?>