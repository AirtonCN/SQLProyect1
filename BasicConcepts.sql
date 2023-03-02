/*Para ejecutar un query a la vez CTRL+ENTER, en workbench*/
/*crea una base de datos*/
CREATE DATABASE IF NOT EXISTS nombre;
/*borra la base de datos MUY PEGRILOSO*/
DROP DATABASE nombre;
/*selecciona la base de datos*/
USE nombre;
/*muestra todas las db*/
SHOW DATABASES;
/*muestra las tablas de la db seleccionada*/
SHOW TABLES;
/*Muestra filas donde el valor de countrycode son distintos entre si*/
SELECT DISTINCT `CountryCode` FROM city;
/*muestra las columnas de la tabla seleccionada*/
SHOW COLUMNS FROM city;
/*muestra la columna ID de la tabla city*/
SELECT `ID` FROM city;
SELECT `ID`, `Name`, `Population` FROM city;
/*muestra todas las columnasde la tabla city*/
SELECT * FROM city;
/*muestra la columna District de la tabla city*/ 
SELECT `District` FROM city;
/*muestra valores distintos de la columna que deseemos*/
SELECT DISTINCT `CountryCode` FROM city;
/*muestra 5 resultados de la columna id*/
SELECT `ID` FROM City LIMIT 5;
/*muestra 5 filas de la columa id de la tabla city empezando desde la 5*/
SELECT `ID` FROM city LIMIT 5 OFFSET 4;
/*hace lo mismo que el query anterior*/
SELECT ID FROM city LIMIT 4,5;
/*muestra la columna id de la tabla city pero en otra sintaxis*/
SELECT city.ID FROM city;
/*ordena alfabeticamente o numericamente las columnas que deseemos*/
SELECT `ID` FROM city ORDER BY `ID`;
/*ordena por ID pero en orden descendente*/
SELECT * FROM `city` ORDER BY `ID` DESC;
/*ordena respetando primero el orden de name y luego de countrycode*/
SELECT * FROM `city` ORDER BY `Name`,`CountryCode`;
