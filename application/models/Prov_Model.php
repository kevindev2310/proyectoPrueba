<?php
class Prov_Model extends CI_Model{
    
    public function listaProveedores(){
        //Lo que va entre comillas de la funcion get, coincide con la DB
        $query= $this -> db-> get('proveedor');
        return $query-> result();
    }

    public function guardarProveedor($datos)
    {
        $this -> db -> insert ('proveedor',$datos);
    }
}
