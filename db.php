<?php
$host='localhost';
$username='root';
$password='';
$dbname='dbms';



$connection=mysqli_connect($host,$username,$password,$dbname);
if(!$connection){

	echo 'db connection failed';
}


?>
