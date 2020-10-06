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

        header("Location:liste.php");   //Permet d'afficher la liste des produits de la table
    }

    $destination = "img/";
    $fichier = $destination.basename($_FILES['fichier']['name']);
    $uploadOk = 1;
    $extension = pathinfo($fichier, PATHINFO_EXTENSION);
    $nouveauNom = "NouvelleImage.png";

    //Permet de vérifier si le fichier est vraiment une image
    if(isset($_POST['submit']))
    {
        $check = getimagesize($_FILES['fichier']['tmp_name']);
        if($check !== false)
        {
            echo 'Le fichier est une image -' . $check['mime'] . '.';
            $uploadOk = 1;
        }
        else
        {
            echo 'Le fichier n\'est pas une image';
            $uploadOk = 0;
        }
    }

    //Permet de vérifier si l'image upload existe déjà ou pas
    if (file_exists($fichier))
    {
        echo 'Le fichier existe déjà';
        $uploadOk = 0;
    }

    //Vérifie la taille de l'image
    if($_FILES['fichier']['size'] > 500000)
    {
        echo 'La taille du fichier est trop élevée';
        $uploadOk = 0;
    }

    //N'autorise que certains formats
    if($extension != "jpg" && $extension != "png" && $extension != "jpeg" && $extension != "gif" )
    {
        echo 'Seuls les formats jpg, jpeg, png et gif sont autorisés.';
        $uploadOk = 0;
    }


    //Vérifie si $uploadOk est égal à 0 ou non
    if($uploadOk == 0)
    {
        echo 'Désolés, votre fichier n\'a pas pu être envoyé';
    }
    else    //Si tout est ok, on peut upload l'image
    {
        move_uploaded_file($_FILES["fichier"]["tmp_name"],$destination.$id.'.'.$extension);     //Permet d'envoyer le fichier dans la destination souhaitée et de le renommer en fonction de l'id du produit

        // if(move_uploaded_file($_FILES["fichier"]["tmp_name"],$fichier))
        // {
            
        //     echo 'Le fichier'. htmlspecialchars(basename($_FILES['fichier']['name'])). ' a été envoyé.';
        //     //var_dump($_FILES["fichier"]["name"]);
        // }
        // else
        // {
        //     echo 'Il y a eu une erreur lors de l\'envoi';
        // }
    }
    
?>