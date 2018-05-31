<?php require_once('../Connections/conexion.php'); ?>
<?php require_once('../includes/funciones.php'); ?>
            
             
<?php

$editFormAction = $_SERVER['PHP_SELF'];
if (isset($_SERVER['QUERY_STRING'])) {
  $editFormAction .= "?" . htmlentities($_SERVER['QUERY_STRING']);
}

if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "forminsertar")) {

	

		
  $insertSQL = sprintf("INSERT INTO Usuarios(Login,Password,Correo,Telefono,Nombre,Apellidos,Direccion,Rol,Imagen) VALUES (%s, %s, %s, %s,%s, %s, %s, %s,%s)",
                      	GetSQLValueString($_POST["Login"], "text"),
					  	GetSQLValueString(md5 ($_POST["Password"]), "text"),
					  	GetSQLValueString($_POST["Correo"], "text"),
					  	GetSQLValueString($_POST["Telefono"], "int"),
					   	GetSQLValueString($_POST["Nombre"], "text"),
					  	GetSQLValueString($_POST["Apellidos"], "text"),
					  	GetSQLValueString($_POST["Direccion"], "text"),
					  	GetSQLValueString($_POST["Rol"], "int"),
					    GetSQLValueString($_POST["Imagen"], "text"));
		
  
  $Result1 = mysqli_query($conn,  $insertSQL) or die(mysqli_error($conn));


  $insertGoTo = "usuario-lista.php";
  if (isset($_SERVER['QUERY_STRING'])) {
    $insertGoTo .= (strpos($insertGoTo, '?')) ? "&" : "?";
    $insertGoTo .= $_SERVER['QUERY_STRING'];
  }
  header(sprintf("Location: %s", $insertGoTo));
	
	
	
}
?>

<!DOCTYPE html>
<html lang="en"><!-- InstanceBegin template="/Templates/Administracion.dwt.php" codeOutsideHTMLIsLocked="false" -->

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- InstanceBeginEditable name="doctitle" -->
    <title>Administración Tienda 2017</title>
    <!-- InstanceEndEditable -->
    <!-- Bootstrap Core CSS -->
    <?php include("../includes/adm-cabecera.php"); ?>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
</head>

<body>
<!-- InstanceBeginEditable name="ContenidoAdmin" -->
<script src="scriptupload.js"></script>
<script src="../js/scriptadmin.js"></script>

<div id="wrapper">
  <!-- Navigation -->
  <?php include("../includes/adm-menu.php"); ?>
  <div id="page-wrapper">
     <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Gestión de Usuarios</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
	  <a href="usuario-lista.php"class="btn btn-outline btn-info">Volver atras</a><br></br>
            
<div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Añadir Usuario
                         </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                  <form action="usuario-add.php" method="post" id="forminsertar" name="forminsertar" role="form" onSubmit="javascript:return validarusuarioalta();">
                                       
                                        <div class="form-group">
                                            <label>Login</label>
                                            <input class="form-control" placeholder="Login" name="Login" id=" Login">
                                        </div>
                                        
                                        <div class="alert alert-danger oculto" id="errorLogin">Login obligatorio</div>
                                        
                                        
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input class="form-control" placeholder="Escribir Contraseña" name="Password" id="Password">
                                        </div>
                                           
                                            <div class="alert alert-danger oculto" id="errorPass">Password obligatorio</div>
                                            
                                            <div class="form-group">
                                            <label>Correo</label>
                                            <input class="form-control" placeholder="e-mail" name="Correo" id="Correo" type="email">
                                        	</div>
                                        
                                         <div class="alert alert-danger oculto" id="errorCorreo">Correo obligatorio</div>
                                         
                                         
                                        <div>
                                            <div class="form-group">
                                            <label>Telefono</label>
                                            <input class="form-control" placeholder="Telefono" name="Telefono" id="Telefono" type="number">
                                        </div>
                                        
                                         <div class="alert alert-danger oculto" id="errorTel">Telefono obligatorio</div>
                                         
                                         
                                        <div class="form-group">
                                            <label>Nombre </label>
                                            <input class="form-control" placeholder="Escribir Nombre del usuario" name="Nombre" id="Nombre">
                                        </div>
                                         
                                          <div class="alert alert-danger oculto" id="errorNom">Nombre obligatorio</div>
                                          
                                          <div class="form-group">
                                            <label>Apellidos </label>
                                            <input class="form-control" placeholder="Escribir Apellido del usuario" name="Apellidos" id="Apellidos">
                                        </div>  
                                        
                                         <div class="alert alert-danger oculto" id="errorApe">Apellidos obligatorio</div>
                                         
                                        <div class="form-group">
                                            <label>Direccion </label>
                                            <input class="form-control" placeholder="Escribir la direcion del usuario" name="Direccion" id="Direcion">
                                        </div>
                                        
                                         <div class="alert alert-danger oculto" id="errorDir">Direccion obligatorio</div>
                                         
                                          
		<div class="form-group">
			<label>Nivel de Usuario</label>
			<select name="Rol" class="form-control" id="Rol">
				<option value="0">0: Usuario público de tienda</option>
				<option value="1">1: SuperAdministrador </option>
				<option value="10">10: Gestor de Ventas</option>
				<option value="100">100: Gestor de Productos</option>

			</select>
		</div>
       <div class="form-group">
			<label>Estado</label>
			<select name="intEstado" class="form-control" id="intEstado">
				<option value="0">Inactivo</option>
				<option value="1" selected>Activo</option>
				
			</select>
		</div>
              
                                       

