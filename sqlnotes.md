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

#### **Algunos comandos básicos**
* ***SHOW DATABASES***: Muestra todas las bases de datos y la estructura de sus tablas.
* ***SHOW TABLES***: Muestra las tablas de la base de datos seleccionada.
* ***SHOW COLUMNS FROM [nombre de tabla]***: Muestra los atributos de las columnas de la tabla seleccionada en el siguiente formato.
    |FIELD|TYPE|NULL|KEY|DEFAULT|EXTRA|
    |---|---|---|---|---|---|
    |actor_id|smallint unsigned|NO|PRI|NULL|auto_increment|
    |first_name|varchar|NO||NULL||
    |last_name|varchar|NO||NULL||
    |last_update|timestamp|NO||CURRENT_TIMESTAMP|DEFAULT_GENERATE|
    * FIELD: Nombre de columna definido por nosotros. 
    * TYPE: Tipo de dato que alberga la colmuna.
    * NULL: Missing value.
    * KEY: Indica si la columna esta indexada/enlazada.
    * DEFAULT: Valor por defecto asignado a la columna. 
    * EXTRA: Informacion adicional de la columna.

<br>

* ***SELECT [columna] FROM [tabla]***: Muestra una columna de la tabla seleccionada.
 
