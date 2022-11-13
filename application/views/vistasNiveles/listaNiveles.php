
    <div class="encabezado">
    Lista niveles 
    </div>
    <?php if($this->session->flashdata('status')) : ?>
    <div class="alert alert-success">
    <?= $this->session->flashdata('status'); ?>
        </div>
    <?php endif; ?>
    <div class="container">
        <a href= <?php echo base_url("Niveles/nuevo");
        ?>>
            + Nuevo
        </a>

        <!--<a href= <?php echo base_url("Niveles/reporteNiveles");
        ?>>
            Reporte
        </a>!-->
    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Nivel</th>
                <th scope="col">Salario</th>
                <th scope="col">Editar</th>
                <th scope="col">Eliminar</th>
            </tr>
        </thead>
        <tbody>
            <?php
            foreach($datosNiveles as $dN):
            ?>
            <tr>
            <th scope="row">
                <?php
                echo $dN->idLista;
                ?>
            </th>
            <td>
                <?php
                echo $dN->nivel;
                ?>
            </td>
            <td>
                <?php
                echo $dN-> salario;
                ?>
            </td>
            <td>
                <a href =<?php echo base_url("Niveles/editar/". $dN-> idLista);?> >
                Editar
                <a>
            </td>
            <td>
                <a href =<?php echo base_url("Niveles/eliminar/". $dN-> idLista);?> >
                Eliminar
                <a>
            </td>
            </tr>
            <?php
             endforeach;
            ?>
        </tbody>
    </table>
       
    </div>
