<?php
    // application/controllers/Form.php

    defined('BASEPATH') OR exit('No direct script access allowed');

    class Form extends CI_Controller 
    {
        public function ajouter()
        {
            // Chargement des assistants 'form' et 'url'
            $this->load->helper('form', 'url'); 

            // Chargement de la librairie 'database'
            $this->load->database(); 

            // Chargement de la librairie form_validation
            $this->load->library('form_validation'); 

            if ($this->input->post()) 
            { // 2ème appel de la page: traitement du formulaire
                
                $data = $this->input->post();

                // Ces valeurs peuvent ne pas avoir d'entrée
                unset($data["pro_d_modif"]);
                unset($data["pro_photo"]);
    
                // Ajout d'une date d'ajout que le formulaire ne contient pas
                $data["pro_d_ajout"] = date("Y-m-d h:i:s");

                // Transformation d'une information venant du formalaire
                // par exemple forcer la référence d'un produit en majuscules
                $pro_ref = $this->input->post("pro_ref");
                $data["pro_ref"] = strtoupper($pro_ref);
                
                $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');  

                // Définition des filtres, ici une valeur doit avoir été saisie pour le champ 'pro_ref'
                $this->form_validation->set_rules("pro_cat_id", "ID catégorie", "required", array("required" => "L'%s est nécessaire"));
                $this->form_validation->set_rules("pro_ref", "Référence", "required", array("required" =>"La %s est nécessaire"));
                $this->form_validation->set_rules("pro_libelle", "Libellé", "required", array("required" =>"Le %s est nécessaire"));
                $this->form_validation->set_rules("pro_prix", "Prix", "required", array("required" =>"Le %s est nécessaire"));
                $this->form_validation->set_rules("pro_stock", "Stock", "required", array("required" =>"Le %s est nécessaire"));
                // $this->form_validation->set_rules("pro_d_ajout", "Date d'ajout", array("required" =>"required", "La %s est nécessaire"));

                if ($this->form_validation->run() == FALSE)
                { // Echec de la validation, on réaffiche la vue formulaire 
                    $this->load->view('ajouter');
                }
                else
                { // La validation a réussi, nos valeurs sont bonnes, on peut insérer en base
                    $this->db->insert('produits', $data);

                    redirect("produits/liste");
                }  
            } 
            else 
            { // 1er appel de la page: affichage du formulaire
                $this->load->view('ajouter');
            }
        } // -- ajouter()


        public function modifier($id)
        {
            // Chargement des assistants 'form' et 'url'
            $this->load->helper('form'); 

            // Chargement de la librairie 'database'
            $this->load->database();  

            // Chargement de la librairie form_validation
            $this->load->library('form_validation'); 

            // Requête de sélection de l'enregistrement souhaité, ici le produit 7 
            $produit = $this->db->query("SELECT * FROM produits WHERE pro_id= $id");
            $aView["produit"] = $produit->row(); // première ligne du résultat

            if ($this->input->post()) 
            { // 2ème appel de la page: traitement du formulaire

                $data = $this->input->post();

                // Définition des filtres, ici une valeur doit avoir été saisie pour le champ 'pro_ref'
                $this->form_validation->set_rules('pro_ref', 'Référence', 'required');

                if ($this->form_validation->run() == FALSE)
                { // Echec de la validation, on réaffiche la vue formulaire 
                    $this->load->view('modifier', $aView);
                }
                else
                { // La validation a réussi, nos valeurs sont bonnes, on peut modifier en base  

                    /* Utilisation de la méthode where() toujours 
                    * avant select(), insert() ou update()
                    * dans cette configuration sur plusieurs lignes 
                    */  
                    $this->db->where('pro_id', $id);
                    $this->db->update('produits', $data);

                    redirect("produits/liste");
                }
            } 
            else 
            { // 1er appel de la page: affichage du formulaire             
                $this->load->view('modifier', $aView);
            }
        } // -- modifier()
    }
?>