<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function index()
	{
		// leer el modelo
		$this -> load -> view('plantillas/header');
		$this->load->view('dash');
		$this -> load -> view('plantillas/footer');

	}
}
