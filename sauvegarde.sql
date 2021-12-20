/** sauvegarde **/

mysqldump -u root -p booking > C:\Users\Najib\Desktop\backup.sql

/** Restauration  **/

mysql -u root -p booking < C:\Users\Najib\Desktop\backup.sql
