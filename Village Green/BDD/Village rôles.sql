-------------------- Visiteurs --------------------

DROP ROLE IF EXISTS r_village_green_visiteurs;
CREATE ROLE r_village_green_visiteurs;

GRANT SELECT
ON village_green.products
TO r_village_green_visiteurs;

CREATE USER 'visit1'@'%' IDENTIFIED BY '1Ksable';

GRANT r_village_green_visiteurs
TO 'visit1'@'%';

SET DEFAULT ROLE r_village_green_visiteurs TO 'visit1'@'%';


-------------------- Clients --------------------

DROP ROLE IF EXISTS r_village_green_clients;
CREATE ROLE r_village_green_clients;

GRANT SELECT
ON village_green.*
TO r_village_green_clients;

GRANT INSERT
ON village_green.customers
TO r_village_green_clients;

GRANT INSERT
ON village_green.customers
To r_village_green_clients;

CREATE USER 'client1'@'%' IDENTIFIED BY '1Ksable';

GRANT r_village_green_clients
TO 'client1'@'%';

SET DEFAULT ROLE r_village_green_clients TO 'client1'@'%';


-------------------- Gestion --------------------

DROP ROLE IF EXISTS r_village_green_gestion;
CREATE ROLE r_village_green_gestion;

GRANT SELECT, UPDATE
ON village_green.*
TO r_village_green_gestion;

CREATE USER 'gest1'@'%' IDENTIFIED BY '1Ksable';

GRANT r_village_green_gestion
TO 'gest1'@'%';

SET DEFAULT ROLE r_village_green_gestion TO 'gest1'@'%';


-------------------- Admin --------------------

DROP ROLE IF EXISTS r_village_green_admin;
CREATE ROLE r_village_green_admin;

GRANT SELECT, UPDATE, DELETE, INSERT
ON village_green.*
TO r_village_green_admin;

CREATE USER 'admin1'@'%' IDENTIFIED BY '1Ksable';

GRANT r_village_green_admin
TO 'admin1'@'%';

SET DEFAULT ROLE r_village_green_admin TO 'admin1'@'%';