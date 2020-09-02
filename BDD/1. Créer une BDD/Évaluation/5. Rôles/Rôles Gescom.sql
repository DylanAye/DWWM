CREATE ROLE r_afpa_gescom_marketing

GRANT SELECT, INSERT, UPDATE, DELETE
ON afpa_gescom.categories
TO 'r_afpa_gescom_marketing'

GRANT SELECT, INSERT, UPDATE, DELETE
ON afpa_gescom.products
TO 'r_afpa_gescom_marketing'

GRANT SELECT
ON afpa_gescom.orders
TO 'r_afpa_gescom_marketing'

GRANT SELECT
ON afpa_gescom.customers
TO 'r_afpa_gescom_marketing'

GRANT SELECT
ON afpa_gescom.orders_details
TO 'r_afpa_gescom_marketing'

GRANT r_afpa_gescom_marketing
TO 'user'@'localhost'