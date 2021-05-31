<?php
session_start();
include "conexion.inc.php";
$flujo = $_GET["flujo"];
$proceso = $_GET["proceso"];
$consulta = "select * from flujo where flujo = '$flujo' and proceso = '$proceso'";
$resultado = mysqli_query($con, $consulta);
$fila = mysqli_fetch_array($resultado);
$formulario = $fila["formulario"];
//include "../Procesos/".$flujo.$proceso."/".$formulario.".cabecera.form.inc.php";
?>

<form method="GET" action="controlador.php">
	<?php
		include "../Procesos/".$flujo.$proceso."/".$formulario.".form.inc.php";
	?>
	<br/>
	<input type="hidden" value="<?php echo $flujo;?>" name="flujo">
	<input type="hidden" value="<?php echo $proceso;?>" name="proceso">
	<input type="submit" value="Atras" name="Atras">
	<input type="submit" value="Continuar" name="Continuar">
</form>