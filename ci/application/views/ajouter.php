<?php echo form_open(); ?>

    <!-- <div class="form-group">
        <label for="pro_libelle">ID</label>
        <input type="text" name="pro_id" id="pro_id" class="form-control">
    </div> -->

    <div class="form-group">
        <label for="pro_ref">ID catégorie</label>
        <input type="text" name="pro_cat_id" id="pro_cat_id" class="form-control" value="<?php echo set_value('pro_cat_id'); ?>">
        <?php echo form_error('pro_cat_id'); ?>
    </div>

    <div class="form-group">
        <label for="pro_ref">Référence</label>
        <input type="text" name="pro_ref" id="pro_ref" class="form-control" value="<?php echo set_value('pro_ref'); ?>">
        <?php echo form_error('pro_ref'); ?>
    </div>

    <div class="form-group">
        <label for="pro_ref">Libellé</label>
        <input type="text" name="pro_libelle" id="pro_libelle" class="form-control" value="<?php echo set_value('pro_libelle'); ?>">
        <?php echo form_error('pro_libelle'); ?>
    </div>

    <div class="form-group">
        <label for="pro_ref">Description</label>
        <input type="text" name="pro_description" id="pro_description" class="form-control" value="<?php echo set_value('pro_description'); ?>">
        <?php echo form_error('pro_libelle'); ?>
    </div>

    <div class="form-group">
        <label for="pro_ref">Prix</label>
        <input type="text" name="pro_prix" id="pro_prix" class="form-control" value="<?php echo set_value('pro_prix'); ?>">
        <?php echo form_error('pro_prix'); ?>
    </div>

    <div class="form-group">
        <label for="pro_ref">Stock</label>
        <input type="text" name="pro_stock" id="pro_stock" class="form-control" value="<?php echo set_value('pro_stock'); ?>">
        <?php echo form_error('pro_stock'); ?>
    </div>

    <div class="form-group">
        <label for="pro_ref">Couleur</label>
        <input type="text" name="pro_couleur" id="pro_couleur" class="form-control" value="<?php echo set_value('pro_couleur'); ?>">
        <?php echo form_error('pro_couleur'); ?>
    </div>

    <div class="form-group">
        <label for="pro_ref">Date ajout</label>
        <input type="text" name="pro_d_ajout" id="pro_d_ajout" class="form-control" value="<?php echo set_value('pro_d_ajout'); ?>">
        <?php echo form_error('pro_d_ajout'); ?>
    </div>

    <div class="form-group">
        <label for="pro_ref">Bloqué ?</label>
        <input type="text" name="pro_bloque" id="pro_bloque" class="form-control" value="<?php echo set_value('pro_bloque'); ?>">
        <?php echo form_error('pro_bloque'); ?>
    </div>

    <div class="form-group">
        <label for="pro_ref">Photo</label>
        <input type="file" name="fichier">
    </div>

    <button type="submit" class="btn btn-dark">Ajouter</button>
</form>