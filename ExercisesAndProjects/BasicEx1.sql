
/*
Si no tienes una base de datos, copia las siguientes dos líneas que no están comentadas
CREATE DATABASE IF NOT EXISTS pruebas;
USE pruebas;


   Si ya tienes una base de datos, sólo copia lo siguiente

CREATE TABLE tblUsuarios (
   idx INT PRIMARY KEY AUTO_INCREMENT,
   usuario VARCHAR(20),
   nombre VARCHAR(20),
   sexo VARCHAR(1),
   nivel TINYINT,
   email VARCHAR(50),
   telefono VARCHAR(20),
   marca VARCHAR(20),
   compañia VARCHAR(20),
   saldo FLOAT,
   activo BOOLEAN
);

INSERT INTO tblUsuarios 
VALUES 
('1','BRE2271','BRENDA','M','2','brenda@live.com','655-330-5736','SAMSUNG','IUSACELL','100','1'),
('2','OSC4677','OSCAR','H','3','oscar@gmail.com','655-143-4181','LG','TELCEL','0','1'),
('3','JOS7086','JOSE','H','3','francisco@gmail.com','655-143-3922','NOKIA','MOVISTAR','150','1'),
('4','LUI6115','LUIS','H','0','enrique@outlook.com','655-137-1279','SAMSUNG','TELCEL','50','1'),
('5','LUI7072','LUIS','H','1','luis@hotmail.com','655-100-8260','NOKIA','IUSACELL','50','0'),
('6','DAN2832','DANIEL','H','0','daniel@outlook.com','655-145-2586','SONY','UNEFON','100','1'),
('7','JAQ5351','JAQUELINE','M','0','jaqueline@outlook.com','655-330-5514','BLACKBERRY','AXEL','0','1'),
('8','ROM6520','ROMAN','H','2','roman@gmail.com','655-330-3263','LG','IUSACELL','50','1'),
('9','BLA9739','BLAS','H','0','blas@hotmail.com','655-330-3871','LG','UNEFON','100','1'),
('10','JES4752','JESSICA','M','1','jessica@hotmail.com','655-143-6861','SAMSUNG','TELCEL','500','1'),
('11','DIA6570','DIANA','M','1','diana@live.com','655-143-3952','SONY','UNEFON','100','0'),
('12','RIC8283','RICARDO','H','2','ricardo@hotmail.com','655-145-6049','MOTOROLA','IUSACELL','150','1'),
('13','VAL6882','VALENTINA','M','0','valentina@live.com','655-137-4253','BLACKBERRY','AT&T','50','0'),
('14','BRE8106','BRENDA','M','3','brenda2@gmail.com','655-100-1351','MOTOROLA','NEXTEL','150','1'),
('15','LUC4982','LUCIA','M','3','lucia@gmail.com','655-145-4992','BLACKBERRY','IUSACELL','0','1'),
('16','JUA2337','JUAN','H','0','juan@outlook.com','655-100-6517','SAMSUNG','AXEL','0','0'),
('17','ELP2984','ELPIDIO','H','1','elpidio@outlook.com','655-145-9938','MOTOROLA','MOVISTAR','500','1'),
('18','JES9640','JESSICA','M','3','jessica2@live.com','655-330-5143','SONY','IUSACELL','200','1'),
('19','LET4015','LETICIA','M','2','leticia@yahoo.com','655-143-4019','BLACKBERRY','UNEFON','100','1'),
('20','LUI1076','LUIS','H','3','luis2@live.com','655-100-5085','SONY','UNEFON','150','1'),
('21','HUG5441','HUGO','H','2','hugo@live.com','655-137-3935','MOTOROLA','AT&T','500','1');
*/

/* EJERCICIO 1: LISTA LOS NOMBRES DE LOS USUARIOS*/
USE pruebas;
SHOW TABLES FROM pruebas;
SHOW COLUMNS FROM `tblusuarios`;
SELECT `nombre` FROM tblusuarios;

/* EJERCICIO 2: CALCULA EL SALDO MAXIMO DE USUARIOS DE SEXO MUJER*/
/* COMO NO CONOZCO MAX ENTONCES SOLO MOSTRE USUARIOS MUJERES*/
SELECT * FROM tblusuarios;
SELECT * FROM tblusuarios WHERE `sexo` = 'M';
/* SOLUCION CON MAX*/
SELECT MAX(`saldo`) FROM tblusuarios WHERE `sexo` = 'M';

