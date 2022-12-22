---insert de la tabla categorías

insert into categorias VALUES(null,'Accion'); 
insert into categorias VALUES(null,'Role'); 
insert into categorias VALUES(null,'Peleas'); 
---insert de la tabla entradas--------------------------------------------------------------------------------------------------------------------------------------------- 

insert into entradas VALUES(null,1,1,'gta5','revio del gta5',curdate());
insert into entradas VALUES(null,1,2,'la llamada de chutulo ','juego de rol',curdate());
insert into entradas VALUES(null,1,3,'tffX','revio del yashiro loco',curdate());

insert into entradas VALUES(null,2,1,'gta6','revio del gta6',curdate());
insert into entradas VALUES(null,2,2,'LOL2','revio lol  su sopartidas duran un monton5',curdate());
insert into entradas VALUES(null,2,3,'dLv3','revio del waifud6',curdate());

insert into entradas VALUES(null,3,1,'gta7','revio del gta7',curdate());
insert into entradas VALUES(null,3,2,'LOL3','revio lol  su sopartidas duran un monton4',curdate());
insert into entradas VALUES(null,3,3,'dLv2','revio del waifud2',curdate());
---consulta de agrupamiento---------------------------------------------------------------------------------------------------------------------------------------------
select titulo,categoria_id from entradas group by categoria_id; --? agrupa las entradas por id de categoria_id  en este caso solo hay 3 ids de categorias y 
select titulo from entradas group by categoria_id;
select count(titulo) as 'numero de entradas',categoria_id  from entradas group by categoria_id;
---consulta de agrupamiento con condiciones 
--? having  es lo mismo que where pero para consultas de agrupamiento 
select count(titulo) as 'numero de entradas',categoria_id from entradas group by categoria_id having count(titulo)>=4;
---funciones de agrupamiento
--avg --? sacar la media 
--count --? contar el numero los elementos
--max   --? valor maximo
--min   --? valor minimo
--sum --? suma todo el contenido de grupo 

select avg(id) as 'media del  id de categorias'    from  entradas;
select max(id) as 'media del  id de categorias'    from  entradas;
select min(id) as 'media del  id de categorias'    from  entradas;
select sum(id) as 'media del  id de categorias'    from  entradas;
select count(id) as 'media del  id de categorias'  from  entradas;


