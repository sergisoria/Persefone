<?php 
 if(!isset($_SESSION)) 
    { 
        session_start(); 
		
    }
require_once('conexion.php'); ?>
<?php
   
// if($_SESSION['email']){
  // echo 'Your name Is Here!  :) ';
  
  // }else{
		// echo 'STFU';
	// }
  
?>
<?php 
$query_DatosConsultaTIPO = sprintf("SELECT * FROM tipos limit 7");
$DatosConsultaTIPO = mysqli_query($conn,  $query_DatosConsultaTIPO) or die(mysqli_error($conn));
$row_DatosConsultaTIPO = mysqli_fetch_assoc($DatosConsultaTIPO);
$totalRows_DatosConsultaTIPO = mysqli_num_rows($DatosConsultaTIPO);
?>

<?php 
if(isset($_GET["action"])){
	if($_GET["action"]=="delete"){
		foreach($_SESSION["email"] as $keys =>$value){
			if($value["id"] == $_GET["id"]){
				unset($_SESSION["email"][$keys]);
				?>
				<script>window.location="carritodecompras1.php"</script>
				<?php
			}
		}
	}
}


//para actualizar las cantidades
if(isset($_POST["prdId"])) {
	$id = $_POST["prdId"];
	$newCant = $_POST["newCant"];
	
	$arregloCarrito = $_SESSION["email"];
	$finalIndex = count($arregloCarrito);
	for ($i=0; $i<$finalIndex; $i++) {
		
		if(!isset($arregloCarrito[$i])) {
			$finalIndex++;
			continue;
		}
		
		if($arregloCarrito[$i]['id'] == $id) {
			$arregloCarrito[$i]['Cant'] = $newCant;
			break;
		}
		
	}
	
	$_SESSION["email"] = $arregloCarrito;
	/*
	foreach($_SESSION["email"] as $key =>$value){
		if($value['id']==$id) {
			$value['Cant'] = $newCant;
			break;
		}
	}
	*/
}


?>




<!DOCTYPE html>
<html>
<title>Carrito | Persephónē</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css_para_todo.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}
	/* Slideshow container */

.btn {
    position: absolute;
    background-color: #ddd;
    outline: 0;
    color: black;
    font-size: 12px;
    padding: 10px 25px;
    border: none;
    cursor: pointer;
    text-align: center;
    display: inline-block;
	text-decoration:none;
}
.btn:hover {
   background-color: #555;
  color: white;
}
	
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}


.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}
.container {
    position: relative;
    width: 100%;
    max-width: 1000px;
}

.container img {
    width: 100%;
    height: auto;
}

.container .btn {
    position: absolute;
    top: 50%;
    left: 40%;
    transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    background-color: #ddd;
    outline: 0;
    color: black;
    font-size: 16px;
    padding: 10px 25px;
    border: none;
    cursor: pointer;
    text-align: center;
    display: inline-block;
	text-decoration:none;
}
.container .btn2 {
    position: absolute;
    top: 50%;
    left: 60%;
    transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    background-color: #ddd;
    outline: 0;
    color: black;
    font-size: 16px;
    padding: 10px 25px;
    border: none;
    cursor: pointer;
    text-align: center;
    display: inline-block;
	text-decoration:none;
}

.container .btn:hover {
   background-color: #555;
  color: white;
}
.container .btn2:hover {
   background-color: #555;
  color: white;
}
	

{
    box-sizing: border-box;
}

.openBtn {
    background: #f1f1f1;
    border: none;
    padding: 10px 15px;
    font-size: 20px;
    cursor: pointer;
}

.openBtn:hover {
    background: #bbb;
}

.overlay {
    height: 100%;
    width: 100%;
    display: none;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: rgb(0,0,0);
    background-color: rgba(0,0,0, 0.9);
}

.overlay-content {
    position: relative;
    top: 46%;
    width: 80%;
    text-align: center;
    margin-top: 30px;
    margin: auto;
}

