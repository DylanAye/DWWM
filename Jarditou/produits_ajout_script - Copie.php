<?php
    require "functions/connexion_bdd.php"; // Inclusion de notre bibliothèque de fonctions
    $db = connexionBase(); // Appel de la fonction de connexion

    $id = $_POST['pro_id'];
    $cat_id = $_POST['pro_cat_id'];
    $ref = $_POST['pro_ref'];
    $libelle = $_POST['pro_libelle'];
    $desc = $_POST['pro_description'];
    $prix = $_POST['pro_prix'];
    $stock = $_POST['pro_stock'];
    $couleur = $_POST['pro_couleur'];
    $photo = $_POST['pro_photo'];
    $ajout = $_POST['pro_d_ajout'];
    $modif = (empty($_POST['pro_d_modif']) ? NULL : $_POST['pro_d_modif']);  //Permet de mettre NULL dans la base si le champ est vide
    $bloque = (empty($_POST['pro_bloque']) ? NULL : $_POST['pro_bloque']);

    $destination = "/img";
    $fichier = $destination.basename($_FILES['fichier']);
    var_dump($_FILES['fichier']);
    var_dump ($fichier);
    $extension = pathinfo($_POST["fichier"]["tmp_name"], PATHINFO_EXTENSION); 

    if(isset($_POST['pro_id']) AND isset($_POST['pro_cat_id']) AND isset($_POST['pro_ref']) AND isset($_POST['pro_libelle']) AND isset($_POST['pro_description']) AND isset($_POST['pro_prix']) AND isset($_POST['pro_stock']) AND isset($_POST['pro_couleur']) AND isset($_POST['pro_photo']) AND isset($_POST['pro_d_ajout']))
    //Permet de vérifier que tous les champs sont bien remplis
    {
        $requete = $db->prepare('INSERT INTO produits(pro_id, pro_cat_id, pro_ref, pro_libelle, pro_description, pro_prix, pro_stock, pro_couleur, pro_photo, pro_d_ajout, pro_d_modif, pro_bloque) VALUES(:id,:cat_id,:ref,:libelle,:desc,:prix,:stock,:couleur,:photo,:ajout,:modif,:bloque)');
        $requete->bindValue(':id',$id);
        $requete->bindValue(':cat_id',$cat_id);
        $requete->bindValue(':ref',$ref);
        $requete->bindValue(':libelle',$libelle);
        $requete->bindValue(':desc',$desc);
        $requete->bindValue(':prix',$prix);
        $requete->bindValue(':stock',$stock);
        $requete->bindValue(':couleur',$couleur);
        $requete->bindValue(':photo',$photo);
        $requete->bindValue(':ajout',$ajout);
        $requete->bindValue(':modif',$modif);
        $requete->bindValue(':bloque',$bloque);
        $requete->execute();

        //header("Location:liste.php");   //Permet d'afficher la liste des produits de la table
    }


    // On met les types autorisés dans un tableau (ici pour une image)
    $aMimeTypes = array("image/gif", "image/jpeg", "image/pjpeg", "image/png", "image/x-png", "image/tiff");

    // On extrait le type du fichier via l'extension FILE_INFO 
    $finfo = finfo_open(FILEINFO_MIME_TYPE);
    $mimetype = finfo_file($finfo, $_FILES["fichier"]["tmp_name"]);
    finfo_close($finfo);

    // Si c'est un tableau et que celui-ci n'est pas vide  
    if (is_array($_FILES["fichier"]["error"]) && !empty($_FILES["fichier"]["error"]) ) 
    { 
        exit;       
    }
    
    if (in_array($mimetype, $aMimeTypes))
    {
        move_uploaded_file($_FILES["fichier"]["tmp_name"], "photo.jpg");
        //Le type est parmi ceux autorisés, donc OK, on va pouvoir déplacer et renommer le fichier
    } 
    else 
    {
        // Le type n'est pas autorisé, donc ERREUR
        echo "Type de fichier non autorisé";    
        exit;
    }    
    
?>