<?php require_once('../Connections/conexion.php'); ?>
<?php require_once('../includes/funciones.php'); ?>
            

<?php


$editFormAction = $_SERVER['PHP_SELF'];
if (isset($_SERVER['QUERY_STRING'])) {
  $editFormAction .= "?" . htmlentities($_SERVER['QUERY_STRING']);
}



if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "forminsertar")) {
	  
	  $updateSQL = sprintf("UPDATE productos SET Nombre=%s,Referencia=%s,PrecioUnidad=%s,idTipos=%s,Color=%s,Talla=%s,Genero=%s,Imagen=%s,idProveedor=%s,Descripcion=%s WHERE idProducto=%s",
					   
					  	GetSQLValueString($_POST["Nombre"], "text"),
					  	GetSQLValueString($_POST["Referencia"], "text"),
					   	GetSQLValueString($_POST["PrecioUnidad"], "text"),
					  	GetSQLValueString($_POST["idTipos"], "int"),
					  	GetSQLValueString($_POST["Color"], "text"),
					  	GetSQLValueString($_POST["Talla"], "text"),
					   	GetSQLValueString($_POST["Genero"], "text"),
					  	GetSQLValueString($_POST["Imagen"], "text"),
						GetSQLValueString($_POST["idProveedor"], "int"),
					  	GetSQLValueString($_POST["Descripcion"], "text"),
						GetSQLValueString($_POST["idProducto"], "text")
						);

$Result1 = mysqli_query($conn, $updateSQL) or die(mysqli_error($conn));

  $updateGoTo = "productos-lista.php";
  if (isset($_SERVER['QUERY_STRING'])) {
    $updateGoTo .= (strpos($updateGoTo, '?')) ? "&" : "?";
    $updateGoTo .= $_SERVER['QUERY_STRING'];
  }
  header(sprintf("Location: %s", $updateGoTo));
}

?>    
<?php
$query_DatosConsulta = sprintf("SELECT * FROM productos WHERE idProducto=%s", GetSQLValueString($_GET["id"], "int"));
	
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
    <title>Gestion Productos</title>
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
                    <h1 class="page-header">Gestión de Productos</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
	  <a href="productos-lista.php"class="btn btn-outline btn-info">Volver atras</a><br></br>
	  
