/*Задание 1 Установила СУБД MySQL. Создала в домашней директории файл .my.cnf в нем логин и пароль который указывался при установке. Выдает ошибшку,все вроде сделала правильно, задала файл, но не заходит чере mysql, нужно вводить полное mysql - u root -p  
*/

Last login: Thu Jul  1 22:49:27 on ttys002
vishnia@MacBook-Pro-Viktoria ~ % ls -la ~ | grep .my.cnf
-rw-r--r--   1 vishnia  staff     28  1 июл 22:54 .my.cnf.sql
vishnia@MacBook-Pro-Viktoria ~ % cat ~/.my.cnf.sql
[mysql]
user=root
password=
vishnia@MacBook-Pro-Viktoria ~ % mysql
ERROR 1045 (28000): Access denied for user 'vishnia'@'localhost' (using password: NO)
vishnia@MacBook-Pro-Viktoria ~ % mysql -u root -p
Enter password:


/* Задание 2 Создать базу данных example, разместить в ней таблицу users, состоящую из двух столбцов числового id и сторокового name.
 
 */
mysql -u root -p 
SHOW DATABASES;
CREAT DATABASES;
CREATE DATABASE example;
CREATE TABLE users (id SERIAL, name VARCHAR(100) NOT NULL UNIQUE);
EXIT

/* Задание 3 Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample
 
 */
mysqldump -u root -p example > example.sql
mysql -u root -p 
 USE sample
 SHOW TABLES
 EXIT
