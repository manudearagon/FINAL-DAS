-- Crear bd IndecRest
-- CREATE DATABASE indec_rest;
-- Eliminar bd indec_rest
DROP TABLE paises;

-- Crear tabla 'paises'
CREATE TABLE paises
(
    cod_pais INT PRIMARY KEY,
    nom_pais VARCHAR(100) NOT NULL,
    local VARCHAR(100) NOT NULL
);

-- Crear tabla 'provincias'
CREATE TABLE provincias
(
    cod_pais INT,
    cod_provincia INT,
    nom_provincia VARCHAR(100) NOT NULL,
    PRIMARY KEY (cod_pais, cod_provincia),
    FOREIGN KEY (cod_pais) REFERENCES paises(cod_pais)
);

-- Crear tabla 'localidades'
CREATE TABLE localidades
(
    nro_localidad INT PRIMARY KEY,
    nom_localidad VARCHAR(100) NOT NULL,
    cod_pais INT NOT NULL,
    cod_provincia INT NOT NULL,
    CONSTRAINT AK1_localidades UNIQUE (nom_localidad),
    FOREIGN KEY (cod_pais, cod_provincia) REFERENCES provincias(cod_pais, cod_provincia)
);

-- Crear tabla supermercados
CREATE TABLE supermercados
(
    nro_supermercado int not null identity
        constraint pk_supermercados primary key,
    razon_social varchar(255) not null,
    cuit varchar(15) not null
)

-- Crear tabla 'sucursales'
CREATE TABLE sucursales
(
    nro_supermercado int not null
        constraint fk_sucursales_supermercados references dbo.supermercados,
    nro_sucursal int not null,
    nom_sucursal varchar(255) not null,
    calle varchar(255),
    nro_calle int,
    telefonos varchar(50),
    coord_latitud float,
    coord_longitud float,
    horario_sucursal varchar(255),
    servicios_disponibles varchar(255),
    nro_localidad int not null
        constraint fk_sucursales_localidades references dbo.localidades,
    habilitada bit not null,
    constraint pk_sucursales primary key(nro_supermercado, nro_sucursal)
);

-- Crear tabla servicios supermercados
CREATE TABLE servicios_supermercados
(
    nro_supermercado int not null
        constraint fk_servicios_supermercados_supermercados references dbo.supermercados,
    url_servicio varchar(255),
    tipo_servicio varchar(50),
    token_servicio varchar(255),
    fecha_ult_act_servicio datetime,
    constraint pk_servicios_supermercados primary key(nro_supermercado, url_servicio)
);

-- Crear tabla rubros productos
CREATE TABLE rubros_productos
(
    nro_rubro int not null identity
        constraint pk_rubros primary key,
    nom_rubro varchar(255) not null,
    vigente bit not null
);

CREATE TABLE categorias_productos
(
    nro_categoria int not null identity
        constraint pk_categorias primary key,
    nom_categoria varchar(255) not null,
    nro_rubro int not null
        constraint fk_categorias_rubros references dbo.rubros_productos,
    vigente bit not null
);

CREATE TABLE marcas_productos
(
    nro_marca int not null identity
        constraint pk_marcas primary key,
    nom_marca varchar(255) not null,
    vigente bit not null
);

-- Crear tabla 'tipos_productos'
CREATE TABLE tipos_productos
(
    nro_tipo_producto INT PRIMARY KEY,
    nom_tipo_producto VARCHAR(100) NOT NULL
);

-- Crear tabla 'tipos_productos_marcas'
CREATE TABLE tipos_productos_marcas
(
    nro_marca int not null
        constraint fk_tipos_marcas_marcas references dbo.marcas_productos,
    nro_tipo_producto int not null
        constraint fk_tipos_marcas_tipos references dbo.tipos_productos,
    vigente bit not null,
    constraint pk_tipos_productos_marcas primary key(nro_marca, nro_tipo_producto)
);

-- Crear tabla 'productos'
CREATE TABLE productos
(
    cod_barra varchar(13) not null
        constraint pk_productos primary key,
    nom_producto varchar(255) not null,
    desc_producto varchar(255),
    nro_categoria int not null
        constraint fk_productos_categorias references dbo.categorias_productos,
    imagen varbinary(max),
    nro_marca int not null
        constraint fk_productos_marcas references dbo.marcas_productos,
    nro_tipo_producto int not null
        constraint fk_productos_tipos references dbo.tipos_productos,
    vigente bit not null
);

-- Crear tabla 'productos_supermercados'
CREATE TABLE productos_supermercados
(
    nro_supermercado int not null,
    nro_sucursal int not null,
    cod_barra varchar(13) not null
        constraint fk_productos_supermercados_productos references dbo.productos,
    precio decimal(18, 2),
    fecha_ult_actualizacion datetime,

    constraint pk_productos_supermercados primary key(nro_supermercado, nro_sucursal, cod_barra),

    constraint fk_productos_supermercados_supermercados foreign key(nro_supermercado) 
        references dbo.supermercados(nro_supermercado),

    constraint fk_productos_supermercados_sucursales foreign key(nro_supermercado, nro_sucursal)
        references dbo.sucursales(nro_supermercado, nro_sucursal)
);

-- Crear tabla 'idiomas'
CREATE TABLE idiomas
(
    cod_idioma varchar(2) not null
        constraint pk_idiomas primary key,
    nom_idioma varchar(255) not null
);


-- Crear tabla 'idiomas_rubros_productos'
CREATE TABLE idiomas_rubros_productos
(
    nro_rubro int not null
        constraint fk_idiomas_rubros references dbo.rubros_productos,
    cod_idioma varchar(2) not null
        constraint fk_idiomas_rubros_idiomas references dbo.idiomas,
    rubro varchar(255),
    constraint pk_idiomas_rubros primary key(nro_rubro, cod_idioma)
);

-- Crear tabla idiomas_categorias_productos
CREATE TABLE idiomas_categorias_productos
(
    nro_categoria int not null
        constraint fk_idiomas_categorias references dbo.categorias_productos,
    cod_idioma varchar(2) not null
        constraint fk_idiomas_categorias_idiomas references dbo.idiomas,
    categoria varchar(255),
    constraint pk_idiomas_categorias primary key(nro_categoria, cod_idioma)
);


-- Crear tabla 'idiomas_tipos_productos'
CREATE TABLE idiomas_tipos_productos
(
    nro_tipo_producto int not null
        constraint fk_idiomas_tipos references dbo.tipos_productos,
    cod_idioma varchar(2) not null
        constraint fk_idiomas_tipos_idiomas references dbo.idiomas,
    tipo_producto varchar(255),
    constraint pk_idiomas_tipos primary key(nro_tipo_producto, cod_idioma)
);