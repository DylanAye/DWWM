DROP VIEW IF EXISTS v_Details;
CREATE VIEW v_Details
AS 
SELECT ode_pro_id, SUM(ode_quantity) AS 'QteTot', TRUNCATE ((SUM((ode_unit_price * ode_quantity)*((100 - ode_discount)/ 100))),2) AS PrixTot
FROM orders_details
GROUP BY ode_pro_id

SELECT *
FROM v_Details


DROP VIEW IF EXISTS v_Ventes_Zoom;
CREATE VIEW v_Ventes_Zoom
AS
SELECT *
FROM orders_details
WHERE ode_pro_id IN
    (SELECT pro_id FROM products WHERE pro_ref="ZOOM")

SELECT *
FROM v_Ventes_Zoom



DROP VIEW IF EXISTS v_Ventes_Barb;
CREATE VIEW v_Ventes_Barb
AS
SELECT *
FROM orders_details
WHERE ode_pro_id IN
    (SELECT pro_id FROM products WHERE pro_ref="barb001")

SELECT *
FROM v_Ventes_Barb