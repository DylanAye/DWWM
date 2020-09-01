CREATE USER 'util1'@'%'
IDENTIFIED BY '1Ksable';

CREATE USER 'util2'@'%'
IDENTIFIED BY '1Ksable';

CREATE USER 'util3'@'%'
IDENTIFIED BY '1Ksable';



GRANT ALL PRIVILEGES
ON gescom.*
TO 'util1'
IDENTIFIED BY '1Ksable';

GRANT SELECT
ON gescom.*
TO 'util2'
IDENTIFIED BY '1Ksable';

GRANT SELECT
ON gescom.posts
TO 'util3'
IDENTIFIED BY '1Ksable';