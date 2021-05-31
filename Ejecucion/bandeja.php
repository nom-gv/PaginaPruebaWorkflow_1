<?php
session_start();
include "conexion.inc.php";
$usuario = $_SESSION['ci']; 
$consulta = "select * from seguimiento where fechafin is null and usuario='$usuario'";
$resultado = mysqli_query($con, $consulta);
?>

<table>
	<tr>
		<td>Flujo</td>
		<td>Proceso</td>
		<td>Accion</td>
	</tr>
<?php
while($fila = mysqli_fetch_array($resultado)) {
	echo "<tr>";
	echo "<td>".$fila['codFlujo']."</td>";
	echo "<td>".$fila['codProceso']."</td>";
	echo "<td><a href='motor.php?flujo=".$fila['codFlujo']."&proceso=".$fila['codProceso']."'>Ver</a></td>";
	echo "</tr>";
}
?>
</table>