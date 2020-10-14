<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
		 integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Liste des produits</title>
    </head>
    <body>
        <h1>Liste des produits</h1>
        <div class="align-middle col-7">
            <table class='table-striped table-bordered'>
                <?php
                    echo "<thead>";
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