/* EJERCICIO 3: LISTA EL NOMBRE DE TELÉFONO DE LOS USUARIOS CON BLACKBERRY. NOKIA O SONY*/
/* SOLUCION CON OR*/
SELECT `telefono` FROM tblusuarios WHERE `marca` = 'BLACKBERRY' OR `marca` = 'NOKIA' OR `marca` = 'SONY';
/* SOLUCION CON IN*/
SELECT `telefono` FROM tblusuarios WHERE `marca` IN('BLACKBERRY','NOKIA','SONY');

/* EJERCICIO 4: CONTAR LOS USUARIOS SIN SALDO O INACTIVOS*/
/* NO SE CONTAR PERO SELECCIONARE A LOS USUARIOS CON ESTOS ATRIBUTOS*/
SELECT `nombre` FROM tblusuarios WHERE `saldo` = 0 OR `activo` = 0;
SELECT * FROM tblusuarios WHERE `saldo` = 0 OR `activo` = 0; /* COUNT CUENTA LAS COINCIDENCIAS*/
/*AQUI WHERE NOT COMPRUEBA SI EL VALOR DE SALDO ES CERO*/
SELECT * FROM tblusuarios WHERE NOT `saldo`;
SELECT COUNT(*) FROM tblusuarios WHERE NOT `saldo` OR `activo` = 0;/* SOLUCION*/

/* EJERCICIO 5: LISTAR EL LOGIN DE LOS USUARIOS CON NIVEL 1,2 O 3*/
SELECT `email` FROM tblusuarios WHERE `nivel` IN(1,2,3);/* SOLUCION*/

/* EJERCICIO 6: LISTAR LOS NÚMEROS DE TELÉFONOS CON SALDO MENOR O IGUAL A 300*/
SELECT `telefono` FROM tblusuarios WHERE `saldo` <= 300;/* SOLUCION*/

/* EJERCICIO 7: CALCULAR LA SUMA DE LOS USUARIOS DE LA COMPAÑIA TELEFÓNICA NETXTEL*/
SELECT * FROM tblusuarios;
SELECT SUM(`saldo`) FROM tblusuarios WHERE `compañia` = 'NEXTEL';/* SOLUCION*/
SELECT * FROM tblusuarios WHERE `compañia` = 'NEXTEL';/* COMPROBACION*/

/* EJERCICIO 8: CONTAR EL NUMERO DE USUARIOS POR COMPAÑIA TELEFONICA*/
SELECT DISTINCT `compañia` FROM tblusuarios;/*PARA VER CUANTAS COMPAÑIAS HAY Y CUALES SON*/
SELECT COUNT(*) FROM tblusuarios WHERE `compañia` = 'IUSATEL';/*PARA CONTAR UNA POR UNA o.O*/
SELECT `compañia`, COUNT(*) FROM tblusuarios GROUP BY `compañia`;/*SOLUCION*/
/*PARA PODER ORDENAR Y VISUALIZAR LOS USUARIOS POR COMPAÑIA PRIMERO SE SELECCIONA LA COLUMNA COMPAÑIA, 
PARA CONTARLOS SE UTILIZA EL COMANDO COUNT SEGUIDO DE LA SELECCION DE LA TABLA Y POSTERIORMENTE SE AGRUPA EL CONTEO
POR COMPAÑIA*/

/* EJERCICIO 9: CONTAR EL NUMERO DE USUARIOS POR NIVEL*/
SELECT `nivel`, COUNT(*) FROM tblusuarios GROUP BY `nivel`;/*SOLUCION*/
/*SE UTILIZO EL MISMO METODO DEL ANTERIOR EJERCICIO*/

/* EJERCICIO 10: LISTAR EL LOGIN DE LOS USUARIOS CON NIVEL 2*/
SELECT `usuario` FROM tblusuarios WHERE `nivel` = 2;

/* EJERCICIO 11: MOSTRAR EL EMAIL DE LOS USUARIOS QUE USAN GMAIL*/
SELECT `email` FROM tblusuarios WHERE `email` LIKE '%gmail.com';/* SOLUCION*/
/* LIKE BUSCA COINCIDENCIAS CON EL STRING QUE INGRECEMOS*/

/* EJERCICIO 12: LISTAR NOMBRE Y TELEFONO DE LOS USUARIOS CON TELEFONO SAMSUNG, LG O MOTOROLA*/
SELECT `nombre`, `telefono` FROM tblusuarios WHERE `marca` IN('SAMSUNG','LG','MOTOROLA');












