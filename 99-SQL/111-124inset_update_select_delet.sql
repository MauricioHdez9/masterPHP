---INSETAR NUEVOS REGISTROS----------------------------------------------------------
INSERT INTO usuarios  VALUES (null,'Mauricio','Apellidos ','mau@hacking.com','1234','2019-01-05'); 
INSERT INTO usuarios  VALUES (null,'ulises','Ape','m@hacking.com','1234','2019-01-05'); 
INSERT INTO usuarios  VALUES (null,'leonardo','Apelli ','mu@hacking.com','1234','2019-01-05'); 
---INSETAR CAMPOS ESPESCIFICOS DE UN REGISTRO------------------------------------------------------------------------ 
INSERT INTO usuarios (email,password) VALUES ('mu@hacking1.com','admin'); 
---CONSULTAS------------------------------------------------------------------------ 
SELECT emal,nombre,apellidos FROM usuarios; --? consulta de campos especificos 
SELECT * FROM usuarios;
---Operadores Aritmeticos----------------------------------------------------------------------------------  
SELECT email,(4+7) as 'pracion' from usuarios; 
SELECT email,(4-7) as 'pracion' from usuarios; 
SELECT email,(4*7) as 'pracion' from usuarios; 
SELECT email,(4/7) as 'pracion' from usuarios; 
SELECT email,(4+7) as 'pracion' from usuarios; 
SELECT id,email,(id+7) as 'pracion' from usuarios;  --? suma  el id + 7 y lo muestra --? (id+7) as 'pracion' = TODO ESTO ES UN CAMPO CON  UN ALIAS  
SELECT id,email,(4-7) as 'pracion' from usuarios order by id desc; 
SELECT id,email,(4*7) as 'pracion' from usuarios order by id asc; 
---funciones matematicas----------------------------------------------------------------------------------  
SELECT abs(7)        as   'operacion' from usuarios; --? valor absoluto
SELECT ceil(7.33)    as   'operacion' from usuarios; --? 
SELECT Rand(7.91,2)  as   'operacion' from usuarios; --? numero alatorio
SELECT Round(7.91,2)  as   'operacion' from usuarios;--? redondiar 
SELECT pi(7)         as   'operacion' from usuarios; --? 
SELECT sqrt(7)       as   'operacion' from usuarios; --? raiz cuadrada
SELECT truncate(7)   as   'operacion' from usuarios; --? 
SELECT abs(id)       as   'operacion' from usuarios; --?
--- https://www.javatpoint.com/sql-server-mathematical-functions
---funciones para texto ----------------------------------------------------------------------------------  
SELECT upper(nombre ) from usuarios;
SELECT lower(nombre ) from usuarios ;
SELECT concat(nombre,'  ',apellidos ) as 'conversion' from usuarios;--? concatena los campos 
SELECT length(concat(nombre,'',apellidos )) as 'conversion' from usuarios;
SELECT trim(concat(nombre,'',apellidos )) as 'conversion' from usuarios;
---funciones para fecha  ----------------------------------------------------------------------------------  
SELECT email,fecha, curdate() as 'fecha actual' from usuarios;          --? fecha actual
SELECT email,DATEDIFF(fecha,curdate()) as 'fecha actual' from usuarios; --? diferencia entre fechas 
SELECT email,dayname(fecha) as 'fecha actual' from usuarios;            --? muestra el dia que fue en esa fecha 
SELECT email,dayofmonth(fecha) as 'fecha actual' from usuarios;         --? muestra el mes que fue en esa fecha 
SELECT email,dayofwekk(fecha) as 'fecha actual' from usuarios;          --? muestra el semana que fue en esa fecha 
SELECT email,dayofyear(fecha) as 'fecha actual' from usuarios;          --? muestra el año que fue en esa fecha 
SELECT email,year(fecha) as 'fecha actual' from usuarios;               --? muestra el año que fue en esa fecha 
SELECT email,month(fecha) as 'fecha actual' from usuarios;              --? muestra el mes que fue en esa fecha 
SELECT email,day(fecha) as 'fecha actual' from usuarios;                --? muestra el dia que fue en esa fecha 
SELECT email,hour(fecha) as 'fecha actual' from usuarios;               --? muestra el hora que fue en esa fecha 
SELECT email,curtime() as 'fecha actual' from usuarios;                 --? muestra  la fecha actual
SELECT email,sysdate() as 'fecha actual' from usuarios;                 --? muestra  la fecha del sistema
SELECT email,date_format(fecha,'%d-%m-%Y') as 'fecha actual' from usuarios;                 --? muestra  la fecha del sistema
---funciones generales ----------------------------------------------------------------------------------  
SELECT email,isnull(apellidos) from usuarios;                 --? muestra  si el campo es null
SELECT email,strcmp('hola','hol4') from usuarios;                 --? muestra  si los campos son igules 
SELECT version() from usuarios;
SELECT user() from usuarios;
SELECT distinct user()  from usuarios;
SELECT distinct database()  from usuarios;
SELECT ifnull ()
---Consultas con condicion ----------------------------------------------------------------------------------  
SELECT * from usuarios where email ='admin'
select nombre,apellidos from usuarios where year(fecha)=2019; --? nombres  y apellidos que concidan con la fecha 
select nombre,apellidos from usuarios where year(fecha)=2005;--?mostra  nombre y apellidos  de tabla usuarios los que considan con año=2005
select nombre,apellidos from usuarios where year(fecha)!=2006 or ISNULL(fecha);--?mostra  nombre y apellidos  de tabla usuarios los que sea diferente  con año=2006 o sea null
select email from usuarios where apellidos like '%a%' and password = 4563;--?mostra  email  de tabla usuarios los que considan con el apellido que contega la 'a' y el password 4563  
select * from usuarios where (year(fecha)%2=0); --? mostra  todo  de tabla usuarios los que considan con fecha impar 
select * from usuarios where (year(fecha)<2020 and length(nombre)>5);--? mostra  todo  de tabla usuarios los que considan con fecha menor 2020 y nombre mayor a 5 caracteres 
select upper(nombre) as 'Nombre',apellidos FROM usuarios where (year(fecha)<2020 and length(nombre)>5);--? mostra  nombre y apellidos de tabla usuarios los que considan con fecha menor 2020 y nombre mayor a 5 caracteres 
select * from usuarios order by id;     --? mostra  todo  de tabla ordenada por id  
select * from usuarios order by id desc;--? mostra  todo  de tabla ordenada por id decendete
select * from usuarios order by id asc; --? mostra  todo  de tabla ordenada por id acendete
select * from usuarios limit 3;
select * from usuarios limit 0,3;
select * from usuarios limit 2,3;
---modificacion de filas ------------------------------------------------------------------------------------------------------------------------------------------------
update usuarios set  fecha=curdate() where id=3;
---borrar filas -------------------------------------------------------------------------------------------------------------------------------------------------------
delete from usuarios where id=4;--/se puede poner condicional cualquier campo de las columnas(nombre,apellido ,email,id) en este caso fue  id