<?php 
//BLOQUE INSERCION IMAGEN
//***********************
//***********************
//***********************
//***********************
//PARÁMETROS DE IMAGEN
$nombrecampoimagen="Imagen";
$nombrecampoimagenmostrar="Imagenpic";
$nombrecarpetadestino="../images/usuarios/"; //carpeta destino con barra al final
$nombrecampofichero="file1";
$nombrecampostatus="status1";
$nombrebarraprogreso="progressBar1";
$maximotamanofichero="0"; //en Bytes, "0" para ilimitado. 1000000 Bytes = 1000Kb = 1Mb
$tiposficheropermitidos="0"; //  Por ejemplo "jpg,doc,png", separados por comas y poner "0" para permitir todos los tipos
$limiteancho="0"; // En píxels, "0" significa cualquier tamaño permitido
$limitealto="0"; // En píxels, "0" significa cualquier tamaño permitido
									  
$cadenadeparametros="'".$nombrecampoimagen."','".$nombrecampoimagenmostrar."','".$nombrecarpetadestino."','".$nombrecampofichero."','".$nombrecampostatus."','".$nombrebarraprogreso."','".$maximotamanofichero."','".$tiposficheropermitidos."','".$limiteancho."','".$limitealto."'";

//$cadenadeparametros="";

									  
									  ?>
<div class="form-group">
	<label>Imagen</label>
	<input class="form-control"  name="<?php echo $nombrecampoimagen;?>" id="<?php echo $nombrecampoimagen;?>">
</div> 
<div class="form-group">
	<div class="row">
		<div class="col-lg-6">
			<input type="file" name="<?php echo $nombrecampofichero;?>" id="<?php echo $nombrecampofichero;?>"><br>
		</div>
		<div class="col-lg-6">
			<input class="form-control" type="button" value="Subir Fichero" onclick="uploadFile(<?php echo $cadenadeparametros;?>)">
		</div>
	</div>
	<progress id="<?php echo $nombrebarraprogreso;?>" value="0" max="100" style="width:100%;"></progress>
	<h5 id="<?php echo $nombrecampostatus;?>"></h5>
	<img src="" alt="" id="<?php echo $nombrecampoimagenmostrar;?>">
</div>   
<?php /*?>
//***********************
//***********************
//***********************								
//***********************
// FIN BLOQUE INSERCION IMAGEN
<?php */?>                              
                                       
                                        
                                        <button type="submit" class="btn btn-success">Añadir</button>
                                      <input name="MM_insert" type="hidden" id="MM_insert" value="forminsertar">
                                       
                                    </form>
                              </div>
                                <!-- /.col-lg-6 (nested) -->
                                
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                   
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
                
                <!-- /.col-lg-6 -->
            </div>
  </div>
  <!-- /#page-wrapper -->
</div>
<!-- InstanceEndEditable --><!-- /#wrapper -->

     <?php include("../includes/adm-pie.php"); ?>
   

</body>

<!-- InstanceEnd --></html>
