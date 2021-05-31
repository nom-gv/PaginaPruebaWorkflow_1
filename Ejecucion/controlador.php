<?php
include "conexion.inc.php";
$flujo = $_GET["flujo"];
$proceso = $_GET["proceso"];
if (isset($_GET["Continuar"])) {
	print_r("Hola");
	$consulta = "select * from flujo where flujo = '$flujo' and proceso = '$proceso'";
	$resultado = mysqli_query($con, $consulta);
	$fila = mysqli_fetch_array($resultado);
	$procesosiguiente = $fila["proceso_siguiente"];
	header("Location: motor.php?flujo=$flujo&proceso=$procesosiguiente");
}
else {
	$consulta = "select * from flujo where flujo = '$flujo' and proceso_siguiente = '$proceso'";
	$resultado = mysqli_query($con, $consulta);
	$fila = mysqli_fetch_array($resultado);
	$proceso = $fila["proceso"];
	header("Location: motor.php?flujo=$flujo&proceso=$proceso");
}

?>