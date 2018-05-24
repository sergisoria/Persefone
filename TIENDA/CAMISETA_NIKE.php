<?php require_once('Connections/conexion.php'); ?>
<?php

$variable_Consulta = "0";
if (isset($VARIABLE)) {
  $variable_Consulta = $VARIABLE;
}
//WHERE NOMBRECAMPO = %s ORDER BY NOMBRECAMPOFECHA DESC condicion ordenador todo
$query_DatosConsulta = sprintf("SELECT * FROM productos WHERE Tipo = 'Camiseta' AND Nombre = 'Camiseta Nike FC'");
$DatosConsulta = mysqli_query($conn,  $query_DatosConsulta) or die(mysqli_error($conn));
$row_DatosConsulta = mysqli_fetch_assoc($DatosConsulta);
$totalRows_DatosConsulta = mysqli_num_rows($DatosConsulta);

//FINAL DE LA PARTE SUPERIOR
?>




<!DOCTYPE html>
<html>
<title>Persephónē</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css_para_todo.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
<style>
.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}
article {
   
    padding: 1em;
    overflow: hidden;
}
.column {
    float: left;
    width: 50%;
    padding: 15px;
}

.row:after {
    content: "";
    display: table;
    clear: both;
}
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
* {
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
</style>
<body class="w3-content" style="max-width:1200px">

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-bar-block w3-white w3-collapse w3-top" style="z-index:3;width:250px" id="mySidebar">
  <div class="w3-container w3-display-container w3-padding-16">
    <i onclick="w3_close()" class="fa fa-remove w3-hide-large w3-button w3-display-topright"></i>
    <!-- <h3 class="w3-wide"><b>Persephónē</b></h3> -->
	  <a href="inicio.html"><img src="logo2.png" /></a>

  </div>
  <div class="w3-padding-64 w3-large w3-text-grey" style="font-weight:bold">
	  <a href="camisetas.html" class="w3-button w3-block w3-white w3-left-align">Camisetas</a>
	  <a href="vestidos.html" class="w3-bar-item w3-button">Vestidos</a>
	  <a href="vaqueros.html" class="w3-bar-item w3-button w3-padding">Vaqueros</a>
	  <a href="chaquetones_de_la_parra.html" class="w3-bar-item w3-button">Chaquetas y abrigos</a>
	  <a href="ropadeporte.html" class="w3-bar-item w3-button">Ropa de Deporte</a>
	  <a href="americanas.html" class="w3-bar-item w3-button">Americanas</a>
	  <a href="zapatos.html" class="w3-bar-item w3-button">Zapatos</a>
	</div>
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

  <!-- Push down content on small screens -->
  <div class="w3-hide-large" style="margin-top:83px"></div>

  <!-- Top header -->
<header class="w3-container w3-xlarge">
     <p class="w3-left">CAMISETAS</p>
    <p class="w3-right"> <i class="fa fa-shopping-cart w3-margin-right"></i> <i class="fa fa-search"></i> </p>
  </header>

  <!-- Image header -->
  <ul class="breadcrumb">
  <li><a  style='text-decoration:none;color:grey;'href="inicio.html">INICIO</a></li>
  <li><a  style='text-decoration:none;color:grey;'href="camisetas.html">CAMISETAS</a></li>
  <li>CAMISETA NIKE FC</li>
</ul>
  <!-- Product grid -->
  <div class="w3-row w3-grayscale">
  <div class="row">
  <div class="column">
  <?php 

	echo '<img src="data:image/jpeg;base64,'.base64_encode($row_DatosConsulta['Imagen'] ).'" width="400" height="550" alt=""/>';
?>

  </div>
  <div class="column">
    <h1><?php echo $row_DatosConsulta["Nombre"]; ?></h1>
    <h4>Color: <?php echo $row_DatosConsulta["Color"]; ?></h4>
    <h3>Precio: <?php echo $row_DatosConsulta["PrecioUnidad"]; ?>€</h3>
    <label style="display: table-cell; vertical-align: top" data-bind="text: sizeLabel, visible: !hideLabels, disable: isDisabled">TALLA:</label>
    <div class="colour-size-select" data-bind="visible: sizeDropdownVisible()">
                <select data-id="sizeSelect" data-bind="options: variants,
                    optionsAfterRender: disableSizeIfOutOfStock,
                    optionsText: &quot;Size&quot;,
                    optionsCaption: selectSizeText,
                    value: size,
                    disable: isDisabled || sizeDropdownDisabled(),
                    css:{ required : noSizeSelected()}"><option value="">Porfavor Selecciona</option><option value="">S</option><option value="">M</option><option value="">L</option><option value="">XL</option></select>
                <!-- ko if: noSizeSelected() --><!-- /ko -->
            </div>
             <p></p>
         <a href="#" class="btn">Añadir a la Cesta</a>
         <p><br></p>
    <a onclick="myAccFunc()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn">
      Descripcion del Producto: <i class="fa fa-caret-down"></i>
    </a>
    <div id="demoAcc" class="w3-bar-block w3-hide w3-medium">
      <p>Tela técnica<br>Cuello redondo<br>Manga larga<br>Multibolsillos <br>Monocolor<br>Abotonadura simple<br>Cierre de cremallera<br>Interior forrado<br></p>
    </div>
	
  </div>
</div>
  
  </div>
<div class="w3-row w3-grayscale">
  <?php
//AQUI ES DONDE SE SACAN LOS DATOS, SE COMPRUEBA QUE HAY RESULTADOS
if ($totalRows_DatosConsulta > 0) {
do {?>


  <?php
	

       } while ($row_DatosConsulta = mysqli_fetch_assoc($DatosConsulta));
}
else
{ //MOSTRAR SI NO HAY RESULTADOS ?>
    No hay resultados.
    <?php } ?>

  <!-- Product grid -->
 </div>
<!-- Subscribe section -->
  <!-- Footer -->
  
  <footer class="w3-padding-64 w3-light-grey w3-small w3-center" id="footer">
    <div class="w3-row-padding">
      <div class="w3-col s4">
        <h4>Contacta con nosotros</h4>
        <p>Preguntas? </p>
        <form action="/action_page.php" target="_blank">
          <p><input class="w3-input w3-border" type="text" placeholder="Nombre" name="Nombre" required></p>
          <p><input class="w3-input w3-border" type="text" placeholder="Correo Electronico" name="Email" required></p>
          <p><input class="w3-input w3-border" type="text" placeholder="Mensaje" name="Mensaje" required></p>
          <button type="submit" class="w3-button w3-block w3-black">Enviar</button>
        </form>
      </div>

      <div class="w3-col s4">
        <h4>Sobre nosotros...</h4>
        <p><a href="#">Soporte</a></p>
        <p><a href="#">Envio</a></p>
        <p><a href="#">Pago</a></p>
        <p><a href="#">Tarjeta Regalo</a></p>
        <p><a href="#">Ayuda</a></p>
      </div>

    <div class="w3-col s4 w3-justify">
        <h4>Tienda</h4>
        <p><i class="fa fa-fw fa-map-marker"></i> Persephónē</p>
        <p><i class="fa fa-fw fa-phone"></i> 0044123123</p>
        <p><i class="fa fa-fw fa-envelope"></i> Persephone@gmail.com</p>
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
      <h2 class="w3-wide">NOVEDADES</h2>
      <p>Sé el primero enterarte de nuevos productos o nuevas ofertas</p>
      <p><input class="w3-input w3-border" type="text" placeholder="Inserta el correo"></p>
      <button type="button" class="w3-button w3-padding-large w3-red w3-margin-bottom" onclick="document.getElementById('newsletter').style.display='none'">REGÍSTRATE AHORA</button>
    </div>
  </div>
</div>

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

<?php
//AÑADIR AL FINAL DE LA PÁGINA
mysqli_free_result($DatosConsulta);
?>