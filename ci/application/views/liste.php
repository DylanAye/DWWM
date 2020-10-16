<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
		 integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Liste des produits</title>
    </head>
    <body>
        <div class="container">
            <br>
            
            <a type="button" class="btn btn-secondary btn-lg btn-block" href="<?php echo site_url('form/ajouter') ?>">
                Ajouter un produit
            </a>
            <br>
            <table class='table-striped table-bordered'>
                <thead>
                    <td> ID </td>
                    <td> Référence </td>
                    <td> Libellé </td>
                    <td> Description</td>
                </thead>            
                <?php
                    foreach ($liste_produits as $row) 
                    {
                        echo"<tbody> <tr class='table'> <td>".$row->pro_id."</td>";
                        echo"<td>".$row->pro_ref."</td>";
                        echo"<td>".$row->pro_libelle."</td>";
                        echo"<td>".$row->pro_description."</td></tr> </tbody>";     
                    }
                ?>
            </table>
        </div>
    </body>
</html>
