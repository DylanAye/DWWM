-------------------- 1 --------------------

SELECT CONCAT(emp_lastname,' ',emp_firstname), emp_children
FROM employees
WHERE emp_children >0
ORDER BY emp_children DESC

-------------------- 2 --------------------

SELECT cus_lastname, cus_firstname, cus_countries_id
FROM customers
WHERE cus_countries_id != 'FR'

-------------------- 3 --------------------

SELECT cus_city, cus_countries_id
FROM customers 
ORDER BY cus_city

-------------------- 4 --------------------

SELECT cus_lastname, cus_update_date
FROM customers
WHERE cus_update_date IS NOT NULL

-------------------- 5 --------------------

SELECT cus_lastname, cus_firstname, cus_city
FROM customers
WHERE cus_city LIKE '%divos%'

-------------------- 6 --------------------

SELECT pro_price, pro_id, pro_name
FROM products
ORDER BY pro_price
LIMIT 1

-------------------- 7 --------------------

SELECT pro_id, pro_ref, pro_name
FROM products
JOIN orders_details ON products.pro_id = orders_details.ode_id
WHERE pro_id NOT IN 
    (SELECT ode_pro_id FROM orders_details)

-------------------- 8 --------------------

SELECT pro_id, pro_ref, pro_name, cus_id, ord_id, ode_id
FROM products
JOIN orders_details ON products.pro_id = orders_details.ode_pro_id
JOIN orders ON orders_details.ode_ord_id = orders.ord_id
JOIN customers ON orders.ord_cus_id = customers.cus_id
WHERE cus_lastname = 'Pikatchien'

-------------------- 9 --------------------

SELECT cat_id, cat_name, pro_name
FROM categories
JOIN products ON categories.cat_id = products.pro_cat_id
ORDER BY cat_name

-------------------- 10 --------------------

SELECT CONCAT(a.emp_lastname, ' ', a.emp_firstname) AS Employé, c.pos_libelle, CONCAT(b.emp_lastname, ' ', b.emp_firstname) AS 'Supérieur', d.pos_libelle
FROM employees a
INNER JOIN employees b ON a.emp_superior_id = b.emp_id
INNER JOIN shops ON a.emp_sho_id = shops.sho_id
INNER JOIN posts c ON a.emp_pos_id = c.pos_id
INNER JOIN posts d ON b.emp_pos_id = d.pos_id
WHERE sho_city = 'Compiègne'
ORDER BY Employé

-------------------- 11 --------------------

SELECT ode_discount, pro_id, pro_name, ord_id, ode_id
FROM orders
JOIN orders_details ON orders.ord_id = orders_details.ode_ord_id
JOIN products ON orders_details.ode_pro_id = pro_id
WHERE ode_discount IN
    (SELECT MAX(ode_discount) FROM orders_details)

-------------------- 13 --------------------

SELECT COUNT(*) AS 'Nb clients Canada'
FROM customers
JOIN countries ON customers.cus_countries_id = countries.cou_id
WHERE cou_name = 'Canada'

-------------------- 16 --------------------

SELECT DISTINCT ode_id, ode_unit_price, ode_discount, ode_quantity, ode_ord_id, ode_pro_id, ord_order_date
FROM orders
JOIN orders_details ON orders.ord_id = orders_details.ode_ord_id
WHERE ord_order_date BETWEEN '2020-01-01' AND '2020-12-31'

-------------------- 17 --------------------

SELECT DISTINCT sup_id, sup_name, sup_city, sup_address, sup_zipcode, sup_phone, sup_mail
FROM suppliers
JOIN products ON suppliers.sup_id = products.pro_sup_id
WHERE pro_id IN 
    (SELECT ode_pro_id FROM orders_details)

-------------------- 18 --------------------

SELECT TRUNCATE (SUM((ode_unit_price * ode_quantity)*((100 - ode_discount)/ 100)),2) AS CA
FROM orders_details
JOIN orders ON orders_details.ode_ord_id = orders.ord_id
WHERE ord_order_date BETWEEN '2020-01-01' AND '2020-12-31'

-------------------- 19 --------------------

SELECT TRUNCATE (SUM((ode_unit_price * ode_quantity)*((100 - ode_discount)/ 100))/COUNT(DISTINCT ode_ord_id),2) AS Panier
FROM orders_details

-------------------- 20 --------------------

SELECT ord_id, ord_order_date, CONCAT(cus_lastname, ' ', cus_firstname) AS `Name`, TRUNCATE(((ode_unit_price * ode_quantity) * ((100 - ode_discount)/100)),2) AS `Order amount`
FROM orders_details
JOIN orders ON orders_details.ode_ord_id = orders.ord_id
JOIN customers ON orders.ord_cus_id = customers.cus_id
ORDER BY `Order amount` DESC

-------------------- 22 --------------------

UPDATE products
SET pro_name = 'Camper', pro_price = pro_price*0.90
WHERE pro_ref = 'barb004'

-------------------- 23 --------------------

UPDATE products
SET pro_price = pro_price * 1.011
WHERE pro_cat_id IN
    (SELECT cat_id FROM categories WHERE cat_name = 'Parasols')

-------------------- 24 --------------------

DELETE FROM products
WHERE pro_cat_id IN
    (SELECT cat_id FROM categories WHERE cat_name = 'Tondeuses électriques')
AND pro_id NOT IN 
    (SELECT ode_pro_id FROM orders_details)