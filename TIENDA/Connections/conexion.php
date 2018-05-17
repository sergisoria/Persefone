<?php


if (!isset($_SESSION)) {
  session_start();
}

$hostname_conn = "172.17.129.166";
$database_conn = "persephone";
$username_conn = "root";
$password_conn = "";
$conn = mysqli_connect($hostname_conn, $username_conn, $password_conn, $database_conn);
mysqli_set_charset($conn, 'utf8');


if (is_file("includes/funciones.php")) 
include("includes/funciones.php"); 

echo <script> alert("Connection realizada"); </script>;

else
{
echo <script> alert("Connection error1"); </script>;
	include("../includes/funciones.php");
}
?>