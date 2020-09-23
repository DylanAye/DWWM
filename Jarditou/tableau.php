<html>
    <head>
        <title>Tableau</title>
        <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
        <?php
            include("functions/header.php");
        ?>
        <div class="table-responsive">
            <table class="table table-striped table-bordered">
                <thead>
                    <tr class="table-active">
                        <td><b>Photo</b></td>
                        <td><b>ID</b></td>
                        <td><b>Catégories</b></td>
                        <td><b>Libellé</b></td>
                        <td><b>Prix</b></td>
                        <td><b>Couleur</b></td>
                    </tr>
                </thead>
                <tbody>
                    <tr class="table-warning">
                        <td><img src="img\7.jpg" width=95 height=100></td>
                        <td>7</td>
                        <td>Barbecues</td>
                        <td>Aramis</td>
                        <td>110.00€</td>
                        <td>Brun</td>
                    </tr>
                    <tr>
                        <td><img src="img\8.jpg" width=95 height=100></td>
                        <td>8</td>
                        <td>Barbecues</td>
                        <td>Athos</td>
                        <td>249.99€</td>
                        <td>Noir</td>
                    </tr>
                    <tr class="table-warning">
                        <td><img src="img\11.jpg" width=95 height=100></td>
                        <td>11</td>
                        <td>Barbecues</td>
                        <td>Clatronic</td>
                        <td>135.90€</td>
                        <td>Chrome</td>
                    </tr>
                    <tr>
                        <td><img src="img\12.jpg" width=95 height=100></td>
                        <td>12</td>
                        <td>Barbecues</td>
                        <td>Camping</td>
                        <td>88.00€</td>
                        <td>Noir</td>
                    </tr>
                    <tr class="table-warning">
                        <td><img src="img\13.jpg" width=95 height=100></td>
                        <td>13</td>
                        <td>Brouette</td>
                        <td>Green</td>
                        <td>49.00€</td>
                        <td>Verte</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <?php
            include("functions/footer.php");
        ?>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" 
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" 
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" 
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>