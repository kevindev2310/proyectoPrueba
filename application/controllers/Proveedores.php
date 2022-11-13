<?php
defined ('BASEPATH') OR exit ('No direct script access allowed');

class Proveedores extends CI_Controller {
    public function index()
    {
        $this-> load-> model('Prov_Model');
        $datos['datosProveedor']= $this -> Prov_Model-> listaProveedores();
        $this -> load -> view ('plantillas/header');
        $this -> load -> view ('vistasProveedores/proveedores', $datos);
        $this -> load -> view ('plantillas/footer');
    }

    public function nuevo ()
    {
        $this -> load -> view ('plantillas/header');
        $this -> load -> view ('vistasProveedores/nuevoProveedor');
        $this -> load -> view ('plantillas/footer');
    }

    public function guardar ()
    {
        $nombre= $this -> input -> post("nombre");
        $aPaterno= $this -> input -> post("aPaterno");
        $aMaterno= $this -> input -> post("aMaterno");
        $telefono= $this -> input -> post("telefono");
        $datos=[
            'idProveedor' => null,
            'nombre' => $nombre,
            'aPaterno' => $aPaterno,
            'aMaterno' => $aMaterno,
            'telefono' => $telefono,
            'activo' => 1
        ];

        $this-> load-> model('Prov_Model');
        $this-> Prov_Model-> guardarProveedor($datos);
        $this -> session-> set_flashdata('status', 'Información insertada correctamente');
        redirect('Proveedores');
    }
}