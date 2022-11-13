
    Lista de Usuarios
    <?php if($this->session->flashdata('status')) : ?>
    <div class="alert alert-success">
    <?= $this->session->flashdata('status'); ?>
        </div>
    <?php endif; ?>
   <div class="container">  
     <a href = <?php echo base_url("Proveedores/nuevo");
     ?> >
        +Nuevo
    </a>
    <table class="table">
  <thead>
    <tr>
      <th scope="col">No.</th>
      <th scope="col">Nombre</th>
      <th scope="col">Telefono</th>
      <th scope="col">Activo</th>
    </tr>
  </thead>
  <tbody>
  <?php 
        foreach($datosProveedor as $dP):   
    ?>
    <tr>
      <th scope="row">
          <?php echo $dP->idProveedor;?>
      </th>
      <td>
        <?php echo $dP->nombre . " ";
            echo $dP->aPaterno. " ";
            echo $dP->aMaterno;
        ?>
      </td>
      <td>  <?php echo $dP->Telefono;?></td>
      <td> <?php echo $dP->activo;?></td>
    </tr>
    <?php 
        endforeach;
    ?>
  </tbody>
</table>
</div>
   

    
  