.overlay .closebtn {
    position: absolute;
    top: 20px;
    right: 45px;
    font-size: 60px;
    cursor: pointer;
    color: white;
}

.overlay .closebtn:hover {
    color: #ccc;
}

.overlay input[type=text] {
    padding: 15px;
    font-size: 17px;
    border: none;
    float: left;
    width: 80%;
    background: white;
}

.overlay input[type=text]:hover {
    background: #f1f1f1;
}

.overlay button {
    float: left;
    width: 20%;
    padding: 15px;
    background: #ddd;
    font-size: 17px;
    border: none;
    cursor: pointer;
}

.overlay button:hover {
    background: #bbb;
}
ul.breadcrumb {
    padding: 10px 16px;
    list-style: none;
  
}
ul.breadcrumb li {
    display: inline;
    font-size: 20px;
}
ul.breadcrumb li+li:before {
    padding: 5px;
  
    content: "/";
}
ul.breadcrumb li a {
    color: #0275d8;
    text-decoration: none;
}
ul.breadcrumb li a:hover {
    color: #01447e;
    text-decoration: underline;
}

.column {
    float: left;
    width: 20%;
    padding: 15px;
}
.column2 {
    float: left;
    width: 60%;
    padding: 15px;
}	

	
</style>
<body class="w3-content" style="max-width:1200px">

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-bar-block w3-white w3-collapse w3-top" style="z-index:3;width:250px" id="mySidebar">
  <div class="w3-container w3-display-container w3-padding-16">
    <i onclick="w3_close()" class="fa fa-remove w3-hide-large w3-button w3-display-topright"></i>
    <!-- <h3 class="w3-wide"><b>Persephónē</b></h3> -->
	  <a href="index.php"><img src="logo2.png" /></a>
  </div>
  
   <div id="myOverlay2" class="overlay">
  <span class="closebtn" onclick="closeSearch()" title="Close Overlay">×</span>
  <div class="overlay-content">
    <form action="/action_page.php">
      <input type="text" placeholder="Buscar.." name="search"id="search">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
</div>
<?php
//AQUI ES DONDE SE SACAN LOS DATOS, SE COMPRUEBA QUE HAY RESULTADOS
if ($totalRows_DatosConsultaTIPO > 0) {
do {?>
  <div class=" w3-large w3-text-grey" style="font-weight:bold">
	  <a href="<?php echo 'cat.php?id='.$row_DatosConsultaTIPO["idTipos"]?>" class="w3-bar-item w3-button"><?php echo $row_DatosConsultaTIPO["NombreTipo"];?></a>
	</div>

										

  <?php
	

       } while ($row_DatosConsultaTIPO = mysqli_fetch_assoc($DatosConsultaTIPO));
}
else
{ //MOSTRAR SI NO HAY RESULTADOS ?>
    No hay resultados.
    <?php } ?>
  <a href="#footer" class="w3-bar-item w3-button w3-padding">Contacta con nosotros</a> 
  <a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding" onclick="document.getElementById('newsletter').style.display='block'">Novedades</a> 
</nav>

<!-- Top menu on small screens -->
<header class="w3-bar w3-top w3-hide-large w3-black w3-xlarge">
  <div class="w3-bar-item w3-padding-24 w3-wide">Persephónē</div>
  <a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding-24 w3-right" onclick="w3_open()"><i class="fa fa-bars"></i></a>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>




