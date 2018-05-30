<?php require_once('../Connections/conexion.php'); ?>
<?php require_once('../includes/funciones.php'); ?>
 
<?php
 
$variable_Consulta = "0";
if (isset($VARIABLE)) {
  $variable_Consulta = $VARIABLE;
}
/**************************************************************/
/**********************************         PAGINACION         /
/**************************************************************/

			
            $currentPage = $_SERVER["PHP_SELF"];
            
            $maxRows_DatosConsulta = 10; // Numero de registros por pagina
            $pageNum_DatosConsulta = 0;  // Seleccion de página actual
            $interval_page = 4; // desde la pagina actual - este valor hasta la pagina actual + este valor
            
            if (isset($_GET['pageNum_DatosConsulta'])) {
              $pageNum_DatosConsulta = $_GET['pageNum_DatosConsulta'];
            }
            $startRow_DatosConsulta = $pageNum_DatosConsulta * $maxRows_DatosConsulta;
/*************************************************************/
/*************************************************************/
/*************************************************************/

if ((isset($_GET["MM_Buscar"])) && ($_GET["MM_Buscar"]=="formbusqueda"))
{
	if ((isset($_GET["intNivel"])) && ($_GET["intNivel"]=="-1"))
	{
		$consultaextendida="";
	}
	else
	{
		$consultaextendida=" AND Rol=".$_GET["intNivel"];
	}
	
	$query_DatosConsulta = sprintf("SELECT * FROM usuarios WHERE Nombre LIKE %s ".$consultaextendida." ORDER BY idUsuario ASC",
		  GetSQLValueString("%".$_GET["strBuscar"]."%", "text"));
	//echo $query_DatosConsulta;
}
else
{
	$query_DatosConsulta = sprintf("SELECT * FROM usuarios ORDER BY idUsuario ASC");
	
	}

$query_limit_DatosConsulta = sprintf("%s LIMIT %d, %d", $query_DatosConsulta, $startRow_DatosConsulta, $maxRows_DatosConsulta);
$DatosConsulta = mysqli_query($conn,  $query_DatosConsulta) or die(mysqli_error($conn));
$row_DatosConsulta = mysqli_fetch_assoc($DatosConsulta);
$totalRows_DatosConsulta = mysqli_num_rows($DatosConsulta);


