<div class="container">
<h3> Nuevo proveedor </h3>

    <form action= <?php echo base_url("Proveedores/guardar");?> method="post">
        <input type="text" name="nombre" id="nombre" placeholder="Nombre">
        <input type="text" name="aPaterno" id="aPaterno" placeholder="Apellido paterno">
        <input type="text" name="aMaterno" id="aMaterno" placeholder="Apellido materno">
        <input type="number" name="telefono" id="telefono" placeholder="Telefono">
        <input type="submit" value="Guardar">
    </form>
</div>
    
