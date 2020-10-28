
    <body>
        <div class="container">
            <br>
            <a type="button" class="btn btn-secondary btn-lg btn-block" href="<?php echo site_url('form/ajouter') ?>">
                Ajouter un produit
            </a>
            <br>
            <table class='table table-striped table-bordered'>
                <thead>
                    <td> Photo </td>
                    <td> ID </td>
                    <td> Référence </td>
                    <td> Libellé </td>
                    <td> Description</td>
                </thead>
                <tbody>
                    <?php
                        foreach ($liste_produits as $row)
                        {?>
                            <tr class='table'>
                                <td><img src='<?php echo base_url('assets/images/'.$row->pro_id.".".$row->pro_photo);?> ' width='100'></td>
                                <td><a href="<?php echo site_url('produits/product/'.$row->pro_id) ?>"><?php echo $row->pro_id; ?>
                                <td><?php echo $row->pro_ref;?></td>
                                <td><?php echo $row->pro_libelle; ?></td>
                                <td><?php echo $row->pro_description; ?></td>
                            </tr>
                        <?php } 
                    ?>
                </tbody>
            </table>
        </div>
    </body>