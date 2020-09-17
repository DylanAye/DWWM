DROP TABLE IF EXISTS commander_articles;

CREATE TABLE commander_articles(
    codart              int(10),
    qte                 int(10),
    date                timestamp DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(codart)
);



DELIMITER $$

DROP TRIGGER IF EXISTS after_products_update$$
CREATE TRIGGER after_products_update
AFTER UPDATE ON products
FOR EACH ROW

BEGIN
    DECLARE stockage  VARCHAR(50); -- Qui va servir à stocker le SELECT pour la vérification
    DECLARE nouveau_stock  int(10); -- Qui va servir à stocker la différence entre le stock et le stock_alert
    DECLARE stock       int(10);
    DECLARE stock_alert int(10);
    SET stock = NEW.pro_stock;
    SET stock_alert = NEW.pro_stock_alert;
    SET nouveau_stock = (stock_alert - stock);
    IF(NEW.pro_stock<NEW.pro_stock_alert)
    THEN
        SET stockage = (SELECT codart FROM commander_articles WHERE codart = NEW.pro_id);
        IF ISNULL (stockage) -- Sert à vérifier si l'id de ce produit existe ou pas dans la table commander_articles
        THEN
            INSERT INTO commander_articles VALUES (NEW.pro_id, nouveau_stock, CURRENT_TIMESTAMP());
            ELSE
            UPDATE commander_articles SET qte = nouveau_stock WHERE codart = NEW.pro_id;
        END IF;
    ELSE
        DELETE FROM commander_articles WHERE codart = NEW.pro_id;
    END IF;
END$$

DELIMITER ;


UPDATE `products` 
SET `pro_stock` = '6' 
WHERE `products`.`pro_id` = 8

UPDATE `products` 
SET `pro_stock` = '4' 
WHERE `products`.`pro_id` = 8

UPDATE `products` 
SET `pro_stock` = '3' 
WHERE `products`.`pro_id` = 8