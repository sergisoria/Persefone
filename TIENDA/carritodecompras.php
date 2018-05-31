<?php
  require_once('Connections/conexion.php'); 
?>


<!DOCTYPE html>

<html lang = "es" >
<head>
    <meta charset = utf8_decode/>
	<title>Carrito de Compras</title>
	<link rel="stylesheet" href="css_para_todo.css">
	<link rel = "stylesheet" type = >
    
</head>
<body>

    <header class="w3-container w3-xlarge">
	<h1>Carrito de Compras</h1>
	<a href="./carritodecompras.php" title="ver carrito">
	   <p class="w3-right">
	    <i class="fa fa-shopping-cart w3-margin-right"></i>
	   </p>
	</body>
	 
	  </header>
	  
	  
     <?php
	   if(isset($_SESSION['carrito'])){
		   
	   }else{
		   echo '<center><h2>El carro esta vacio</h2></center>';
	 
	   }
	 
	 ?>


