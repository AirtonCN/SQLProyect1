
/************WHERE STATEMENT**************/

/*Muestra la fila que contenga "Dordretch" en la columna name*/
SELECT * FROM `city` WHERE `Name` = "Dordrecht";
/*Muestra la fila que contenga 23 en la columna ID*/
SELECT * FROM `city` WHERE `ID` = 23;
/*Muestra las filas que no contengan 23 en la columna ID*/  /*Puedes probar mas operadores tu mismo*/
SELECT * FROM `city` WHERE `ID` != 23;
/*Muestra un rango de filas basado en el valor de ID*/
SELECT * FROM `city` WHERE 	`ID` BETWEEN 5 AND 9;

/************FILTERING WITH AND, OR**************/

/*Muestra filas donde id este entre los valores 8 y 15*/
SELECT * FROM `city` WHERE `ID` AND `ID` >= 8 AND `ID` <= 15 ;
/*Muestra las primeras 20 ciudades cuyo codigo es nld*/
SELECT * FROM `city` WHERE `CountryCode`='NLD' AND `ID` <=20; 
/*Muestra las primeras 20 ciudades cuyo codigo es nld PERO CON OTRO ORDEN DE QUERY*/
SELECT * FROM `city` WHERE `ID` <=20 AND `CountryCode`='NLD'; 
/*Muestra filas donde el codigo de ciudad es nld o alb*/
SELECT * FROM `city` WHERE `CountryCode` = 'NLD' OR `CountryCode` = 'ALB';
/*Omite valores entre 8 y 20*/
SELECT * FROM `city` WHERE `ID` <= 8 OR `ID` >= 20;
/*Combinacion AND Y OR*/
SELECT * FROM `city` WHERE `ID` >=20 AND (`CountryCode`='NLD' OR `CountryCode`='ALB'); 

/************NOT, NOT IN STATEMENTS**************/

/*Muestra las filas donde los valores de la columna coincidan con el del vector IN*/
SELECT * FROM `city` WHERE `Name` IN ('Herat','Kabul','Amsterdam');
/*Muestra las filas donde los valores del vector NOT IN esten ausentes*/
SELECT * FROM `city` WHERE `Name` NOT IN ('Herat','Kabul','Amsterdam');

/************CUSTOM COLUMNS**************/

/*Concatena los valores de la columna name y la columna ID y los separa con una coma*/
SELECT CONCAT(`Name`,',',`ID`) FROM `city`;
/*Concatena los valores de la columna name y la columna ID y los separa con una coma. Renombra la columna resultante con "columna1".*/
SELECT CONCAT(`Name`,',',`ID`) AS `columna1` FROM `city`;
/*Suma 500 a cada valor de la columna population*/
SELECT `Name`,`ID`,`population`+500 AS `population` FROM `city`;