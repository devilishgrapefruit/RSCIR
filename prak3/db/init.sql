CREATE DATABASE IF NOT EXISTS coffeeworld;
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'password';
GRANT SELECT,UPDATE,INSERT ON coffeeworld.* TO 'user'@'%';
FLUSH PRIVILEGES;

USE coffeeworld;
CREATE TABLE IF NOT EXISTS users (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  login VARCHAR(20) NOT NULL,
  password VARCHAR(40) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS menu (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  cost INT(11) NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO users (login, password)
SELECT * FROM (SELECT 'admin', 'password') AS tmp
WHERE NOT EXISTS (
    SELECT login FROM users WHERE login='admin' AND password='password'
) LIMIT 1;

INSERT INTO users (login, password)
SELECT * FROM (SELECT 'user', 'user') AS tmp
WHERE NOT EXISTS (
    SELECT login FROM users WHERE login='user' AND password='user'
) LIMIT 1;

INSERT INTO menu (name, cost)
SELECT * FROM (SELECT 'Латте 300мл', 150) AS tmp
WHERE NOT EXISTS (
    SELECT name FROM menu WHERE name = 'Латте 300мл' AND cost = 150
) LIMIT 1;

INSERT INTO menu (name, cost)
SELECT * FROM (SELECT 'Капучино 300мл', 150) AS tmp
WHERE NOT EXISTS (
    SELECT name FROM menu WHERE name = 'Капучино 300мл' AND cost = 150
) LIMIT 1;

INSERT INTO menu (name, cost)
SELECT * FROM (SELECT 'Раф 300мл', 170) AS tmp
WHERE NOT EXISTS (
    SELECT name FROM menu WHERE name = 'Капучино 300мл' AND cost = 170
) LIMIT 1;



