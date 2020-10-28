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

    }