---consultar varias tablas a la vez------(estos metodos son mupesados a nivel procesamiento)--------------------------------------------------------------------------------------------------------------------------------- 

--? muestra titulo del juego categoria  y el que agrego ese juego
select  e.id,e.titulo,u.nombre as 'autor', c.nombre as 'categoria' from entradas e,usuarios u ,categorias c where  e.usuario_id = u.id and e.categoria_id = c.id;
--? muestra  la categoria y cuantas concurecias tiene
select c.nombre,count(e.id) from categorias c, entradas e where e.categoria_id = c.id group by e.categoria_id;
--? muestra el email de los usuarios y al lado cuantras entradas tienen 
select u.email,count(e.id) from usuarios u, entradas e where  u.id = e.usuario_id group by e.usuario_id ;

---inner join-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
select  e.id,e.titulo,u.nombre as 'autor', c.nombre as 'categoria' from entradas e inner join usuarios u on e.usuario_id = u.id inner join categorias c on e.categoria_id = c.id;
---left  join -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
select c.nombre,count(e.id) from categorias c left join entradas e on e.categoria_id = c.id group by e.categoria_id;
---right join -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
select c.nombre,count(e.id) from entradas e right join categorias c on e.categoria_id = c.id group by e.categoria_id;
---vistas----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---/* consulta almacenada como una tabla abitual y no almacena datos utiliza asociasiones*/
CREATE view entradas_con_nombres as select  e.id,e.titulo,u.nombre as 'autor', c.nombre as 'categoria' from entradas e inner join usuarios u on e.usuario_id = u.id inner join categorias c on e.categoria_id = c.id;
select * from entradas_con_nombres
select * from entradas_con_nombres where  Autor ='Mauricio';
drop view entradas_con_nombres; --? borramos la  vista 
