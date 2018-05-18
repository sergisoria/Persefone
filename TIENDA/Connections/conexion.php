<?php


if (!isset($_SESSION)) {
  session_start();
}

$hostname_conn = "172.17.129.142";
$database_conn = "persephone";
$username_conn = "persephone";
$password_conn = "persephone";
$conn = mysqli_connect($hostname_conn, $username_conn, $password_conn, $database_conn);
mysqli_set_charset($conn, 'utf8');


if (is_file("includes/funciones.php"))


echo "ok";


{
echo 'error';

}
?>
