/**/

--int (n° caracteres )                  ENTERO
--integer (n° caracteres )              ENTERO
--varchar  (n° caracteres )             STRING/ALFANUMERICOS(maximo 255)
--char  (n° caracteres )                STRING/ALFANUMERICOS
--float  (n° caracteres decimales  )    DECIMAL/COMA FLOTANTE
--date,time,timestamp                   FECHAS/TIEMPOS

--/STRING MAS GRANDES
--TEXT        65536  caracteres
--MEDIUMTEXT     16  millones
--LONGTEXT        4  billones de caracteres
--/ENTEROS MAS GRANDES
--MEDIUMINT   
--BIGINT      
--crear tablas de sql --siempre terminan en plural 
create table  usuarios(
    id         int(11),
    nombre     varchar (100),
    apellidos  varchar (255),
    email      varchar (100),
    password   varchar (255)
);
---retriciones basicas-------------------------- 
--/ not null //? que el valor no tiene que ser nulo 
--/ default //?  valor predefinido en el campo  
--/ auto_increment  //?  valor que se autoincrementa (para los ids)

create table  usuarios(
    id         int(11) not null
    nombre     varchar (100) not null,
    apellidos  varchar (255) default 'hola esto es el valor predeterminado ',
    email      varchar (100) not null,
    password   varchar (255)
    constraint pk_usuarios PRIMARY KEY(id) --declaracion de llave primaria 

);
 #-------cambiar  nombre de base de datos -------------------------------------------------------------------------------------------------------------------------------------------- 
  ALTER TABLE usuarios RENAME TO usuarios_rename; // cambia el nombre de la tabla  dentro de la base de datos
 #-------cambiar  columnas de la  base de datos -------------------------------------------------------------------------------------------------------------------------------------------- 
  ALTER TABLE usuarios_rename CHANGE apellidos apellido varchar(100) null; //cambiar el valor de una columna
 #---modificar columna sin cambiar nombre -------------------------------------------------------------------------------------------------------------- 
   ALTER TABLE usuarios_rename MODIFY apellidos  varchar(40) null; //cambiar las variables y restricciones basicas de  una columna 
 #---AÑADIR COLUMNA-----------------------------------------------------------------------------------------------------------------------------------  
   ALTER TABLE usuarios_rename ADD website  varchar(100) null; //  agregar   variables y restricciones basicas de  una  nueva columna 
 #---AÑADIR UNA RESTRICION A COLUMNA-----------------------------------------------------------------------------------------------------------------------------------  
   ALTER TABLE usuarios_rename ADD CONSTRAINT   iq_email UNIQUE(email)  //  agregar    restricciones basicas de  una  nueva columna 
 #---borrar columna  -------------------------------------------------------------------------------------------------------------- 
ALTER TABLE usuarios_rename DROP website  //  agregar    restricciones basicas de  una  nueva columna 

