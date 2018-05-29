<?php


if (!isset($_SESSION)) {
  session_start();
}

$hostname_conn = "localhost";
$database_conn = "persephone";
$username_conn = "root";
$password_conn = "";
$conn = mysqli_connect($hostname_conn, $username_conn, $password_conn, $database_conn);
mysqli_set_charset($conn, 'utf8');


if (is_file("includes/funciones.php")) 


echo "ok";

	
else{
echo 'error';
	
}
?>