<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:250px">

 
  
  <!-- Top header -->
  <header class="w3-container w3-xlarge">
    <p class="w3-right">
      <a style='text-decoration:none;color:black;'href="carritodecompras1.php" ><i class="fa fa-shopping-cart openBtn"></i></a>
     <i onclick="openSearch()" class="fa fa-search openBtn">
	</i>
    </p>
	 </header>
	<?php 
	
	$total =0;
	if(!empty($_SESSION["email"])){
		foreach($_SESSION["email"] as $key =>$value){
			
		?>

<div class="w3-row w3-grayscale">
<div class="row">
<div class="productos">
	<div class="column">
		<?php echo '<img src="./images/productos/'.$value["Imagen"].'" width="155" height="200" alt=""/>'; ?>
		</div>
		<div class="column2">
		<p><strong><?php echo $value["Precio"]*$value["Cant"];?>€</strong></p>
		<a style='color:black;text-decoration:none;font-size:120%;'href = "<?php echo 'prd.php?id='.$value["id"]?>"><p><?php echo $value["Nombre"];?></p></a>
		<p><?php echo $value["Color"];?></p>
		<p>Talla: <?php echo $value["Talla"];?></p>
		<p> 
		<form action="" method="post">
		<input name="prdId" type="hidden" value="<?php echo $value["id"];?>">
		<label>Cantidad:</label>
		<select name="newCant" onChange="this.form.submit()">
			<option value="1" <?php if($value["Cant"] == 1) echo 'selected="true"'; ?>>1</option>
			<option value="2" <?php if($value["Cant"] == 2) echo 'selected="true"'; ?>>2</option>
			<option value="3" <?php if($value["Cant"] == 3) echo 'selected="true"'; ?>>3</option>
			<option value="4" <?php if($value["Cant"] == 4) echo 'selected="true"'; ?>>4</option>
			<option value="5" <?php if($value["Cant"] == 5) echo 'selected="true"'; ?>>5</option>
			<option value="6" <?php if($value["Cant"] == 6) echo 'selected="true"'; ?>>6</option>
			<option value="7" <?php if($value["Cant"] == 7) echo 'selected="true"'; ?>>7</option>
			<option value="8" <?php if($value["Cant"] == 8) echo 'selected="true"'; ?>>8</option>
			<option value="9" <?php if($value["Cant"] == 9) echo 'selected="true"'; ?>>9</option>
		</select>
		</form>
		</p>
		
		
		
		
		
		
		</div>
		<div class="column">
		<a href="carritodecompras1.php?action=delete&id=<?php echo $value["id"];?>"class="closebtn"style='color:black;text-decoration:none;font-size:300%;'>×</a>	
		</div>
		</div>
    </div>
</div>
	<?php

$total = $total + ($value["Cant"] * $value["Precio"]);	
		}
	}
	
	?> 
	<script>
function openSearch() {
    document.getElementById("myOverlay2").style.display = "block";
}

function closeSearch() {
    document.getElementById("myOverlay2").style.display = "none";
}
</script>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 5000);
}
</script>
  
	 
    
	


<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post"> 
   <!--  Identify your business so that you can collect the payments. --> 
   <input type="hidden" name="business" value="tiendapersefone@gmail.com"> 
   <!-- Specify a PayPal Shopping Cart Add to Cart button. --> 
   <input type="hidden" name="cmd" value="_cart"> 
   <input type="hidden" name="add" value="1"> 
   <!-- Specify details about the item that buyers will purchase. --> 
   <input type="hidden" name="item_name" value="Persephone"> 
   <input type="hidden" name="amount" value="<?php echo  number_format($total, 2);?>"> 
   <input type="hidden" name="currency_code" value="EUR"> 
   <!-- Display the payment button. --> 
   <input type="image" name="submit" border="0" src="https://www.sandbox.paypal.com/es_ES/ES/i/btn/btn_buynowCC_LG.gif" alt="PayPal - The safer, easier way to pay online"style="
    margin-left: 700px;"> 
   
  
</form> 

	 <center><h3 style = 'font-weight:bold;'><?php echo number_format($total, 2); ?>€</h3></center>
	 <center><a style='color:black;'href="index.php">ver productos</a></center>




