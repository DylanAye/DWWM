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
    IF(pro_stock<pro_stock_alert)
    THEN
    INSERT INTO commander_articles VALUES (8, pro_stock_alert-pro_stock, NULL);
    END IF;
END$$

DELIMITER ;