<div class="row">
 <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Editar Producto
                         </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                  <form action="productos-edit.php" method="post" id="forminsertar" name="forminsertar" role="form" onSubmit="javascript:return validarproductoeditar();">
                                       
										
                                        
										<div class="form-group">
                                            <label>Nombre</label>
                                            <input class="form-control" placeholder="Nombre" name="Nombre" id="Nombre" value="<?php echo $row_DatosConsulta["Nombre"]; ?>" >
                                        </div>
										
										<div class="alert alert-danger oculto" id="errorNombre">Nombre obligatorio</div>
										
										<div class="form-group">
                                            <label>Referencia</label>
                                            <input class="form-control" placeholder="Escribir Referencia" name="Referencia" id="Referencia" value="<?php echo $row_DatosConsulta["Referencia"]; ?>" >
                                        </div>
										<div class="alert alert-danger oculto" id="errorReferencia">Referencia obligatoria</div>
										
										<div>
                                            <div class="form-group">
                                            <label>PrecioUnidad</label>
                                            <input class="form-control" placeholder="Escribir PrecioUnidad" name="PrecioUnidad" id="PrecioUnidad" type="number" value="<?php echo $row_DatosConsulta["PrecioUnidad"]; ?>">
                                        </div>
                                        
                                        <div class="alert alert-danger oculto" id="errorPrecioUnidad">PrecioUnidad obligatorio</div>
                                        
										 <div class="form-group">
                                            <label>idTipos </label>
                                            <input class="form-control" placeholder="Escribir idTipos" name="idTipos" id="idTipos" value="<?php echo $row_DatosConsulta["idTipos"]; ?>">
                                        </div>
                                         
                                         
                                          <div class="alert alert-danger oculto" id="erroridTipos">idTipos obligatorio</div>
										  
										   <div class="form-group">
                                            <label>Color </label>
                                            <input class="form-control" placeholder="Escribir Color" name="Color" id="Color" value="<?php echo $row_DatosConsulta["Color"]; ?>">
                                        </div>
                                         
                                         
                                          <div class="alert alert-danger oculto" id="errorColor">Color obligatorio</div>
										  
										   <div class="form-group">
                                            <label>Talla </label>
                                            <input class="form-control" placeholder="Escribir Talla" name="Talla" id="Talla" value="<?php echo $row_DatosConsulta["Talla"]; ?>">
                                        </div>
                                         
                                         
                                          <div class="alert alert-danger oculto" id="errorTalla">Talla obligatorio</div>
										  
										  <div class="form-group">
                                            <label>Genero</label>
                                            <input class="form-control" placeholder="Escribir Genero" name="Genero" id="Genero" value="<?php echo $row_DatosConsulta["Genero"]; ?>">
                                        </div>
                                         
                                         
                                          <div class="alert alert-danger oculto" id="errorGenero">Genero obligatorio</div>
										  <div class="form-group">
										  
                                            <label>idProveedor</label>
                                            <input class="form-control" placeholder="Escribir idProveedor" name="idProveedor" id="idProveedor" value="<?php echo $row_DatosConsulta["idProveedor"]; ?>">
                                        </div>
                                         
                                         
                                          <div class="alert alert-danger oculto" id="erroridProveedor">idProveedor obligatorio</div>
										  
										   <label>Descripcion</label>
                                            <input class="form-control" placeholder="Escribir Descripcion" name="Descripcion" id="Descripcion" value="<?php echo $row_DatosConsulta["Descripcion"]; ?>">
                                        </div>
                                         
                                         
                                          <div class="alert alert-danger oculto" id="erroridDescripcion">Descripcion obligatorio</div>
										  <?php 
											$nombrecampoimagen="Imagen";
$nombrecampoimagenmostrar="strImagenpic";
$nombrecarpetadestino="../images/usuarios/"; //carpeta destino con barra al final
$nombrecampofichero="file1";
$nombrecampostatus="status1";
$nombrebarraprogreso="progressBar1";
$maximotamanofichero="500000"; //en Bytes, "0" para ilimitado. 1000000 Bytes = 1000Kb = 1Mb
$tiposficheropermitidos="jpg,doc,png"; //  Por ejemplo "jpg,doc,png", separados por comas y poner "0" para permitir todos los tipos
$limiteancho="400"; // En píxels, "0" significa cualquier tamaño permitido
$limitealto="400"; // En píxels, "0" significa cualquier tamaño permitido
									  
$cadenadeparametros="'".$nombrecampoimagen."','".$nombrecampoimagenmostrar."','".$nombrecarpetadestino."','".$nombrecampofichero."','".$nombrecampostatus."','".$nombrebarraprogreso."','".$maximotamanofichero."','".$tiposficheropermitidos."','".$limiteancho."','".$limitealto."'";

//$cadenadeparametros="";

									  
?>

<div class="form-group">
	<label>Imagen</label>
	<input class="form-control"  name="<?php echo $nombrecampoimagen;?>" id="<?php echo $nombrecampoimagen;?>"value="<?php echo $row_DatosConsulta["Imagen"];?>">
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
	<img src="<?php echo $nombrecarpetadestino.$row_DatosConsulta["Imagen"]?>" alt="" id="<?php echo $nombrecampoimagenmostrar;?>">
</div>   
<?php /*?>
//***********************
//***********************
//***********************									  //***********************
// FIN BLOQUE INSERCION IMAGEN
<?php */?>     
                                        
                                        <button type="submit" class="btn btn-success">Editar</button>
                                        <input name="idProducto" type="hidden" id="idProducto" value="<?php echo $row_DatosConsulta["idProducto"]; ?>">
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
