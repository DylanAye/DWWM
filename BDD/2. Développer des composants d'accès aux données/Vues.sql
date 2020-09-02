CREATE VIEW v_Details
AS 
SELECT ode_pro_id, SUM(ode_quantity) AS 'QteTot', TRUNCATE ((SUM((ode_unit_price * ode_quantity)*((100 - ode_discount)/ 100))),2) AS PrixTot
FROM orders_details
GROUP BY ode_pro_id

CREATE VIEW v_Ventes_Zoom
AS
SELECT *
FROM orders_details
WHERE ode_pro_id IN
    (SELECT pro_ref FROM products WHERE pro_ref="ZOOM")