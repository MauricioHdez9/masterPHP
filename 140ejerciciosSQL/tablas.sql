-- CONSTRAINT fk_entrada_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id),
-- CONSTRAINT fk_entrada_categoria FOREIGN KEY(categoria_id) REFERENCES categorias(id)
CREATE database if not exists concesionario;
------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE grupos (
    id int(10) auto_increment not null,
    nombre varchar(100) not null,
    ciudad varchar(100),
    CONSTRAINT pk_grupos PRIMARY KEY(id)
)ENGINE=innoDb;
------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE choches (
    id int(10) auto_increment not null, 
    modelo varchar(100) not null,
    marca varchar(50),
    precio int(20)      not null,
    srock int(255)      not null,
    CONSTRAINT pk_choches PRIMARY KEY(id)

)ENGINE=innoDb;
------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE vendedores (
    id int(10) auto_increment not null,
    grupo_id int(10) not null,
    jefe int(10) ,
    nombre varchar(100)not null,
    app varchar(150)not null,
    apm varchar(150),
    cargo varchar(50) not null,
    fecha date ,
    sueldo float(20,2) not null,
    comision float(10,2) not null,
    CONSTRAINT pk_vendedores PRIMARY KEY(id),
    constraint fk_vendedor_grupo FOREIGN KEY(grupo_id) REFERENCES grupos(id),
    CONSTRAINT fk_vendedor_jefe FOREIGN key(jefe) REFERENCES vendedores(id)

)ENGINE=innoDb;
------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE clientes(
    id int(10) auto_increment not null,
    vendedor_id int(10),
    nombre varchar(150) not null,
    ciudad varchar(100),
    gastado float(50,2),
    fecha date,
    CONSTRAINT pk_clientes PRIMARY KEY(id),
    CONSTRAINT fk_cliente_vendedor FOREIGN KEY(vendedor_id) REFERENCES vendedores(id)
)ENGINE=innoDb;
------------------------------------------------------------------------------------------------------------------------------------------------
create table encargos(
    id int(10) auto_increment not null,
    cliente_id int(10) not null,
    coche_id int(10) not null,
    cantidad int (100),
    fecha date,
    CONSTRAINT pk_encargos PRIMARY KEY(id),
    CONSTRAINT fk_encargo_cliente FOREIGN KEY(cliente_id) REFERENCES clientes(id),
    CONSTRAINT fk_encargo_coche FOREIGN KEY(coche_id) REFERENCES choches(id)
)ENGINE=innoDb;
--#grupos 
--#
--#
--#