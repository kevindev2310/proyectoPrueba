<?php
class Empleados_Model extends CI_Model{

    public function listaEmpleados(){

        $query= $this -> db -> get('empleado');
        return $query-> result();
    }
    public function guardarNivel($datos)
    {
        $this-> db -> insert ('empleado', $datos);
    }
}

