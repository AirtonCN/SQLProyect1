/*Para ejecutar un query a la vez CTRL+ENTER, en workbench*/
SHOW DATABASES;
SHOW TABLES;
SHOW COLUMNS FROM city;
SELECT `ID`,`Name` FROM city;
SELECT * FROM city;
SELECT District FROM city;
SELECT ID FROM city LIMIT 5 OFFSET 4;
SELECT ID FROM city LIMIT 4,5;
