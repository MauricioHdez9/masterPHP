--------- subconsultas (consultas dentro de otra consulta)----------------------------------------------------------------------------------------------------------------
insert into usuarios value (null,"admin","admin","admin@gmial.com","qwert",curdate());--? introducir dato en la tabla usuarios 
select * from usuarios where id in (select usuario_id from entradas);--? mostrar todo los usuarios que tenga  registros  en  la tabla entradas
select * from usuarios where id not in (select usuario_id from entradas);--? mostrar todo los usuarios que no  tenga  registros  en  la tabla entradas
select nombre,apellidos from usuarios where id in (select usuario_id from entradas where titulo like "%gta%");--?modtrar nombre y apellido de  todos los id que tengar registros en la tabla entradas y que diga gta  
---sacar todas las entradas de la categoria accion utilizando su nombre 
select titulo from entradas  where categoria_id in (select id from categorias where nombre ='accion');
---mostrar las categorias con 3 o mas entradas  
select * from categorias where id in (select categoria_id from entradas group by categoria_id HAVING COUNT(categoria_id)>=3);
---mostrar las categorias  que crearon una entrada un martes
select * from usuarios where id in (select usuario_id from entradas where dayofweek(fecha)=3); 
---mostra el usuario con mas entradas
select nombre from usuarios where id = (select usuario_id from entradas group by usuario_id order by count(id) desc limit 1);
---mostrar las categorias sin entradas 
select *from  categorias where id not in(select usuario_id from entradas );
