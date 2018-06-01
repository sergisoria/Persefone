<?php require_once('../Connections/conexion.php'); ?>
<?php require_once('../includes/funciones.php'); ?>

<?php

$variable_Consulta = "0";
if (isset($VARIABLE)) {
  $variable_Consulta = $VARIABLE;
}

$currentPage = $_SERVER["PHP_SELF"];
            
            $maxRows_DatosConsulta = 10; // Numero de registros por pagina
            $pageNum_DatosConsulta = 0;  // Seleccion de página actual
            $interval_page = 4; // desde la pagina actual - este valor hasta la pagina actual + este valor
            
            if (isset($_GET['pageNum_DatosConsulta'])) {
              $pageNum_DatosConsulta = $_GET['pageNum_DatosConsulta'];
            }
            $startRow_DatosConsulta = $pageNum_DatosConsulta * $maxRows_DatosConsulta;

if ((isset($_GET["MM_Buscar"])) && ($_GET["MM_Buscar"]=="formbusqueda"))
{
	if ((isset($_GET["intNivel"])) && ($_GET["intNivel"]=="-1"))
	{
		$consultaextendida="";
	}
	else
	{
		$consultaextendida=" AND idTipos=".$_GET["intNivel"];
	}
	$query_DatosConsulta = sprintf("SELECT * FROM productos WHERE Nombre LIKE %s ".$consultaextendida." ORDER BY idProducto ASC",
		  GetSQLValueString("%".$_GET["strBuscar"]."%", "text"));
		  
		  }
else
{
	$query_DatosConsulta = sprintf("SELECT * FROM productos ORDER BY idProducto ASC");
	
	}
	
	
$query_limit_DatosConsulta = sprintf("%s LIMIT %d, %d", $query_DatosConsulta, $startRow_DatosConsulta, $maxRows_DatosConsulta);
$DatosConsulta = mysqli_query($conn,  $query_DatosConsulta) or die(mysqli_error($conn));
$row_DatosConsulta = mysqli_fetch_assoc($DatosConsulta);
$totalRows_DatosConsulta = mysqli_num_rows($DatosConsulta);

if (isset($_GET['totalRows_DatosConsulta'])) {
              $totalRows_DatosConsulta = $_GET['totalRows_DatosConsulta'];
            } else {
              $all_DatosConsulta = mysqli_query($conn,  $query_DatosConsulta);
              $totalRows_DatosConsulta = mysqli_num_rows($all_DatosConsulta);
            }
            $totalPages_DatosConsulta = ceil($totalRows_DatosConsulta/$maxRows_DatosConsulta)-1;
            
            
            
            $queryString_DatosConsulta = "";
            if (!empty($_SERVER['QUERY_STRING'])) {
              $params = explode("&", $_SERVER['QUERY_STRING']);
              $newParams = array();
              foreach ($params as $param) {
                if (stristr($param, "pageNum_DatosConsulta") == false && 
                    stristr($param, "totalRows_DatosConsulta") == false) {
                  array_push($newParams, $param);
                }
              }
              if (count($newParams) != 0) {
                $queryString_DatosConsulta = "&" . htmlentities(implode("&", $newParams));
              }
            }
            $queryString_DatosConsulta = sprintf("&totalRows_DatosConsulta=%d%s", $totalRows_DatosConsulta, $queryString_DatosConsulta);
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
    <title>Lista de Productos</title>
    <!-- InstanceEndEditable -->
   
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
                    <h1 class="page-header">Gestion de Productos</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>            
