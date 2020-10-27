<?php
    // application/controllers/Produits.php

    defined('BASEPATH') OR exit('No direct script access allowed');

    class Produits extends CI_Controller 
    {

        public function liste()
        {
            //Charge le modèle
            // $this->load->model('m_Produits');
            
            // Charge la librairie 'database'
            $this->load->database();

            // Exécute la requête 
            $results = $this->db->query("SELECT * FROM produits");

            // Récupération des résultats    
            $aListe = $results->result();   

            // Ajoute des résultats de la requête au tableau des variables à transmettre à la vue   
            $aView["liste_produits"] = $aListe;

            // Appel de la vue avec transmission du tableau  
            $this->load->view('header');
            $this->load->view('liste', $aView);
            $this->load->view('footer');
        }

        public function product($id)
        {
            $this->load->database();

            // Exécute la requête 
            $results = $this->db->query("SELECT * FROM produits WHERE pro_id=$id"); 
            
             // Récupération des résultats    
             $aListe = $results->row();
             

             // Ajoute des résultats de la requête au tableau des variables à transmettre à la vue   
             $aView["liste_produits"] = $aListe;

            $this->load->view('header');
            $this->load->view('product', $aView);
            $this->load->view('footer');
        }
    }
?>