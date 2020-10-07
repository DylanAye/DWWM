<?php
    $loginErr = $passwdErr = '';
    $login = $_POST['login'];
    $passwd = $_POST['passwd'];

    
    if (empty ($login) || empty ($passwd)) //Si le login ou le mot de passe est vide, on renvoie sur le formulaire
    {
        // $_SESSION["erreur"] = "5";
        // if (isset ($_SESSION["erreur"]))
        // {
            
        // }
        header('Location:session_form.php'); 
    }
    else                                    //Sinon on envoie sur la page où l'utilisateur est connecté à sa session
    {
        require 'session_initialisée.php';
    }

?>