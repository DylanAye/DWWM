DELIMITER |

CREATE PROCEDURE ajoutFournisseur(
    IN p_nom VARCHAR(50), 
    IN p_countries_id CHAR(2),  
    IN p_address VARCHAR(150),
    IN p_zipcode VARCHAR(5),  
    IN p_contact VARCHAR(100),  
    IN p_phone VARCHAR(10),  
    IN p_mail VARCHAR(75)
)

BEGIN
   DECLARE v_ville VARCHAR (50);
   SET v_ville = 'Amiens';   

   INSERT INTO suppliers(sup_name, sup_city, sup_countries_id, sup_address, sup_zipcode, sup_contact, sup_phone, sup_mail) VALUES (p_nom, v_ville, p_countries_id, p_address, p_zipcode, p_contact, p_phone, p_mail);
END |

DELIMITER ;

CALL ajoutFournisseur("Bleu","FR","Avenue du lys","75000","JP","0699009900","bleu@abc.def");

------------------------------------------------------

DELIMITER $$

DROP PROCEDURE IF EXISTS Lst_Suppliers$$
CREATE PROCEDURE Lst_Suppliers()

BEGIN
    SELECT DISTINCT sup_name
    FROM suppliers
    JOIN products ON suppliers.sup_id = products.pro_sup_id
    JOIN orders_details ON products.pro_id = orders_details.ode_pro_id;

END $$

DELIMITER ;

SHOW CREATE PROCEDURE Lst_Suppliers;

CALL Lst_Suppliers();

------------------------------------------------------

DELIMITER $$

DROP PROCEDURE IF EXISTS Lst_Rush_Orders$$
CREATE PROCEDURE Lst_Rush_Orders()

BEGIN
    SELECT *
    FROM orders
    WHERE ord_status = "Commande urgente";

END $$

DELIMITER ;

CALL Lst_Rush_Orders();

------------------------------------------------------

DELIMITER $$

DROP PROCEDURE IF EXISTS CA_Supplier$$
CREATE PROCEDURE CA_Supplier(
    p_sup_id INT(10), 
    p_order_date YEAR)

BEGIN
    SELECT TRUNCATE (SUM((ode_unit_price * ode_quantity)*((100 - ode_discount)/ 100)),2) AS CA
    FROM orders_details
    JOIN products ON orders_details.ode_pro_id = products.pro_id
    JOIN suppliers ON products.pro_sup_id = suppliers.sup_id
    JOIN orders ON orders_details.ode_ord_id = orders.ord_id
    WHERE p_sup_id = sup_id
    AND p_order_date = YEAR(ord_order_date);

END $$

DELIMITER ;

CALL CA_Supplier(1,2020);