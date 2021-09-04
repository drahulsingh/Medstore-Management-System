<?php 
session_start();
include 'assets/bill.php';
include 'assets/db.php';
if (isset($_REQUEST['q'])) 
{
	if ($_REQUEST['q'] == 'addtobill') 
	{
		$id = $_REQUEST['id'];
		$array = $con->query("select * from inventeries where id = '$id'");
    	$row = $array->fetch_assoc();
		$name = $row['name'];
		$price = $row['price'];
		$qty = '1';
		$item = array(
			'id' => $id,
			'name' => $name,
			'price' => $price,
			'qty' => $qty
		);

		array_push($_SESSION['bill'],$item);
	}
}
if (isset($_GET['remove'])) 
{
	$id = $_GET['remove'];
    foreach ($_SESSION['bill'] as $key => $value) 
    {
      if($_SESSION['bill'][$key]['id'] == $id){
      	unset($_SESSION['bill'][$key]);
      	break;
      } 
    }
    header("location:billing.php");
}
echo $_SESSION['bill'][2]['id'];
echo "<pre>";
print_r($_SESSION['bill']);
 ?>