CREATE VIEW v_Catalogue
AS
SELECT pro_id, pro_ref, pro_name, pro_cat_id, cat_name
FROM products
JOIN categories ON products.pro_cat_id = categories.cat_id



DELIMITER $$

DROP PROCEDURE IF EXISTS Facture$$
CREATE PROCEDURE Facture(
    IN p_num_commande int(10)
    )

BEGIN
    DECLARE tva float;
    DECLARE total float;
    SET tva = 20;
    SET total = (SELECT TRUNCATE(SUM((ode_unit_price*ode_quantity)*((100-ode_discount)/100))*((100+tva)/100),2) FROM orders_details WHERE p_num_commande = ode_ord_id);
    SELECT CURRENT_TIMESTAMP, ord_reception_date, cus_lastname, cus_firstname, cus_address, cus_zipcode, cus_city, tva, cat_name, pro_ref, pro_name, ode_unit_price, ode_discount, ode_quantity, total AS "Total commande"
    FROM categories
    JOIN products ON categories.cat_id = products.pro_cat_id
    JOIN orders_details ON products.pro_id = orders_details.ode_pro_id
    JOIN orders ON orders_details.ode_ord_id = orders.ord_id
    JOIN customers ON orders.ord_cus_id = customers.cus_id
    WHERE p_num_commande = ord_id;
END$$

DELIMITER ;

CALL Facture(53)