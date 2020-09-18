cd C:\wamp\bin\mysql\mysql8.0.21\bin

mysqldump --user=root --password= --databases village_green > C:\Backup\backup_village_green.sql

mysql --user=root --password= < C:\Backup\backup_village_green.sql