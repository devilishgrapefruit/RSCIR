CREATE DATABASE IF NOT EXISTS testcoffeeDB;
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'password';
GRANT SELECT,UPDATE,INSERT ON testcoffeeDB.* TO 'user'@'%';
FLUSH PRIVILEGES;

USE testcoffeeDB;
DROP TABLE users, orders, menu;
CREATE TABLE IF NOT EXISTS users (
    ID INT(11) NOT NULL AUTO_INCREMENT,
    login VARCHAR(20) NOT NULL,
    password VARCHAR(40) NOT NULL,
    PRIMARY KEY (ID)
    );

CREATE TABLE IF NOT EXISTS menu (
    ID INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    price VARCHAR(40) NOT NULL,
    PRIMARY KEY (ID)
    );

CREATE TABLE IF NOT EXISTS orders (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  title VARCHAR(50) NOT NULL,
  sum INT(11) NOT NULL,
  address VARCHAR(50) NOT NULL,
  status VARCHAR(50) NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO users (login, password)
VALUES 
    ('user', 'user'),
    ('admin', '{SHA}QL0AFWMIX8NRZTKeof9cXsvbvu8=');

INSERT INTO menu (name, price)
VALUES
    ('Эспрессо', '60 рублей'),
    ('Американо', '90 рублей'),
    ('Латте', '120 рублей'),
    ('Капучино', '120 рублей'),
    ('Раф', '130 рублей');

INSERT INTO orders (title, sum, address, status)
VALUES
    ('Заказ 1', 500, 'ул.Меньжинского дом 3', 'Выдан'),
    ('Заказ 2', 456, 'ул.Кошкарева дом 24 кв.45', 'Выдан');