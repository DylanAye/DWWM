<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

    class ProduitsModel extends CI_Model {

        public function liste()
        {
            // Charge la librairie 'database'
            $this->load->database();

            // Exécute la requête 
            $requete = $this->db->query("SELECT * FROM produits");

            // Récupération des résultats
            $aProduits = $requete->result();

            return $aProduits;   
        }
    }