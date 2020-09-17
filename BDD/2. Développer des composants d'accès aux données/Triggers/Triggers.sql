DELIMITER $$

DROP TRIGGER IF EXISTS maj_total$$
CREATE TRIGGER maj_total 
AFTER INSERT ON lignedecommande
FOR EACH ROW
BEGIN
    DECLARE id_c INT;
    DECLARE tot DOUBLE;
    SET id_c = NEW.id_commande;     -- nous captons le numéro de commande concerné
    SET tot = (SELECT sum(prix*quantite) FROM lignedecommande WHERE id_commande=id_c);  -- on recalcul le total
    UPDATE commande SET total=tot WHERE id=id_c;    -- on stock le total dans la table commande
END$$

DELIMITER ;


INSERT INTO `produit`(`id`,`designation`,`prix_achat`,`prix_vente`) VALUES
(6, 'Bleu', 15, 50);

INSERT INTO `lignedecommande`(`id_commande`,`id_produit`,`quantite`,`prix`) VALUES
(3, 6, 3, 50);