<html>
    <head>
        <meta charset="UTF-8">
        <title>testDb.php</title>
        <?php

            $user = 'root';
            $pass = '';
            try 
            {        
                $db = new PDO('mysql:host=localhost;charset=utf8;dbname=jarditou', $user, $pass);
                $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                // foreach($db->query('SELECT * FROM produits')as $row)
                // {
                //     print_r ($row);
                // }
            } 
            
            catch (Exception $e) 
            {
                echo "Erreur : " . $e->getMessage() . "<br>";
                echo "N° : " . $e->getCode();
                die("Fin du script");
            }

            $requete = "SELECT * FROM produits";
            $result = $db->query($requete);
            $produit = $result->fetch(PDO::FETCH_OBJ);
        ?>

    </head>
    <body>
        <p>Ma page</p>
        <?php echo $produit->pro_id; ?>
        <br>
        <?php echo $produit->pro_cat_id; ?>
        <br>
        <?php echo $produit->pro_ref; ?>
        <br>
        <?php echo $produit->pro_libelle; ?>
        <br>
        <?php echo $produit->pro_description; ?>
        <br>
        <?php echo $produit->pro_prix; ?>
        <br> 
        <?php echo $produit->pro_stock; ?>
        <br>
        <?php echo $produit->pro_couleur; ?>
        <br>
        <?php echo $produit->pro_photo; ?>
        <br> 
        <?php echo $produit->pro_d_ajout; ?>
        <br> 
        <?php echo $produit->pro_d_modif; ?>
        <br> 
        <?php echo $produit->pro_bloque; ?>
        <br>

        <?php
            while ($produit = $result->fetch(PDO::FETCH_OBJ)) 
            {
            echo $produit->pro_id." – ".$produit->pro_libelle. "<br>";
            }
        ?>
    </body>
</html> 