<?php
    // application/controllers/Form.php

    defined('BASEPATH') OR exit('No direct script access allowed');

    class Sessions extends CI_Controller 
    {
        public function connexion()
        {
            if ($this->input->post())
            { // 2ème appel de la page: traitement du formulaire
                $email = $this->input->post('email');
                $passwd = $this->input->post('mdp');

                $select=$this->db->query("SELECT * FROM user WHERE email='".$email."' AND password='$passwd'");
            }
            

            $this->load->view('header');
            $this->load->view('connexion');
            $this->load->view('footer');
        }

        public function inscription()
        {
            if ($this->input->post())
            { // 2ème appel de la page: traitement du formulaire
                
                $data = $this->input->post();
    
                // Ajout d'une date d'ajout que le formulaire ne contient pas
                $data["use_add_date"] = date("Y-m-d h:i:s");

                // Transformation d'une information venant du formulaire
                // par exemple forcer la référence d'un produit en majuscules
                // $pro_ref = $this->input->post("pro_ref");
                // $data["pro_ref"] = strtoupper($pro_ref);
                
                $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');  

                // Définition des filtres, ici une valeur doit avoir été saisie pour les champs
                $this->form_validation->set_rules("use_lastname", "nom", "required", array("required" => "Vous devez entrer votre %s"));
                $this->form_validation->set_rules("use_firstname", "prenom", "required", array("required" =>"Vous devez entrer votre %s"));
                $this->form_validation->set_rules("use_address", "adresse", "required", array("required" =>"Vous devez entrer votre %s"));
                $this->form_validation->set_rules("use_zipcode", "code postale", "required", array("required" =>"Vous devez entrer votre %s"));
                $this->form_validation->set_rules("use_city", "ville", "required", array("required" =>"Vous devez entrer votre %s"));
                $this->form_validation->set_rules("use_mail", "adresse email", "required|regex_match[/^[_a-zA-Z0-9-]+(\.[_a-zA-Z0-9-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,4}$/]", array("required" =>"Vous devez entrer votre %s","regex_match" => "Votre %s est incorrecte"));
                $this->form_validation->set_rules("use_phone", "numéro de téléphone", "required", array("required" =>"Vous devez entrer votre %s"));
                $this->form_validation->set_rules("use_password", "mot de passe", "required|min_length[6]", array("required" =>"Vous devez entrer un %s","min_length" => "Votre mot de passe doit comporter un mninmum de 6 caractères"));

                if ($this->form_validation->run() == FALSE)
                { // Echec de la validation, on réaffiche la vue formulaire 
                    $this->load->view('header');
                    $this->load->view('inscription');
                    $this->load->view('footer');
                }
                else
                { // La validation a réussi, nos valeurs sont bonnes, on peut insérer en base
                    $this->db->insert('users', $data);

                    redirect("produits/liste");
                }  
            }
            else
            {
            $this->load->view('header');
            $this->load->view('inscription');
            $this->load->view('footer');
            }
        }
    }