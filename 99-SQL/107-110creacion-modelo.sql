CREATE TABLE usuarios(
    id         int (255) auto_increment not null,
    nombre     varchar(100) not null,
    apellidos  varchar(100) not null,   
    email     varchar(255) not null,
    password   varchar(255) not null,  
    fecha    date not null,
    CONSTRAINT pk_usuarios PRIMARY KEY (id),
    CONSTRAINT uq_email UNIQUE(email)
)ENGINE=innoDb;

CREATE TABLE categorias(

id int (255) auto_increment not null,
nombre varchar(100),
CONSTRAINT pk_usuarios PRIMARY KEY (id)
)ENGINE=innoDb;

CREATE TABLE entradas(
    id  int(255) auto_increment not null,
    usuario_id int(255)   not null,
    categoria_id int(255) not null,
    titulo varchar(255)   not null,
    descripcion MEDIUMTEXT,
    fecha   date not null,
    CONSTRAINT pk_entradas PRIMARY KEY(id),
    CONSTRAINT fk_entrada_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id),
    CONSTRAINT fk_entrada_categoria FOREIGN KEY(categoria_id) REFERENCES categorias(id)

)ENGINE=innoDb;
    -- CONSTRAINT fk_entrada_categoria FOREING KEY(categoria_id) REFERENCES categorias(id) ON DELETE NO ACTION
    -- CONSTRAINT fk_entrada_categoria FOREING KEY(categoria_id) REFERENCES categorias(id) ON DELETE CASCADE
    -- CONSTRAINT fk_entrada_categoria FOREING KEY(categoria_id) REFERENCES categorias(id) ON DELETE SET NULL
    -- CONSTRAINT fk_entrada_categoria FOREING KEY(categoria_id) REFERENCES categorias(id) ON DELETE SET DEFAULT
    -- CONSTRAINT fk_entrada_categoria FOREING KEY(categoria_id) REFERENCES categorias(id) ON UPDATE CASCADE ---actualizacion en acscada