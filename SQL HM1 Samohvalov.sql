/* Задача 1
Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.
*/

--Виртуалка и MySQL стоят уже давно и я не уверен в правильности логина и прароля (который я уже несколько раз менял) так что сделаю так:
echo "user: Kus pass: 1234" > /home/kus/.my.cnf

/* Задача 2
Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.
*/

--Удаление / Создание БД / Вход        
DROP DATABASE IF EXISTS exaple;
CREATE DATABASE example;
USE example;

--Создание / Наполнение таблицы
create table users (
id int not null auto_increment,
name varchar(20),
primary key (id));
insert into users (name) values("Nike");
insert into users (name) values("Frank");
insert into users (name) values("Tesla");

/* Задача 3
Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.
*/

--Команда на создание дампа с использование лога и пасса
mysqldump -uuser -p1234 example > /home/kus/sample.sql