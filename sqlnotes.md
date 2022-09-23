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

<br>

---

#### **Comandos básicos**
* ***SHOW DATABASES***: Muestra todas las bases de datos y la estructura de sus tablas.
    ```SQL
    SHOW DATABASES;
    ```

---

* ***SHOW TABLES***: Muestra las tablas de la base de datos seleccionada.
    ```SQL
    SHOW TABLES;
    ```
---

* ***SHOW COLUMNS FROM [nombre de tabla]***: Muestra los atributos de las columnas de la tabla seleccionada en el siguiente formato.
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

* ***SELECT [columna1],[columna2],..[columnaX] FROM [tabla]***: Muestra una o varias columnas de la tabla seleccionada.
    * Tambien puedes usar ***SELECT * FROM [tabla]*** para ver todas las columnas que contiene la tabla.
    ```SQL
    SELECT [columna1],[columna2],..[columnaX] FROM [tabla];
    ```
    * Es recomendable utilizar comillas (`), cuando se hace referencia a varias columnas para evitar que se confundan los nombres de las mismas con comandos de SQL.

---

* ***DISTINCT***: Muestra valores que no se repiten en la columna que seleccionemos, por ejemplo el código:
    ```SQL
    SHOW DISTINCT Population FROM city;
    ```
    *  Esto hace que se seleccione la columna poblacion y solo se muestren los resultados diferentes entre si.
    ```SQL
    SHOW DISTINCT Population, Name FROM city;
    ```
    * El query anterior hace lo mismo con la columna population y name. **Sin embargo si todos los registros de alguna de las columnas son distintos, entonces se mostraran todos los de la misma y de la otra columna también.**

---

* ***LIMIT***: Permite mostrar cierta cantidad de resultados de una tabla en vez de todos. Query ejemplo:
    ```SQL
    SELECT lista FROM tabla1 LIMIT 5;
    ```
    * Esto muestra solo los primeros 5 resultados de la columna lista, de la tabla1.

---

* ***OFFSET***: Permite elegir desde donde empezará a mostrarse las filas, junto al comando ***LIMIT***. Ejemplo:
    ```SQL
    SELECT columna1 FROM tabla1 LIMIT 5 OFFSET 4; 
    ```
    * Tambien es válido utilizar la siguiente sintaxis: ***SELECT [columna] FROM [tabla] LIMIT [offset],[limit];***. Asi:
    ```SQL
    SELECT columna1 FROM tabla1 LIMIT 4,5; 
    ```
    * Este ultimo query es lo mismo que el anterior.
    

