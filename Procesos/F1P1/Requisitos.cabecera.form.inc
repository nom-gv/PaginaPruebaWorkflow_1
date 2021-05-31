<?php
session_start();
$consulta = "select * from usuario where ci = '$ci'";
$resultado = mysqli_query($con, $consulta);
$fila = mysqli_fetch_array($resultado);
$formulario = $fila["formulario"];
?>