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

<br>

---

#### **Conceptos útiles**
* Case insensitive: El lenguaje SQL no distingue entre mayúsculas y inusculas. Pero es común escribirlo en mayúsculas.
* SQL ignora los espacios y los saltos de línea, pero se recomienda no utilizar saltos de línea ni espacios en blanco de manera innecesaria.

<br>

---

#### **Comandos básicos**
* ***SHOW DATABASES***: Muestra todas las bases de datos y la estructura de sus tablas.
* ***SHOW TABLES***: Muestra las tablas de la base de datos seleccionada.
* ***SHOW COLUMNS FROM [nombre de tabla]***: Muestra los atributos de las columnas de la tabla seleccionada en el siguiente formato.
<br>
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

<br>

* ***SELECT [columna1],[columna2],..[columnaX] FROM [tabla]***: Muestra una o varias columnas de la tabla seleccionada.
    * Tambien puedes usar ***SELECT * FROM [tabla]*** para ver todas las columnas que contiene la tabla.

