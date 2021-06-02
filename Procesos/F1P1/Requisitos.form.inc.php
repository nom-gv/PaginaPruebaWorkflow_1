<div class="cuerpoP1F1">
	<div class="InscripcionSeccion">
		<h2>Fecha de Inscripción</h2>
		<input type="text" name="fecha_inc" value="<?php echo $fecha_inc?>" disabled>
	</div>
	<div class="datosRequisitos">
		<div>
			<div class="subtituloRequisito">
				<h2>Información del Estudiante</h2>
			</div>
			<div class="datosEstudiantes">
				<label>Nombre</label>
				<input type="text" name="nombre" value="<?php echo $nombre?>" disabled>
			</div>
			<div class="datosEstudiantes">
				<label>CI</label>
				<input type="text" name="ci" value="<?php echo $usuario?>" disabled>
			</div>
			<div class="datosEstudiantes">
				<label>Fecha de Nacimiento</label>
				<input type="text" name="fecha_nac" value="<?php echo $fecha_nac?>" disabled>
			</div>
		</div>

		<div>
			<div class="subtituloRequisito">
				<h2>Documentos Requeridos</h2>
				<p>(Debe escanear sus documentos y subirlos en formato imagen (.jpg).<br/>Deben presentarse antes de la fecha de Inscripción)</p>
			</div>
			<div class="datosEstudiantes">
				<input type="text" name="cedula" value="Cedula de Identidad" disabled>
			</div>
			<div class="datosEstudiantes">
				<input type="text" name="habilitacion" value="Certificado de Habilitación" disabled>
			</div>
			<div class="datosEstudiantes">
				<input type="text" name="nacimiento" value="Certificado de Nacimiento Original" disabled>
			</div>
			<div class="datosEstudiantes">
				<input type="text" name="bachiller" value="Fotocopia Legalizada de Titulo de Bachiller" disabled>
			</div>
		</div>
	</div>
</div>