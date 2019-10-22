<?php
	include("config/database.php");
	extract($_POST);
	$rs=mysqli_query($conn,"select * from mst_user where login='$lid'");
	if (mysqli_num_rows($rs)>0)
	{
		header('Location: register.php?stat=1');
		exit;
	}
	$query="INSERT INTO mst_user(pass,username,phone,email) values('$pass','$name','$phone','$email')";
	if(mysqli_query($conn, $query)){
		header('Location: index.php?stat=200');
		exit;
	}
?>