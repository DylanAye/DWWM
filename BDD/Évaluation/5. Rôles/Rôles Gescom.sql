CREATE USER 'marketing'@'%'
IDENTIFIED BY '1Ksable';

GRANT SELECT, INSERT, UPDATE, DELETE
ON afpa_gescom.orders
TO 'marketing'
IDENTIFIED BY '1Ksable'

GRANT SELECT, INSERT, UPDATE, DELETE
ON afpa_gescom.customers
TO 'marketing'
IDENTIFIED BY '1Ksable'

GRANT SELECT, INSERT, UPDATE, DELETE
ON afpa_gescom.orders_details
TO 'marketing'
IDENTIFIED BY '1Ksable'