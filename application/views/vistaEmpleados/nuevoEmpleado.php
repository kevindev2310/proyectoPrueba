<div class="container">
    <h3> Nuevo Empleado </h3>

    <form action= <?php echo base_url("Empleados/guardar");?> method="post">
        <input type="text" name="nombre" id="nombre" placeholder="Nombre">
        <input type="number" name="nivel" placeholder="Nivel">
        <input type="text" name="usuario" placeholder="Usuario">
        <input type="text" name="correo" placeholder="Correo">
        <input type="text" name="password" placeholder="Constraseña">
        <input type="number" name="telefono" placeholder="Telefono">
        <input type="submit" value="Guardar">
    </form>
</div>