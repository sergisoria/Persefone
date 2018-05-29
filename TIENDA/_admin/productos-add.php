<?php require_once('../Connections/conexion.php'); ?>
<?php require_once('../includes/funciones.php'); ?>
            
             
<?php

$editFormAction = $_SERVER['PHP_SELF'];
if (isset($_SERVER['QUERY_STRING'])) {
  $editFormAction .= "?" . htmlentities($_SERVER['QUERY_STRING']);
}

if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "forminsertarpro")) {

  $insertSQL = sprintf("INSERT INTO productos(Nombre,Referencia,Stock,PrecioUnidad,Tipo,Color,Genero,Talla,idProveedor) VALUES ( %s, %s, %s, %s, %s, %s, %s,%s,%s )",
                      	
					  	GetSQLValueString($_POST["Nombre"], "text"),
					  	GetSQLValueString($_POST["Referencia"], "text"),
					  	GetSQLValueString($_POST["Stock"], "int"),
					   	GetSQLValueString($_POST["PrecioUnidad"], "int"),
					  	GetSQLValueString($_POST["Tipo"], "text"),
					  	GetSQLValueString($_POST["Color"], "text"),
					   GetSQLValueString($_POST["Genero"], "text"),
					  	GetSQLValueString($_POST["Talla"], "text"),
						//GetSQLValueString($_POST["Imagen"], "text"),
  						GetSQLValueString($_POST["idProveedor"], "text"));
	
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
<html lang="en"><!-- InstanceBegin template="/Templates/Administracion.dwt.php" codeOutsideHTMLIsLocked="false" -->

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
                                  <form action="productos-add.php" method="post" id="forminsertarpro" name="forminsertarpro" role="form">
                                       
                                        <div class="form-group">
                                            <label>Nombre</label>
                                            <input class="form-control" placeholder="Nombre" name="Nombre" id=" Nombre">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Referencia</label>
                                            <input class="form-control" placeholder="Referencia" name="Referencia" id="Referencia">
                                        </div>
                                           
                                        <div class="form-group">
                                            <label>Stock</label>
                                            <input class="form-control" placeholder="e-mail" name="Stock" id="Stock" type="number">
                                        </div>
                                        
                                        <div>
                                            <div class="form-group">
                                            <label>PrecioUnidad</label>
                                            <input class="form-control" placeholder="e-mail" name="PrecioUnidad" id="PrecioUnidad" type="number">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Tipo </label>
                                            <input class="form-control" placeholder="Tipo" name="Tipo" id="Tipo">
                                        </div>
                                         
                                          <div class="form-group">
                                            <label>Color </label>
                                            <input class="form-control" placeholder="Escribir Apellido del usuario" name="Color" id="Color">
                                        </div>  
                                        
                                         <div class="form-group">
                                            <label>Genero </label>
                                            <input class="form-control" placeholder="Escribir Apellido del usuario" name="Genero" id="Genero">
                                        </div>  
                                            
                                             <div class="form-group">
                                            <label>idProveedor </label>
                                            <input class="form-control" placeholder="Escribir Apellido del usuario" name="idProveedor" id="idProveedor">
                                        </div>  
                                        
                                       	<div class="form-group">
						<label>Nivel de Usuario</label>
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
         	<label>File input</label>
        	<input type="file" input id="Imagen" name="Imagen" >
        </div>
      
     
				
			</select>
		
                                <button type="submit" class="btn btn-success">Añadir</button>
                                      <input name="MM_insert" type="hidden" id="MM_insert" value="forminsertarpro">
                                       
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