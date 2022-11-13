<div class="container">
    <h3> Nuevo Nivel </h3>

    <form action= <?php echo base_url("Niveles/guardar");?> method="post">
        <input type="text" name="nombreNivel" id="nombreNivel" placeholder="Nombre nivel">
        <input type="number" name="salario" placeholder="Salario">
        <input type="submit" value="Guardar">
    </form>
</div>
    
