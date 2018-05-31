<?php require_once('../Connections/conexion.php'); ?>
<?php require_once('../includes/funciones.php'); ?>
            
             
<?php

$editFormAction = $_SERVER['PHP_SELF'];
if (isset($_SERVER['QUERY_STRING'])) {
  $editFormAction .= "?" . htmlentities($_SERVER['QUERY_STRING']);
}

if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "forminsertarprove")) {

  $insertSQL = sprintf("INSERT INTO proveedores(Nombre,Direccion,Correo,Telefono,Webpage) VALUES ( %s, %s, %s, %s, %s)",
                      	
					  	GetSQLValueString($_POST["Nombre"], "text"),
					    GetSQLValueString($_POST["Direccion"], "text"),
					   	GetSQLValueString($_POST["Correo"], "text"),
					  	GetSQLValueString($_POST["Telefono"], "text"),
					  	GetSQLValueString($_POST["Webpage"], "text"));
					
  $Result1 = mysqli_query($conn,  $insertSQL) or die(mysqli_error($conn));


  $insertGoTo ="proveedores-lista.php";
  if (isset($_SERVER['QUERY_STRING'])) {
    $insertGoTo .= (strpos($insertGoTo, '?')) ? "&" : "?";
    $insertGoTo .= $_SERVER['QUERY_STRING'];
  }
  header(sprintf("Location: %s", $insertGoTo));
}
?>

<!DOCTYPE html>
<html lang="en">

<!-- InstanceBegin template="/Templates/Administracion.dwt.php" codeOutsideHTMLIsLocked="false" -->

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- InstanceBeginEditable name="doctitle" -->
    <title>Administración Productos</title>
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
                    <h1 class="page-header">Gestión de Proveedor</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
	  <a href="productos-lista.php"class="btn btn-outline btn-info">Volver atras</a><br></br>
            
	<div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Añadir Proveedor
                         </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                  <form action="proveedores-add.php" method="post" id="forminsertarprove" name="forminsertarprove" role="form" onSubmit="javascript:return validarproveedoralta();">
                                  
                                       
                                      
                                        <div class="form-group">
                                            <label>Nombre </label>
                                            <input class="form-control" placeholder="Escribir Nombre del usuario" name="Nombre" id="Nombre">
                                        </div>
                                          <div class="alert alert-danger oculto" id="errorNom">Nombre obligatorio</div>
                                          
                                       
                                           
                                          <div class="form-group">
                                            <label>Direccion </label>
                                            <input class="form-control" placeholder="Escribir la direcion del usuario" name="Direccion" id="Direcion">
                                        </div>
                                        
                                         <div class="alert alert-danger oculto" id="errorDir">Direccion obligatorio</div>
                                             
                                            <div class="form-group">
                                            <label>Correo</label>
                                            <input class="form-control" placeholder="e-mail" name="Correo" id="Correo" type="email">
                                        	</div>
                                        
                                         <div class="alert alert-danger oculto" id="errorCorreo">Correo obligatorio</div>
                                         
                                              <div class="form-group">
                                            <label>Telefono</label>
                                            <input class="form-control" placeholder="Telefono" name="Telefono" id="Telefono" type="number">
                                        </div>
                                        
                                         <div class="alert alert-danger oculto" id="errorTel">Telefono obligatorio</div>
                                         
                                         
                                          <div class="form-group">
                                            <label>Webpage</label>
                                            <input class="form-control" placeholder="Webpage" name="Webpage" id="Webpage" >
                                        </div>  
                                          
                                           <div class="alert alert-danger oculto" id="errorWeb">Telefono obligatorio</div>
                                  
           
                                		<button type="submit" class="btn btn-success">Añadir</button>
                                      <input name="MM_insert" type="hidden" id="MM_insert" value="forminsertarprove">
                                       
                                   </form>
                             
                         
                            <!-- /.row (nested) -->
                  
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

	