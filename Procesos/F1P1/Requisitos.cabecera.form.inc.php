<?php
session_start();
include "../Ejecucion/conexion.inc.php";
$nombre = $_SESSION['nombre'];
$usuario = $_SESSION['usuario'];
$fecha_nac = $_SESSION['fecha_nac'];
$fecha_inc = $_SESSION['fecha_inc'];
?>