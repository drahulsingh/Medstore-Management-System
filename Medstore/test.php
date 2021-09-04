<?php
session_start();

if(!isset($_SESSION['userId']))
{
  header('location:login.php');
}
 ?>
<?php require "assets/function.php" ?>
<?php require 'assets/db.php';?>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<?php echo $base_path ?>js/datatables.net-bs/css/dataTables.bootstrap.min.css">

  <title><?php echo siteTitle(); ?></title>
  <link rel="stylesheet" type="text/css" href="<?php echo $base_path ?>css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<?php echo $base_path ?>font-awesome/css/font-awesome.min.css">
<script src='<?php echo $base_path ?>js/jquery.js'></script>
<script src='<?php echo $base_path ?>js/bootstrap.min.js'></script>
  <style type="text/css">
  <?php include '<?php echo $base_path ?>css/customStyle.css'; ?>

  </style>

</head>

<body>
	<button class="btn btn-sm btn-blue">helo boss</button>
</body>

<?php 

print_r($_SERVER);

 ?>