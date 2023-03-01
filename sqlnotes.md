## SQL SoloLearn
<br>

### Se resumen los temas vistos en el curso
---
#### **Que es SQL**
* Structured Query Language: Se usa para accesder y manipular bases de datos. 
* Base de datos, es una colección de datos ordenados de una manera tal que facilite el acceso.
* ESta echa de tablas que almacenan informacion relevante.
* Las tablas, conformadas por filas y columnas, cada columna incluye un conjunto de campos los cuales, basados en los datos que albergarán.
* Primary key: Un identificador único para cada registro.

    |ID|Campo1|Campo2|
    |---|---|---|
    |1|dato1|datoA|
    |2|dato2|datoB|
    |3|dato3|datoC|
    |4|dato4|datoD|
* De la tabla anterior el primary key es el ID


---

#### **Conceptos útiles**
* Case insensitive: El lenguaje SQL no distingue entre mayúsculas y inusculas. Pero es común escribirlo en mayúsculas.
* SQL ignora los espacios y los saltos de línea, pero se recomienda no utilizar saltos de línea ni espacios en blanco de manera innecesaria.


---

#### **Comandos básicos**
1. ***SHOW DATABASES***: Muestra todas las bases de datos y la estructura de sus tablas.
    ```SQL
    SHOW DATABASES;
    ```

---

2. ***SHOW TABLES***: Muestra las tablas de la base de datos seleccionada.
    ```SQL
    SHOW TABLES;
    ```
---

3. ***SHOW COLUMNS FROM [nombre de tabla]***: Muestra los atributos de las columnas de la tabla seleccionada en el siguiente formato.
    ```SQL
    SHOW COLUMNS FROM [nombre de tabla];
    ```
    |FIELD|TYPE|NULL|KEY|DEFAULT|EXTRA|
    |---|---|---|---|---|---|
    |actor_id|smallint unsigned|NO|PRI|NULL|auto_increment|
    |first_name|varchar|NO||NULL||
    |last_name|varchar|NO||NULL||
    |last_update|timestamp|NO||CURRENT_TIMESTAMP|DEFAULT_GENERATE|

    * FIELD: Nombre de columna definido por nosotros. 
    * TYPE: Tipo de dato que alberga la colmuna.
    * NULL: Missing value. Sin dato alguno.
    * KEY: Indica si la columna esta indexada/enlazada.
    * DEFAULT: Valor por defecto asignado a la columna. 
    * EXTRA: Informacion adicional de la columna.
    
    ```SQL
    SELECT [columna1],[columna2],..[columnaX] FROM [tabla];
    ```

---

