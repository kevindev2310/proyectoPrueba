
<body> 
   Lista empleados
    <?php if($this->session->flashdata('status')) : ?>
    <div class="alert alert-success">
    <?= $this->session->flashdata('status'); ?>
        </div>
    <?php endif; ?>
    <div class="container">
    <a href = <?php echo base_url("Empleados/nuevo");
     ?> >
        +Nuevo
    </a>
    <table class="table table-striped">
        <thead>
            <tr>
            <th scope="col">ID</th>
            <th scope="col">Nombre</th>
            <th scope="col">Nivel</th>
            <th scope="col">Usuario</th>
            <th scope="col">Correo</th>
            <th scope="col">Contraseña</th>
            <th scope="col">Telefono</th>
            </tr>
        </thead>
        <tbody>
            <?php
            foreach($datosEmpleados as $dE):
            ?>
            <tr>
            <th scope="row">
                <?php
                echo $dE->no_empleado;
                ?>
            </th>
            <td>
                <?php
                echo $dE->nombre;
                ?>
            </td>
            <td>
                <?php
                echo $dE-> nivel;
                ?>
            </td>
            <td>
                <?php
                echo $dE-> usuario;
                ?>
            </td>
            <td>
                <?php
                echo $dE-> correo;
                ?>
            </td>
            <td>
                <?php
                echo $dE-> password;
                ?>
            </td>
            <td>
                <?php
                echo $dE-> telefono;
                ?>
            </td>
            </tr>
            <?php
             endforeach;
            ?>
        </tbody>
    </table>
    </div>
</body>