<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Empleados extends CI_Controller {

	public function index()
	{
		// leer el modelo
		$this->load->model('Empleados_Model');
        $datos['datosEmpleados']= $this->Empleados_Model->listaEmpleados();
        $this -> load -> view ('plantillas/header');
        $this->load->view('vistaEmpleados/empleados', $datos);
        $this -> load -> view ('plantillas/footer');
	}

    public function nuevo()
    {
        $this -> load -> view ('plantillas/header');
        $this -> load-> view ('vistaEmpleados/nuevoEmpleado');
        $this -> load -> view ('plantillas/footer');
    }

      public function guardar()
    {
        $nombre= $this-> input -> post ("nombre");
        $nivel = $this -> input-> post("nivel");
        $usuario = $this -> input-> post("usuario");
        $correo = $this -> input-> post("correo");
        $password = $this -> input-> post("password");
        $telefono = $this -> input-> post("telefono");
        $datos= [
            'no_empleado' => null, 
            'nombre'=> $nombre,
            'nivel' => $nivel,
            'usuario'=> $usuario,
            'correo' => $correo,
            'password' => $password,
            'telefono'=> $telefono
        ];
        //Enviar datos al modelo
        $this-> load-> model('Empleados_Model');
        $this -> Empleados_Model-> guardarNivel($datos);
        $this -> session-> set_flashdata('status', 'Información insertada correctamente');
        redirect('Empleados');
    }

}