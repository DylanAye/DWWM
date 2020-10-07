<?php
    session_start();
    $erreur = '';
    @$login = $_SESSION['login'] = $_POST['login'];
    @$passwd = $_SESSION['passwd'] = $_POST['passwd'];


    if (!empty ($login) && !empty ($passwd)) //Si le login et le mot de passe sont remplis, on envoie sur la suite de la boucle
    {
        if($login=='user' && $passwd=='1Ksable') //Je sais qu'il faut pas faire ça, mais c'est pour simuler un accès à la base de données
        {
            $_SESSION["autoriser"] = 'oui';    
            header("Location:session_initialisée.php");
        }
        else
        {
            $erreur='Veuillez remplir correctement les champs';
            header('Location:session_form.php');
        }
    }
    else
    {
        $erreur='Veuillez remplir les champs';
    }

?>

<!DOCTYPE html>
<html>
    <body>
        <form method='POST' action=''>
            <input type='text' id='id' name='login' placeholder='Login'><br>
            <input type='password' name='passwd' placeholder='Mot de passe'><br>
            <input type='submit' name='submit' value='Se connecter'>
        </form>
    </body>
</html>