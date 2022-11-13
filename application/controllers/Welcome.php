<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function index()
	{
		// leer el modelo
		$this->load->model('Prov_Model');
		$this->load->model('Niveles_Model'); 
		$this->load->model('Empleados_Model'); 
		$datos['datosProveedor']= $this->Prov_Model->listaProveedores();
		$datos['datosNivel']=$this ->Niveles_Model->listaNiveles();
		$datos['datosEmpleados']=$this ->Empleados_Model->listaEmpleados();
		$datos['saludo']= "hola";
		$this->load->view('empleados', $datos);
	}
}