<div class="row">
<div class="col-lg-5">
		<a href="productos-add.php" class="btn btn-outline btn-primary">Añadir Producto</a>
	</div>
	<div class="col-lg-7">
	<div class="well">

	<form action="productos-lista.php" method="get" id="formbusqueda" name="formbusqueda" role="form">
	
	<div class="row">
	<div class="col-lg-4">
	
	<div class="form-group">
		<input class="form-control" placeholder="Buscar..." name="strBuscar"  id="strBuscar" value="<?php if(isset($_GET["strBuscar"]))echo$_GET["strBuscar"];
		
	?>">
		
	</div>
		</div>
		<div class="col-lg-6">
	<select name="intNivel" class="form-control" id="intNivel">
			<option value="-1" <?php if ((isset($_GET["intNivel"])) && (($_GET["intNivel"]=="-1"))) echo "selected"; ?>>Todos</option>
				<option value="1" <?php if ((isset($_GET["intNivel"])) && (($_GET["intNivel"]=="1"))) echo "selected"; ?>>Camisetas</option>
				<option value="2" <?php if ((isset($_GET["intNivel"])) && (($_GET["intNivel"]=="2"))) echo "selected"; ?>>Vestidos </option>
				<option value="3" <?php if ((isset($_GET["intNivel"])) && (($_GET["intNivel"]=="3"))) echo "selected"; ?>>Vaqueros</option>
				<option value="4" <?php if ((isset($_GET["intNivel"])) && (($_GET["intNivel"]=="4"))) echo "selected"; ?>>Chaquetas y Abrigos</option>
				<option value="5" <?php if ((isset($_GET["intNivel"])) && (($_GET["intNivel"]=="5"))) echo "selected"; ?>>Ropa de Deporte</option>
				<option value="6" <?php if ((isset($_GET["intNivel"])) && (($_GET["intNivel"]=="6"))) echo "selected"; ?>>Americanas</option>
				<option value="7" <?php if ((isset($_GET["intNivel"])) && (($_GET["intNivel"]=="7"))) echo "selected"; ?>>Zapatos</option>
				<option value="8" <?php if ((isset($_GET["intNivel"])) && (($_GET["intNivel"]=="8"))) echo "selected"; ?>>Armani Masculino</option>
				<option value="9" <?php if ((isset($_GET["intNivel"])) && (($_GET["intNivel"]=="9"))) echo "selected"; ?>>Armani Femenino</option>
			</select>
			</div>
				<div class="col-lg-2">
			
	<button type="submit" class="btn btn-success">Buscar</button>
		</div>
	
	<input name="MM_Buscar" type="hidden" id="MM_Buscar" value="formbusqueda">
		</div>
		</form>
		</div>

	</div>
</div>
	<div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Resultado
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                               <?php if ($totalRows_DatosConsulta > 0) {  ?>
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>idProductos</th>
                                            <th>Nombre</th>
                                            <th>Referencia</th>
                                            <th>PrecioUnidad</th>
                                            <th>Tipo</th>
                                            <th>Color</th>
                                            <th>Talla</th>
                                            <th>Genero</th>
                                            <th>Imagen</th>
                                            <th>Opciones</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
          <?php 
		//AQUI ES DONDE SE SACAN LOS DATOS, SE COMPRUEBA QUE HAY RESULTADOS
		
			 do { 
              		?>
              		
				<tr>
				<td><?php echo $row_DatosConsulta["idProducto"];?></td>
            
            <td>
           
						<?php if ($row_DatosConsulta["Imagen"]!=""){?>
            <img src="../images/productos/<?php echo $row_DatosConsulta["Imagen"];?>" width="50" height="50" alt=""/>
						<?php }
						else
						{?>
						<img src="../images/productos/sinfoto.jpg" width="30" height="30" alt=""/>
						<?php }?></td>
						<td><?php echo $row_DatosConsulta["idProducto"];?></td>
						<td><?php echo $row_DatosConsulta["Nombre"];?></td>
						<td><?php echo $row_DatosConsulta["Referencia"];?></td>
						<td><?php echo $row_DatosConsulta["PrecioUnidad"];?></td>
						<td><?php echo $row_DatosConsulta["idTipos"];?></td>
						<td><?php echo $row_DatosConsulta["Color"];?></td>
						<td><?php echo $row_DatosConsulta["Talla"];?></td>
						
						<td><?php echo $row_DatosConsulta["Genero"];?></td>
						
						<td><?php echo '<img src=".'.$row_DatosConsulta["Imagen"].'"width="100" height="100"/>';?></td>
						 
						  <td><a href="productos-edit.php?id=<?php echo $row_DatosConsulta["idProducto"];?>" class="btn btn-warning btn-circle"><i class="fa fa-edit"></i></a></td>
            	          
						
						
						
				
				</tr>
              		
              		<?php
              		 } while ($row_DatosConsulta = mysqli_fetch_assoc($DatosConsulta)); 
	?>
   
                                    </tbody>
                                </table>
                                <!-- inicio paginacion--> 
        
            <?php      
        } 
		else
		 { //MOSTRAR SI NO HAY RESULTADOS ?>
               <?php if ($totalRows_DatosConsulta == '0'){
					$echo("No hay resultados "); } 
		 }	 ?>
                            </div>
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
<?php
//AÑADIR AL FINAL DE LA PÁGINA
mysqli_free_result($DatosConsulta);
?>
 