4. ***SELECT [columna1],[columna2],..[columnaX] FROM [tabla]***: Muestra una o varias columnas de la tabla seleccionada.
    * Tambien puedes usar ***SELECT * FROM [tabla]*** para ver todas las columnas que contiene la tabla.
    ```SQL
    SELECT [columna1],[columna2],..[columnaX] FROM [tabla];
    ```
    * Es recomendable utilizar comillas (`), cuando se hace referencia a varias columnas para evitar que se confundan los nombres de las mismas con comandos de SQL.

---

5. ***DISTINCT***: Muestra valores que no se repiten en la columna que seleccionemos, por ejemplo el código:
    ```SQL
    SELECT DISTINCT Population FROM city;
    ```
    *  Esto hace que se seleccione la columna poblacion y solo se muestren los resultados diferentes entre si.
    ```SQL
    SELECT DISTINCT Population, Name FROM city;
    ```
    * El query anterior hace lo mismo con la columna population y name. **Sin embargo si todos los registros de alguna de las columnas son distintos, entonces se mostraran todos los de la misma y de la otra columna también.**

---

6. ***LIMIT***: Permite mostrar cierta cantidad de resultados de una tabla en vez de todos. Query ejemplo:
    ```SQL
    SELECT lista FROM tabla1 LIMIT 5;
    ```
    * Esto muestra solo los primeros 5 resultados de la columna lista, de la tabla1.

---

7. ***OFFSET***: Permite elegir desde donde empezará a mostrarse las filas, junto al comando ***LIMIT***. Ejemplo:
    ```SQL
    SELECT columna1 FROM tabla1 LIMIT 5 OFFSET 4; 
    ```
    * Tambien es válido utilizar la siguiente sintaxis: ***SELECT [columna] FROM [tabla] LIMIT [offset],[limit];***. Asi:
    ```SQL
    SELECT columna1 FROM tabla1 LIMIT 4,5; 
    ```
    * Este ultimo query es lo mismo que el anterior.
    
---

8. ***ORDER BY***: Ordena numérica o alfabéticamente los resultados de la tabla.
    ```SQL
    SELECT * FROM `city` ORDER BY `Name`;
    ```
    * El query anterior muestra la tabla city con los nombres de las ciudades ordenados de manera alfabética.
    * Por defecto los resultados se muestran en orden ascendente.
    ```SQL
    SELECT * FROM `city` ORDER BY `Name`,`CountryCode`;
    ```
    * El query anterior ordena por nombre y luego por CountryCode, util si por ejemplo tenemos dos ciudades con el mismo nombre, las diferenciariamos por su countrycode.
    * Notese que el comando ***ORDER BY*** en la misma secuencia en la que escribimos sus argumentos.

---

8. ***WHERE***: Permite seleccionar una fila de acuerdo al parámetro que nosotros establecemos.
    * Sintaxis: ***SELECT [columna] FROM [tabla] WHERE [columna]=[valor]***
    ```SQL
    SELECT * FROM `tabla1` WHERE `ID` = 5;
    ```
    * Este query permite elegir aquella columna de la tabla1 donde se cumpla que el valor ID sea 5.
    * Tambien se pueden usar carácteres no numéricos como argumento. 
    * Para introducir valores textuales como argumento es necesario poner entrecomillas dobles o simples el argumento para que sea leído com un string.
    ```SQL
    SELECT * FROM `tabla1` WHERE `Name` = "Seatle";
    ```
    * Muestra la fila que coincida con el nombre especifiacdo de la columna name.

---

8. ***BETWEEN***: Este comando es un operador mas que funciona en complemento con WHERE, a continuacion se muestra su sintaxis.
    * Sirve para poder seleccionar un rango de alguna columna que contenga carácteres numéricos.
    * Sintaxis: ***SELECT [columna] FROM [tabla] WHERE [columna] BETWEEN [valor1] AND [valor2]***
    ```SQL
    SELECT * FROM tabla1 WHERE ID BETWEEN 3 AND 5
    ```
    * Muestra las filas donde el valor de id esta entre 3 y 5.
    * El primero valor debe ser obligatoriamente menor al segundo, de lo contrario no se ejecutara el query.

---

8. ***AND OR NOT IN***: Operadores lógicos que permitiarn un filtrado mas selectivo en las tablas.
    * Sintaxis AND OR: ***SELECT [columna] FROM [tabla] WHERE [expresion1] AND/OR [expresion2]***
    ```SQL
    SELECT * FROM `city` WHERE `ID` >= 8 AND `ID` <= 15 ;
    ```
    * El query muestra filas donde el valor de ID este entre 8 y 15.
    ```SQL
    SELECT * FROM `city` WHERE `ID` <=20 AND `CountryCode`='NLD'; 
    ```
    * El query Muestra las primeras 20 ciudades cuyo codigo es nld.
    ```SQL
    SELECT * FROM `city` WHERE `CountryCode` = 'NLD' OR `CountryCode` = 'ALB';
    ```
    * Muestra columnas donde el countrycode es nld o alb.
    ```SQL
    SELECT * FROM `city` WHERE `ID` <= 8 OR `ID` >= 20;
    ```
    * Omite valores entre 8 y 20.
    ```SQL
    SELECT * FROM `city` WHERE `ID` >=20 AND (`CountryCode`='NLD' OR `CountryCode`='ALB'); 
    ```
    * Este es una combinacion de and y or donde se selecciona id mayor a 20 y codigos iguales a nld o alb.



---
---
### Anexos sobre sintaxis
* Nombres completamente calificados: Es una forma de escribir la sintaxis en sql, por ejemplo.
    ```SQL
    SELECT city.id FROM city;
    ```
    * Es o mismo que.
    ```SQL
    SELECT id FROM city;
    ```
    * Se define la tabla luego el punto y la columna, esa es la principal diferencia.
    * Esto es bastante útil cuando se trabaja con diferentes tablas que contienten o utilizan las mismas columnas.
* El punto y coma (**;**): Se utiliza para escribir varios querys en un solo script, muy util para ejecutarlos uno por uno .
* Operadores en SQL, a contnuacion se muestra una tabla con los operadores que se pueden utilizar con comandos que los admitan.

    |Operador|Descripción|
    |---|---|
    |=|Igual que|
    |!=|Diferente de|
    |>|Mayor que|
    |<|Menor que|
    |>=|Mayor o igual que|
    |<=|Menor o igual que|
    |BETWEEN|Dentro de un rango especifico|
    
    * Con ello podemos filtrar resultados de nuestra tabla o buscar alguna fila en especifico entre muchas otras aplicaciones.
    
    </br>
* Operadores logicos de SQL.
    |Operador|Descripción|
    |---|---|
    |AND|Es verdadero si ambas expresiones son iguales.|
    |OR|Verdadero si al menos una de las expresiones son correctas.|
    |IN|Igual si un operando es igual a alguno de una lista de expresiones.|
    |NOT|Retorna un valor verdadero si una expresion no lo es.|