<!-- Subscribe section -->
  <!-- Footer -->
   <footer class="w3-padding-64 w3-light-grey w3-small w3-center" id="footer">
    <div class="w3-row-padding">
      <div class="w3-col s4">
        <h4>Contacta con nosotros</h4>
        <p>Preguntas? </p>
        <form action="#"  method = "post">
          <p><input class="w3-input w3-border" type="text" placeholder="Nombre" name="Nombre" required></p>
          <p><input class="w3-input w3-border" type="text" placeholder="Correo Electronico" name="Email" required></p>
          <p><input class="w3-input w3-border" type="text" placeholder="Mensaje" name="Mensaje" required></p>
          <button type="submit" name = "enviar_correo"class="w3-button w3-block w3-black">Enviar</button>
        </form>
      </div>
<?php
if(isset($_POST["enviar_correo"])){
$to      = 'tiendapersefone@gmail.com';
$subject = 'Ayuda';
$message = $_POST["Mensaje"];
$headers = 'From: '.$_POST["Email"]. "\r\n" .
    'Reply-To:'.$_POST["Email"]. "\r\n" .
    'X-Mailer: PHP/' . phpversion();

mail($to, $subject, $message, $headers);
}
?> 
        <div class="w3-col s4">
        <h4>Sobre Persephónē</h4>
        <p><a href="about_us.php"style='color:black;'>Sobre Nosotros</a></p>
        <p><a href="#"style='color:black;'>Trabajar en Persephone</a></p>
        <p><a href="#"style='color:black;'>Envíos y devoluciones</a></p>
      </div>

     <div class="w3-col s4 w3-justify">
        <h4>Tienda</h4>
        <p><i class="fa fa-fw fa-map-marker"></i> Persephónē</p>
        <p><i class="fa fa-fw fa-phone"></i> 0044123123</p>
        <p><i class="fa fa-fw fa-envelope"></i> tiendaersephone@gmail.com</p>
        <h4>Nosotros Aceptamos</h4>
<p><em class="fa fa-fw fa-credit-card"></em> Tarjeta de Credito</p>
        <br>
        <i class="fa fa-facebook-official w3-hover-opacity w3-large"></i>
        <i class="fa fa-instagram w3-hover-opacity w3-large"></i>
        <i class="fa fa-twitter w3-hover-opacity w3-large"></i>
        <i class="fa fa-linkedin w3-hover-opacity w3-large"></i>
      </div>
    </div>
  </footer>



  <!-- End page content -->
</div>

<!-- Newsletter Modal -->
<div id="newsletter" class="w3-modal">
  <div class="w3-modal-content w3-animate-zoom" style="padding:32px">
    <div class="w3-container w3-white w3-center">
      <i onclick="document.getElementById('newsletter').style.display='none'" class="fa fa-remove w3-right w3-button w3-transparent w3-xxlarge"></i>
      <h2 class="w3-wide"style="
    padding-left: 50px;
    border-left-width: 10px;
">NOVEDADES</h2>
      <p>Sé el primero enterarte de nuevos productos o nuevas ofertas</p>
	  <form method="post"action="#">
      <p><input class="w3-input w3-border" type="text" name="mail_novedades" placeholder="Inserta el correo"></p>
      <button type="submit" name="novedades_correo" class="w3-button w3-padding-large w3-blue w3-margin-bottom" onclick="document.getElementById('newsletter').style.display='none'">REGÍSTRATE AHORA</button>
   </form>
   </div>
  </div>
</div>
<?php
if(isset($_POST["novedades_correo"])){
$to      = $_POST['mail_novedades'];
$subject = 'Novedades';
$message = 'Bienvenido, estamos agradecidos de que quieras enterarte de las novedades';
$headers = 'From: tiendapersefone@gmail.com'. "\r\n" .
    'Reply-To: tiendapersefone@gmail.com'. "\r\n" .
    'X-Mailer: PHP/' . phpversion();

mail($to, $subject, $message, $headers);
}
?> 
<script>
// Accordion
function myAccFunc() {
    var x = document.getElementById("demoAcc");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}

// Click on the "Jeans" link on page load to open the accordion for demo purposes
document.getElementById("myBtn").click();


// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}

function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>

</body>
</html>
