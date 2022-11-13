<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Niveles extends CI_Controller {

	public function index()
	{
		// leer el modelo
		$this->load->model('Niveles_Model');
        $datos['datosNiveles']= $this->Niveles_Model->listaNiveles();
        $this -> load -> view ('plantillas/header');
        $this->load->view('vistasNiveles/listaNiveles', $datos);
        $this -> load -> view ('plantillas/footer');
	}

    public function nuevo()
    {
        $this -> load -> view ('plantillas/header');
        $this -> load-> view ('vistasNiveles/nuevoNivel');
        $this -> load -> view ('plantillas/footer');
    }

    public function guardar()
    {
        $nombreNivel= $this-> input -> post ("nombreNivel");
        $salario = $this -> input-> post("salario");
        $datos= [
            'idLista' => null, 
            'nivel'=> $nombreNivel,
            'salario' => $salario
        ];
        //Enviar datos al modelo
        $this-> load-> model('Niveles_Model');
        $this -> Niveles_Model-> guardarNivel($datos);
        $this -> session-> set_flashdata('status', 'Información insertada correctamente');
        redirect('Niveles');
    }

    public function editar($id)
    {
        $this->load->model('Niveles_Model');
        $dato['nivel'] = $this->Niveles_Model->buscarNivel($id);
        $this -> load -> view ('plantillas/header');
        $this -> load-> view ('vistasNiveles/editarNivel',$dato);
        $this -> load -> view ('plantillas/footer');
    }

    public function actualizar()
    {
        $nombreNivel= $this-> input -> post ("nombreNivel");
        $salario = $this -> input-> post("salario");
        $idNivel = $this -> input-> post("idNivel");
        $datos= [
            'idLista' => $idNivel, 
            'nivel'=> $nombreNivel,
            'salario' => $salario
        ];
        //Enviar datos al modelo
        $this-> load-> model('Niveles_Model');
        $this -> Niveles_Model-> actualizarNivel($datos,$idNivel);
        $this -> session-> set_flashdata('status', 'Información actualizada correctamente');
        redirect('Niveles');
    }

    public function eliminar($id)
    {
        $this-> load-> model('Niveles_Model');
        $this -> Niveles_Model-> eliminarNivel($id);
        $this -> session-> set_flashdata('status', 'Información eliminada correctamente');
        redirect('Niveles');
    }

    public function reporteNiveles()
    {
        $this -> load-> view ('vistasNiveles/reporte');
    }

}