SELECT ode_id, ord_id, ord_date, NOW(), cus_id, cus_firstname, cus_lastname, cus_shipping_address, cus_zipcode, cus_city, cus_phone, cus_billing_address, pro_ref, pro_name, pro_price, qua_quantity, pro_price*qua_quantity AS `Total HT`, TRUNCATE((pro_price/10)*qua_quantity,2) AS `TVA`, pro_price*qua_quantity+TRUNCATE((pro_price/10)*qua_quantity,2) AS `Total TTC`
FROM customers
JOIN orders ON customers.cus_id = orders.ord_cus_id
JOIN delivery ON orders.ord_id = delivery.del_ord_id
JOIN quantity ON delivery.del_id = quantity.qua_del_id
JOIN orders_details ON quantity.qua_ode_id = orders_details.ode_id
JOIN products ON orders_details.ode_pro_id = products.pro_id;


SELECT del_id, ord_id, ord_date, NOW(), cus_id, cus_firstname, cus_lastname, cus_shipping_address, cus_zipcode, cus_city, cus_phone, cus_billing_address, pro_ref, pro_name, qua_quantity
FROM customers
JOIN orders ON customers.cus_id = orders.ord_cus_id
JOIN delivery ON orders.ord_id = delivery.del_ord_id
JOIN quantity ON delivery.del_id = quantity.qua_del_id
JOIN orders_details ON quantity.qua_ode_id = orders_details.ode_id
JOIN products ON orders_details.ode_pro_id = products.pro_id;


SELECT ode_id, NOW(), cus_id, cus_firstname, cus_lastname, cus_shipping_address, cus_zipcode, cus_city, cus_phone, cus_billing_address, pro_ref, pro_name, pro_price, qua_quantity, pro_price*qua_quantity AS `Total HT`, TRUNCATE((pro_price/10)*qua_quantity,2) AS `TVA`, pro_price*qua_quantity+TRUNCATE((pro_price/10)*qua_quantity,2) AS `Total TTC`
FROM customers
JOIN orders ON customers.cus_id = orders.ord_cus_id
JOIN delivery ON orders.ord_id = delivery.del_ord_id
JOIN quantity ON delivery.del_id = quantity.qua_del_id
JOIN orders_details ON quantity.qua_ode_id = orders_details.ode_id
JOIN products ON orders_details.ode_pro_id = products.pro_id;


SELECT pro_ref, pro_name, qua_quantity, sup_name
FROM suppliers
JOIN products ON suppliers.sup_id = products.pro_sup_id
JOIN orders_details ON products.pro_id = orders_details.ode_pro_id
JOIN quantity ON orders_details.ode_id = quantity.qua_ode_id
JOIN delivery ON quantity.qua_del_id = delivery.del_id
JOIN orders ON delivery.del_ord_id = orders.ord_id
WHERE YEAR(ord_date) = 2020;


SELECT ord_date, cus_ref, TRUNCATE(ode_unit_price*ode_quantity,2), ord_status
FROM customers
JOIN orders ON customers.cus_id = orders.ord_cus_id
JOIN orders_details ON orders.ord_id = orders_details.ode_ord_id
WHERE cus_lastname = 'Owens';


SELECT TRUNCATE (SUM((ode_unit_price * ode_quantity)*((100 - ode_discount)/ 100)),2) AS CA
FROM orders_details
JOIN orders ON orders_details.ode_ord_id = orders.ord_id
JOIN customers ON orders.ord_cus_id = customers.cus_id
GROUP BY cus_type;


SELECT ord_id, cus_lastname, cus_firstname, ord_date
FROM orders
JOIN customers ON orders.ord_cus_id = customers.cus_id
WHERE ord_status = 'Envoyé';


-------------------- Procédures --------------------

DELIMITER $$

DROP PROCEDURE IF EXISTS MoyenneFacturation$$
CREATE PROCEDURE MoyenneFacturation()

BEGIN
    SELECT AVG(DATEDIFF(ord_settlement_date, ord_date))
    FROM orders;
END$$

DELIMITER ;

CALL MoyenneFacturation;


-------------------- Vues --------------------

DROP VIEW IF EXISTS v_pro_sup
CREATE VIEW v_pro_sup
AS
SELECT *
FROM products
JOIN suppliers ON products.pro_sup_id = suppliers.sup_id