<?php
session_start();
include "conexion.inc.php";
$usuario = $_POST['usuario'];
$password = $_POST['password'];

$consulta = "select * from usuario where ci = '$usuario' and password = '$password'";
print_r($consulta);
$resultado = mysqli_query($con, $consulta);
$fila = mysqli_fetch_array($resultado);
if ($fila) {
	$_SESSION['ci'] = $fila['ci'];
	$_SESSION['rol'] = $fila['rol'];
	$_SESSION['nombre'] = $fila['nombre'];
	$_SESSION['fecha_nac'] = $fila['fecha_nac'];
	header('Location: bandeja.php');
} else {
	header('Location: ../index.php?n=1');
}
?>