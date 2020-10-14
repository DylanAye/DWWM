<?php
    // application/controllers/Produits.php

    defined('BASEPATH') OR exit('No direct script access allowed');

    class Produits extends CI_Controller 
    {

        public function liste()
        {
            // Déclaration du tableau associatif à tranmettre à la vue
            $aView = array();
            $aProduits = ["Aramis", "Athos", "Clatronic", "Camping", "Green"];

            // Dans le tableau, on créé une donnée 'prénom' qui a pour valeur 'Dave'    
            $aView["prenom"] = "Dave";
            $aView["nom"] = "Loper";
            
            $aProduits['Premier'] = $aProduits[0];
            $aProduits['Deuxième'] = $aProduits[1];
            $aProduits['Troisième'] = $aProduits[2];
            $aProduits['Quatrième'] = $aProduits[3];
            $aProduits['Cinquième'] = $aProduits[4];
            

            // On passe le tableau en second argument de la méthode 
            $this->load->view('liste', $aProduits);
        }
    }

?>