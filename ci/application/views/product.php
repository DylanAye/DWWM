<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
		 integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title><?php echo $liste_produits->pro_libelle ?></title>
    </head>
    <body>
        <div class="container">
            Voici la fiche du produit n°<?php echo $liste_produits->pro_id ?><br>
            Libellé : <?php echo $liste_produits->pro_libelle ?><br>
            Référence : <?php echo $liste_produits->pro_ref ?><br><br>

            <a type="button" class="btn btn-danger btn-lg" href="<?php echo site_url('form/supprimer') ?>">
                Supprimer
            </a>


        </div>
    </body>
</html>