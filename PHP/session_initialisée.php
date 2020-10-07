<?php
    session_start();

    // if ($_SESSION['autoriser']!="oui")
    // {
    //     header('location:session_form.php');
    // }
?>

<!DOCTYPE html>
<html>
    <body>
        Votre login est <?php echo $_SESSION['login']; ?>.
    </body>
</html>