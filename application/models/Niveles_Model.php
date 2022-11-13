<?php
class Niveles_Model extends CI_Model{

    public function listaNiveles(){

        $query= $this -> db -> get('listaNiveles');
        return $query-> result();
    }

    public function guardarNivel($datos)
    {
        $this-> db -> insert ('listaNiveles', $datos);
    }

    public function buscarNivel($id)
    {
        $this->db->where('idLista', $id);
        $query = $this->db->get('listaNiveles');
        return $query->row();
    }

    public function actualizarNivel($datos,$idNivel) {
        $this->db->where('idLista', $idNivel);
        $this->db->update('listaNiveles', $datos);
    }

    public function eliminarNivel($id)
    {
        $this->db->where('idLista',$id);
        $this->db->delete('listaNiveles');
    }
}
