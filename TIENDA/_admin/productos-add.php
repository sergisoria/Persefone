<?php require_once('../Connections/conexion.php'); ?>
<?php require_once('../includes/funciones.php'); ?>
            
             
<?php

$editFormAction = $_SERVER['PHP_SELF'];
if (isset($_SERVER['QUERY_STRING'])) {
  $editFormAction .= "?" . htmlentities($_SERVER['QUERY_STRING']);
}

if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "forminsertar")) {

  $insertSQL = sprintf("INSERT INTO productos(Nombre,Referencia,PrecioUnidad,idTipos,Color,Talla,Genero,Imagen,idProveedor,Descripcion) VALUES ( %s, %s, %s, %s, %s, %s,%s,%s,%s,%s)",
                      	
					  	GetSQLValueString($_POST["Nombre"], "text"),
					    GetSQLValueString($_POST["Referencia"], "int"),
					   	GetSQLValueString($_POST["PrecioUnidad"], "int"),
					  	GetSQLValueString($_POST["idTipos"], "int"),
					  	GetSQLValueString($_POST["Color"], "text"),
					   	GetSQLValueString($_POST["Talla"], "text"),
					    GetSQLValueString($_POST["Genero"], "text"),
						GetSQLValueString($_POST["Imagen"], "text"),
  						GetSQLValueString($_POST["idProveedor"], "int"),
						GetSQLValueString($_POST["Descripcion"], "text"));
						
  $Result1 = mysqli_query($conn,  $insertSQL) or die(mysqli_error($conn));


  $insertGoTo ="productos-lista.php";
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
                    <h1 class="page-header">Gestión de Productos</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
	  <a href="productos-lista.php"class="btn btn-outline btn-info">Volver atras</a><br></br>
            
<div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Añadir Producto
                         </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                  <form action="productos-add.php" method="post" id="forminsertar" name="forminsertar" role="form">
                                       
                                        <div class="form-group">
                                            <label>Nombre</label>
                                            <input class="form-control" placeholder="Escribe el Nombre" name="Nombre" id=" Nombre">
                                        </div>
                                       
                                           
                                        <div class="form-group">
                                            <label>Referencia</label>
                                            <input class="form-control" placeholder="Escribe la Referencia" name="Referencia" id="Referencia" type="number">
                                        </div>
                                        
                                        <div>
                                            <div class="form-group">
                                            <label>PrecioUnidad</label>
                                            <input class="form-control" placeholder="Escribe el Precio Unidad" name="PrecioUnidad" id="PrecioUnidad" type="number">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>idTipo </label>
                                            <input class="form-control" placeholder="Escribe el idTipo" name="idTipos" id="idTipos">
                                        </div>
                                         
                                          <div class="form-group">
                                            <label>Color </label>
                                            <input class="form-control" placeholder="Escribe el Color" name="Color" id="Color">
                                        </div>  
                                        
                                         <div class="form-group">
                                            <label>Genero </label>
                                            <input class="form-control" placeholder="Escribe el Genero" name="Genero" id="Genero">
                                      
                                        </div>
                                        
                                       	<div class="form-group">
										<label>Talla</label>
										<select name="Talla" class="form-control" id="Talla">
										<option value="2XS">2XS </option>
										<option value="XS">XS </option>
										<option value="S">S </option>
										<option value="M">M </option>
                						<option value="L">L </option>
                                    	<option value="XL">XL </option>
										<option value="2XL">2XL </option>
										<option value="3XL">3XL </option>
										</select>
										
						 				 </div>  
                                            <div class="form-group">
                                            <label>idProveedor </label>
                                            <input class="form-control" placeholder="Escriba el idProveedor" name="idProveedor" id="idProveedor">
                                        </div>  
										
										 </div>  
                                            <div class="form-group">
                                            <label>Descripcion </label>
                                            <input class="form-control" placeholder="Escriba la descripcion" name="Descripcion" id="Descripcion">
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
$nombrecarpetadestino="../images/productos/"; //carpeta destino con barra al final
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

                                         
	
       
       