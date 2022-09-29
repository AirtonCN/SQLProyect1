/*Muestra la fila que contenga "Dordretch" en la columna name*/
SELECT * FROM `city` WHERE `Name` = "Dordrecht";
/*Muestra la fila que contenga 23 en la columna ID*/
SELECT * FROM `city` WHERE `ID` = 23;
/*Muestra las filas que no contengan 23 en la columna ID*/  /*Puedes probar mas operadores tu mismo*/
SELECT * FROM `city` WHERE `ID` != 23;
/*Muestra un rango de filas basado en el valor de ID*/
SELECT * FROM `city` WHERE 	`ID` BETWEEN 5 AND 9;
/*Muestra filas donde id este entre los valores 8 y 15*/
SELECT * FROM `city` WHERE `ID` AND `ID` >= 8 AND `ID` <= 15 ;
/*Muestra las primeras 20 ciudades cuyo codigo es nld*/
SELECT * FROM `city` WHERE `CountryCode`='NLD' AND `ID` <=20; 
/*Muestra las primeras 20 ciudades cuyo codigo es nld PERO CON OTRO ORDEN DE QUERY*/
SELECT * FROM `city` WHERE `ID` <=20 AND `CountryCode`='NLD'; 
/*Muestra filas donde el codigo de ciudad es nld o alb*/
SELECT * FROM `city` WHERE `CountryCode` = 'NLD' OR `CountryCode` = 'ALB';
