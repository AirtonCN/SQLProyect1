/*Para ejecutar un query a la vez CTRL+ENTER, en workbench*/
/*muestra todas las db*/
SHOW DATABASES;
/*muestra las tablas de la db seleccionada*/
SHOW TABLES;
/*muestra las columnas de la tabla seleccionada*/
SHOW COLUMNS FROM city;
/*muestra la columna ID de la tabla city*/
SELECT `ID`,`Name` FROM city;
/*muestra todas las columnasde la tabla city*/
SELECT * FROM city;
/*muestra la columna District de la tabla city*/ 
SELECT District FROM city;
/*muestra 5 filas de la columa id de la tabla city empezando desde la 5*/
SELECT ID FROM city LIMIT 5 OFFSET 4;
/*hace lo mismo que el query anterior*/
SELECT ID FROM city LIMIT 4,5;
/*muestra la columna id de la tabla city pero en otra sintaxis*/
SELECT city.ID FROM city;
/*ordena alfabeticamente o numericamente las columnas que deseemos*/
SELECT `ID` FROM city ORDER BY `ID`;
/*ordena respetando primero el orden de name y luego de countrycode*/
SELECT * FROM `city` ORDER BY `Name`,`CountryCode`;
