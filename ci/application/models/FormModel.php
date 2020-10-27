<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

    class FormModel extends CI_Model {
        public function delete_row($id){
            // Chargement de la librairie 'database'
            $this->load->database();

            $this->db->where('pro_id', $id);
            $this->db->delete('produits');
        }
    }