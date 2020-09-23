<html>
	<head>
		<title>Contact</title>
		 <!-- Required meta tags -->
		 <meta charset='utf-8'>
		 <meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>
	 
		 <!-- Bootstrap CSS -->
		 <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css' 
		 integrity='sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh' crossorigin='anonymous'>
	</head>
	<body>
		<?php
            include("functions/header.php");
        ?>
		<br>
		<p class='ml-3'>* Ces zones sont obligatoires</p>
		<!-- action='http://bienvu.net/script.php' -->
		<form action="Formulaires.php" method="post" class='ml-3 mr-3 needs-validation' onSubmit='return fonction(this);' novalidate>
			<fieldset>
				<legend>Vos coordonnées</legend>
				<p>
					<div class='form-group'>
						<label for='nom'>Nom*</label>
						<input type='text' class='form-control' name='nom' id='nom' placeholder='Veuillez saisir votre nom' required>
					</div>
				</p>
				<p>
					<div class='form-group'>
						<label for='prenom'>Prénom*</label>
						<input type='text' class='form-control' name='prenom' id='prenom' placeholder='Veuillez saisir votre prénom' required>
					</div>
				</p>
				<p>
					Sexe*
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="sexe" id="masculin" value="masculin" required>
						<label class="form-check-label" for="masculin">Masculin</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="sexe" id="feminin" value="feminin" required>
						<label class="form-check-label" for="feminin">Féminin</label>
					</div>
				</p>
				<p>
					<div class="form-group">
						<label for="naissance">Date de naissance*</label>
						<input type="text" class="form-control" name='naissance' id="naissance" placeholder="jj/mm/aaaa" required>
					</div>
				</p>
				<p>
					<div class="form-group">
						<label for="cp">Code postal*</label>
						<input type="text" class="form-control" name='cp' id="cp" required>
					</div>
				</p>
				<p>
					<div class="form-group">
						<label for="adresse">Adresse</label>
						<input type="text" class="form-control" name='adresse' id="adresse">
					</div>
				</p>
					<div class="form-group">
						<label for="ville">Ville</label>
						<input type="text" class="form-control" name='ville' id="ville">
					</div>
				</p>
				<p>
					<div class="form-group">
						<label for="email">Email*</label>
						<input type="email" class="form-control" name='email' id="email" placeholder="dave.loper@afpa.fr" required>
					</div>
				</p>
			</fieldset>


			<fieldset>
				<legend>Votre demande</legend>
				<div class="form-group">
					<label for="demande">Sujet</label>
					<select class="form-control" name='demande' id="demande">
						<option value = "" selected>Veuillez sélectionner un sujet</option>
						<option value = "commandes">Mes commandes</option>
					  	<option  value = "produit">Question sur un produit</option>
					  	<option value = "reclam">Réclamation</option>
					  	<option value = "autres">Autres</option>
					</select>
				</div>
				<div class="form-group">
					<label for="question">Votre question*</label>
					<textarea class="form-control" name='question' id="question" rows="3" required></textarea>
				</div>
				<div class="form-group form-check">
					<input type="checkbox" class="form-check-input" name='box' id="exampleCheck1" required>
					<label class="form-check-label" for="exampleCheck1">J'accepte le traitement informatique de ce formulaire</label>
				</div>
				<button type="submit" class="btn btn-dark">Envoyer</button>
				<button type="reset" class="btn btn-dark">Annuler</button>
			</fieldset>
			
		</form>
		
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

		<script src="js/javascript.js"></script>
		<script src="js/form.js"></script>
	</body>	
</html>