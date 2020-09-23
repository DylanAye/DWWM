<html>
    <head>
        <title> Formulaire d'entrée </title>
        <meta charset='utf-8'>
    </head>
    <body>
      
        <form method='POST' action='produits_ajout_script.php' >
            <input type='text' id='id' name='pro_id' placeholder='ID'><br> <!-- Tester avec id-->
            <input type='text' name='pro_cat_id' placeholder='ID Cat'><br>
            <input type='text' name='pro_ref' placeholder='Référence'><br>
            <input type='text' name='pro_libelle' placeholder='Libellé'><br>
            <input type='text' name='pro_description' placeholder='Description'><br>
            <input type='text' name='pro_prix' placeholder='Prix'><br>
            <input type='text' name='pro_stock' placeholder='Stock'><br>
            <input type='text' name='pro_couleur' placeholder='Couleur'><br>
            <input type='text' name='pro_photo' placeholder='Photo'><br>
            <input type='text' name='pro_d_ajout' placeholder='Date ajout'><br>
            <input type='text' name='pro_d_modif' placeholder='Modif'><br>
            <input type='text' name='pro_bloque' placeholder='Bloqué'><br>

            <input type='submit' value='Valider'>
        </form>
    </body>
</html>