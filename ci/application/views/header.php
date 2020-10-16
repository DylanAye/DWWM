<html>  
    <div class="container">
        <div class="row">                  
            <div class="col-9 d-none d-md-block"><img src="<?php echo base_url('assets/images/jarditou_logo.jpg') ?>" alt="Logo" width="200"></div>
            <div class="col-3 h2 d-none d-md-block"><p>Tout le jardin</div>
        </div>
        <nav class="navbar navbar-expand-md bg-light navbar-light">
            <span class="navbar-brand mb-0 h1">Jarditou.com</span>
            <!-- Toggler/collapsibe Button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <a class="navbar-toggler-icon"></a>
            </button>   
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.php">Accueil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="tableau.php">Tableau</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.php">Formulaire</a>
                    </li>
                    </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Votre promotion" aria-label="Search">
                    <button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Rechercher</button>
                </form>         
            </div>
        </nav>
        <img class="img-fluid w-100" src="<?php echo base_url('assets/images/promotion.jpg') ?>" alt="Promotion">
    </div>
</html>