/**************************************************************/
/**********************************         PAGINACION         /
/**************************************************************/
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
/*************************************************************/
/*************************************************************/
/*************************************************************/
//FINAL DE LA PARTE SUPERIOR
 
 
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
    <title>Usuario Lista</title>
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
                    <h1 class="page-header">Gestión de Usuarios</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
   <div class="row">
	<div class="col-lg-5">
		<a href="usuario-add.php" class="btn btn-outline btn-primary">Añadir Usuario</a>
	</div>
	<div class="col-lg-7">
	<div class="well">

	<form action="usuario-lista.php" method="get" id="formbusqueda" name="formbusqueda" role="form">
	
	<div class="row">
	<div class="col-lg-4">
	
	<div class="form-group">
		<input class="form-control" placeholder="Buscar..." name="strBuscar"  id="strBuscar" value="<?php if(isset($_GET["strBuscar"]))echo$_GET["strBuscar"];
		
	?>">
		
	</div>
		</div>
		<div class="col-lg-6">
	<select name="intNivel" class="form-control" id="intNivel">
			<option value="-1" <?php if ((isset($_GET["intNivel"])) && (($_GET["intNivel"]=="-1"))) echo "selected"; ?>  >Todos</option>
				<option value="0" <?php if ((isset($_GET["intNivel"])) && (($_GET["intNivel"]=="0"))) echo "selected"; ?>>0: Usuario público de tienda</option>
				<option value="1" <?php if ((isset($_GET["intNivel"])) && (($_GET["intNivel"]=="1"))) echo "selected"; ?>>1: SuperAdministrador </option>
				<option value="10" <?php if ((isset($_GET["intNivel"])) && (($_GET["intNivel"]=="10"))) echo "selected"; ?>>10: Gestor de Ventas</option>
				<option value="100" <?php if ((isset($_GET["intNivel"])) && (($_GET["intNivel"]=="100"))) echo "selected"; ?>>100: Gestor de Productos</option>
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
                                          
                                            <th><p class="fa fa-key">_ID_</p></th>
                                            <th><p class="fa fa-user">_Nombre_</p></th>
                                            <th><p class="fa fa-envelope-o">Email</p></th>
                                          	<th><p class="fa fa-user">Rol</p></th>
                                          	<th><p class="fa fa-user">Estado</p></th>
                                          	<th><p class="fa fa-user">Aciones</p></th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                      
  <?php 
    //AQUI ES DONDE SE SACAN LOS DATOS, SE COMPRUEBA QUE HAY RESULTADOS
    
       do { 
                  ?>
		 <tr>
            <td><?php echo $row_DatosConsulta["idUsuario"];?></td>
            <td><?php echo $row_DatosConsulta["Nombre"];?></td>
            <td><?php echo $row_DatosConsulta["Correo"];?></td>
            <td><?php echo MostrarNivel($row_DatosConsulta["Rol"]);?></td>
            <td><?php echo MostrarEstado($row_DatosConsulta["Status"]);?></td>
           	<td><a href="usuario-edit.php?id=<?php echo $row_DatosConsulta["idUsuario"];?>" class="btn btn-success btn-circle"></td>
            
            
        </tr>
                  
                  <?php
                   } while ($row_DatosConsulta = mysqli_fetch_assoc($DatosConsulta)); 
  ?>
   
                                    </tbody>
                                </table>
                                <!-- inicio paginacion--> 
            <ul class="pagination">
		<?php if ($pageNum_DatosConsulta > 0) { // Show if not first page ?>
			<li><a href="<?php printf("%s?pageNum_DatosConsulta=%d%s", $currentPage, 0, $queryString_DatosConsulta); ?>" title="Primero">Primero</a></li>
		<?php } // Show if not first page ?>
		<?php if ($pageNum_DatosConsulta > 0) { // Show if not first page ?>
                	<li><a href="<?php printf("%s?pageNum_DatosConsulta=%d%s", $currentPage, max(0, $pageNum_DatosConsulta - 1), $queryString_DatosConsulta); ?>" title="Anterior">&laquo;</a></li> 								
		<?php } // Show if not first page 
                if ($pageNum_DatosConsulta-$interval_page<1){
		 $inicio = 0;
		 } else{
		 $inicio = $pageNum_DatosConsulta-$interval_page;
		 }
		 if ($pageNum_DatosConsulta+$interval_page>=$totalPages_DatosConsulta){
			$final = $totalPages_DatosConsulta;
			} else{
			 $final = $pageNum_DatosConsulta+$interval_page;
			}
			for ($pagina=$inicio; $pagina<=$final; ++$pagina){
				if ($pagina==$pageNum_DatosConsulta){
					$clase = "active";
				} 
				else 
				{
					$clase = "";
				}?>
				<li class="<?php echo $clase; ?>"><a href="<?php printf("%s?pageNum_DatosConsulta=%d%s", $currentPage, min($totalPages_DatosConsulta,$pagina), $queryString_DatosConsulta); ?>"  title="<?php echo $pagina+1; ?>"><?php echo $pagina+1; ?></a></li>				<?php }?>
                        <?php if ($pageNum_DatosConsulta < $totalPages_DatosConsulta) { // Show if not last page ?>
			<li class="disabled"><a href="#">...</a></li>								
			<li><a href="<?php printf("%s?pageNum_DatosConsulta=%d%s", $currentPage, min($totalPages_DatosConsulta, $pageNum_DatosConsulta + 1), $queryString_DatosConsulta); ?>" title="Siguiente">&raquo;</a></li>									<?php } // Show if not last page ?>
			<?php if ($pageNum_DatosConsulta < $totalPages_DatosConsulta) { // Show if not last page ?>							<li><a href="<?php printf("%s?pageNum_DatosConsulta=%d%s", $currentPage, $totalPages_DatosConsulta, $queryString_DatosConsulta); ?>" title="Ultimo">Último</a></li>							
			<?php } // Show if not last page ?>       
	</ul>
            <?php      
        } 
		else
		 { //MOSTRAR SI NO HAY RESULTADOS ?>
                No hay resultados.
                <?php } ?>
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
 

	
            