<?php require_once('../Connections/conexion.php'); ?>
<?php require_once('../includes/funciones.php'); ?>
            

<?php


$editFormAction = $_SERVER['PHP_SELF'];
if (isset($_SERVER['QUERY_STRING'])) {
  $editFormAction .= "?" . htmlentities($_SERVER['QUERY_STRING']);
}



if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "forminsertar")) {
	
	
	
  $updateSQL = sprintf("UPDATE proveedores SET Nombre=%s,Direccion=%s,Correo=%s,Telefono=%s,Webpage=%s WHERE idProveedor=%s",
					   
                       	GetSQLValueString($_POST["Nombre"], "text"),
					  	GetSQLValueString($_POST["Direccion"], "text"),
					  	GetSQLValueString($_POST["Correo"], "text"),
					   	GetSQLValueString($_POST["Telefono"], "text"),
					  	GetSQLValueString($_POST["Webpage"], "text"),
					  	GetSQLValueString($_POST["idProveedor"], "text")
					  	
						);
	
echo $updateSQL;
$Result1 = mysqli_query($conn, $updateSQL) or die(mysqli_error($conn));

  $updateGoTo = "proveedores-lista.php";
  if (isset($_SERVER['QUERY_STRING'])) {
    $updateGoTo .= (strpos($updateGoTo, '?')) ? "&" : "?";
    $updateGoTo .= $_SERVER['QUERY_STRING'];
  }
  header(sprintf("Location: %s", $updateGoTo));
}

?>    
                      
<?php

$query_DatosConsulta = sprintf("SELECT * FROM proveedores WHERE idProveedor=%s", GetSQLValueString($_GET["id"], "int"));
	
$DatosConsulta = mysqli_query($conn,  $query_DatosConsulta) or die(mysqli_error($conn));
$row_DatosConsulta = mysqli_fetch_assoc($DatosConsulta);
$totalRows_DatosConsulta = mysqli_num_rows($DatosConsulta);

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
    <title>Gestion Proveedores</title>
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
                    <h1 class="page-header">Gestión de Proveedores</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
	  <a href="proveedores-lista.php"class="btn btn-outline btn-info">Volver atras</a><br></br>
            
<div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Editar Proveedor
                         </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                  <form action="proveedores-edit.php" method="post" id="forminsertar" name="forminsertar" role="form" onSubmit="javascript:return validarproveedoralta();">
                                       
                                       <div>
                                        <div class="form-group">
                                            <label>Nombre</label>
                                            <input class="form-control" placeholder="Nombre" name="Nombre" id=" Nombre" value="<?php echo $row_DatosConsulta["Nombre"]; ?>">
                                        </div>
                                        
                                        <div class="alert alert-danger oculto" id="errorLogin">Nombre obligatorio</div>
                                        
                                        
                                        <div class="form-group">
                                            <label>Direccion</label>
                                            <input class="form-control" placeholder="Escribir Direccion" name="Direccion" id="Direccion"value="<?php echo $row_DatosConsulta["Direccion"]; ?>" >
                                        </div>
                                           
                                             
                                         <div class="alert alert-danger oculto" id="errorDireccion">Direccion obligatorio</div>
                                        
                                             
                                            <div class="form-group">
                                            <label>Correo</label>
                                            <input class="form-control" placeholder="Escribir Correo" name="Correo" id="Correo" type="email" value="<?php echo $row_DatosConsulta["Correo"]; ?>">
                                        </div>
                                        
                                        
                                         <div class="alert alert-danger oculto" id="errorCorreo">Correo obligatorio</div>
                                        
                                   
                                        
                                            <div class="form-group">
                                            <label>Telefono</label>
                                            <input class="form-control" placeholder="Escribir Telefono" name="Telefono" id="Telefono" value="<?php echo $row_DatosConsulta["Telefono"]; ?>">
                                        </div>
                                        
                                        <div class="alert alert-danger oculto" id="errorTel">Telefono obligatorio</div>
                                        
                                        <div class="form-group">
                                            <label>Webpage </label>
                                            <input class="form-control" placeholder="Escribir Webpage" name="Webpage" id="Webpage" value="<?php echo $row_DatosConsulta["Webpage"]; ?>">
                                        </div>
                                         
                                         
                                          <div class="alert alert-danger oculto" id="errorNom">Webpage obligatorio</div>
                                         
                                          <label>idProveedor</label>
                                            <input class="form-control" placeholder="Escribir idProveedor" name="idProveedor" id="idProveedor" value="<?php echo $row_DatosConsulta["idProveedor"]; ?>">
                                        </div>
                                         
                                         
                                          <div class="alert alert-danger oculto" id="erroridProveedor">idProveedor obligatorio</div>
										  
                                           
                                      
                                         
                                          
	
                                     

<?php 
//BLOQUE INSERCION IMAGEN
//***********************
//***********************
//***********************									  
											//***********************
//PARÁMETROS DE IMAGEN
$nombrecampoimagen="Imagen";
$nombrecampoimagenmostrar="strImagenpic";
$nombrecarpetadestino="../images/proveedores/"; //carpeta destino con barra al final
$nombrecampofichero="file1";
$nombrecampostatus="status1";
$nombrebarraprogreso="progressBar1";
$maximotamanofichero="0"; //en Bytes, "0" para ilimitado. 1000000 Bytes = 1000Kb = 1Mb
$tiposficheropermitidos="jpg,doc,png"; //  Por ejemplo "jpg,doc,png", separados por comas y poner "0" para permitir todos los tipos
$limiteancho="0"; // En píxels, "0" significa cualquier tamaño permitido
$limitealto="0"; // En píxels, "0" significa cualquier tamaño permitido
									  
$cadenadeparametros="'".$nombrecampoimagen."','".$nombrecampoimagenmostrar."','".$nombrecarpetadestino."','".$nombrecampofichero."','".$nombrecampostatus."','".$nombrebarraprogreso."','".$maximotamanofichero."','".$tiposficheropermitidos."','".$limiteancho."','".$limitealto."'";

//$cadenadeparametros="";

									  
?>


<?php /*?>
//***********************
//***********************
//***********************									  //***********************
// FIN BLOQUE INSERCION IMAGEN
<?php */?>     
                                        
                                        <button type="submit" class="btn btn-success">Editar</button>
                                        <input name="idProveedor" type="hidden" id="idProveedor" value="<?php echo $row_DatosConsulta["idProveedor"]; ?>">
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
