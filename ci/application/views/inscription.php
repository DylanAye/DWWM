<?php echo form_open(); ?>
    <div class="form-group">
        <label for="use_lastname">Nom</label>
        <input type="text" name="use_lastname" id="use_lastname" class="form-control" placeholder="Entrez votre nom" value="<?php echo set_value('use_lastname'); ?>">
        <?php echo form_error('use_lastname'); ?>
    </div>
    <div class="form-group">
        <label for="use_firstname">Prénom</label>
        <input type="text" name="use_firstname" id="use_firstname" class="form-control" placeholder="Entrez votre prénom" value="<?php echo set_value('use_firstname'); ?>">
        <?php echo form_error('use_firstname'); ?>
    </div>
    <div class="form-group">
        <label for="use_address">Adresse</label>
        <input type="text" name="use_address" id="use_address" class="form-control" placeholder="Entrez votre adresse" value="<?php echo set_value('use_address'); ?>">
        <?php echo form_error('use_address'); ?>
    </div>
    <div class="form-group">
        <label for="use_zipcode">Code postale</label>
        <input type="text" name="use_zipcode" id="use_zipcode" class="form-control" placeholder="Entrez votre code postale" value="<?php echo set_value('use_zipcode'); ?>">
        <?php echo form_error('use_zipcode'); ?>
    </div>
    <div class="form-group">
        <label for="use_city">Ville</label>
        <input type="text" name="use_city" id="use_city" class="form-control" placeholder="Entrez votre ville" value="<?php echo set_value('use_city'); ?>">
        <?php echo form_error('use_city'); ?>
    </div>
    <div class="form-group">
        <label for="use_countries_id">Pays</label>
        <input type="text" name="use_countries_id" id="use_countries_id" class="form-control" placeholder="Entrez votre pays" value="<?php echo set_value('use_countries_id'); ?>">
        <?php echo form_error('use_countries_id'); ?>
    </div>
    <div class="form-group">
        <label for="use_mail">Adresse email</label>
        <input type="text" name="use_mail" id="use_mail" class="form-control" placeholder="Entrez votre adresse email" value="<?php echo set_value('use_mail'); ?>">
        <?php echo form_error('use_mail'); ?>
    </div>
    <div class="form-group">
        <label for="use_phone">Téléphone</label>
        <input type="text" name="use_phone" id="use_phone" class="form-control" placeholder="Entrez votre numéro de téléphone" value="<?php echo set_value('use_phone'); ?>">
        <?php echo form_error('use_phone'); ?>
    </div>
    <div class="form-group">
        <label for="use_password">Mot de passe</label>
        <input type="password" name="use_password" id="use_password" class="form-control" placeholder="Entrez votre mot de passe" value="<?php echo set_value('use_password'); ?>">
        <?php echo form_error('use_password'); ?>
    </div>
    <!--<div class="form-group">
        <label for="pro_ref">Confirmer mot de passe </label>
        <input type="text" name="pro_bloque" id="pro_bloque" class="form-control" placeholder="Confirmez votre mot de passe" value="<?php echo set_value('pro_bloque'); ?>">
        <?php echo form_error('pro_bloque'); ?>
    </div> -->
    <button type="submit" class="btn btn-dark">Confirmer</button>
</form>