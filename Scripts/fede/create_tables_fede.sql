use indec
go

-- Eliminar las tablas dependientes primero (con claves for�neas)
DROP TABLE IF EXISTS dbo.idiomas_tipos_productos;
DROP TABLE IF EXISTS dbo.idiomas_categorias_productos;
DROP TABLE IF EXISTS dbo.idiomas_rubros_productos;
DROP TABLE IF EXISTS dbo.productos_supermercados;
DROP TABLE IF EXISTS dbo.productos;
DROP TABLE IF EXISTS dbo.tipos_productos_marcas;
DROP TABLE IF EXISTS dbo.tipos_productos;
DROP TABLE IF EXISTS dbo.marcas_productos;
DROP TABLE IF EXISTS dbo.categorias_productos;
DROP TABLE IF EXISTS dbo.rubros_productos;
DROP TABLE IF EXISTS dbo.servicios_supermercados;
DROP TABLE IF EXISTS dbo.sucursales;
DROP TABLE IF EXISTS dbo.supermercados;
DROP TABLE IF EXISTS dbo.localidades;
DROP TABLE IF EXISTS dbo.provincias;
DROP TABLE IF EXISTS dbo.paises;
DROP TABLE IF EXISTS dbo.idiomas;
go

/* -------------------------------------
   Tabla: paises
   ------------------------------------- */
create table dbo.paises
(
 cod_pais		varchar(3)		not null
				constraint PK__paises primary key,
 nom_pais		varchar(255)	not null,
 local          varchar(255)    not null
)
go

/* -------------------------------------
   tabla: provincias
   ------------------------------------- */
create table dbo.provincias
(
	cod_pais			varchar(3)		not null
        constraint fk_provincias_paises references dbo.paises,
    cod_provincia		varchar(3)		not null,
    nom_provincia		varchar(255)	not null,
    constraint pk_provincias primary key(cod_pais, cod_provincia)
)
go

/* -------------------------------------
   tabla: localidades
   ------------------------------------- */
create table dbo.localidades
(
    nro_localidad		int				not null	identity
        constraint pk_localidades primary key,
    nom_localidad		varchar(255)	not null,
    cod_pais			varchar(3)		not null,
    cod_provincia		varchar(3)		not null,
    constraint fk_localidades_provincias 
        foreign key(cod_pais, cod_provincia) references dbo.provincias,
    constraint uk_localidades unique(cod_pais, cod_provincia, nom_localidad)
)
go

/* -------------------------------------
   tabla: supermercados
   ------------------------------------- */
create table dbo.supermercados
(
    nro_supermercado	int				not null	identity
        constraint pk_supermercados primary key,
    razon_social		varchar(255)	not null,
    cuit				varchar(15)		not null
)
go

/* -------------------------------------
   tabla: sucursales
   ------------------------------------- */
create table dbo.sucursales
(
    nro_supermercado		int				not null
        constraint fk_sucursales_supermercados references dbo.supermercados,
    nro_sucursal			int				not null,
    nom_sucursal			varchar(255)	not null,
    calle					varchar(255),
    nro_calle				int,
    telefonos				varchar(50),
    coord_latitud			float,
    coord_longitud			float,
    horario_sucursal		varchar(255),
    servicios_disponibles	varchar(255),
    nro_localidad			int				not null
        constraint fk_sucursales_localidades references dbo.localidades,
    habilitada				bit				not null,
	constraint pk_sucursales primary key(nro_supermercado, nro_sucursal)
)
go

/* -------------------------------------
   tabla: servicios_supermercados
   ------------------------------------- */
create table dbo.servicios_supermercados
(
    nro_supermercado		int				not null
        constraint fk_servicios_supermercados_supermercados references dbo.supermercados,
    url_servicio			varchar(255),
    tipo_servicio			varchar(50),
    token_servicio			varchar(255),
    fecha_ult_act_servicio	datetime,
	constraint pk_servicios_supermercados primary key(nro_supermercado, url_servicio)
)
go

/* -------------------------------------
   tabla: rubros_productos
   ------------------------------------- */
create table dbo.rubros_productos
(
    nro_rubro				int				not null identity
        constraint pk_rubros primary key,
    nom_rubro				varchar(255)	not null,
    vigente					bit				not null
)
go

/* -------------------------------------
   tabla: categorias_productos
   ------------------------------------- */
create table dbo.categorias_productos
(
    nro_categoria			int				not null identity
        constraint pk_categorias primary key,
    nom_categoria			varchar(255)	not null,
    nro_rubro				int				not null
        constraint fk_categorias_rubros references dbo.rubros_productos,
    vigente					bit				not null
)
go

/* -------------------------------------
   tabla: marcas_productos
   ------------------------------------- */
create table dbo.marcas_productos
(
    nro_marca				int				not null identity
        constraint pk_marcas primary key,
    nom_marca				varchar(255)	not null,
    vigente					bit				not null
)
go

/* -------------------------------------
   tabla: tipos_productos
   ------------------------------------- */
create table dbo.tipos_productos
(
    nro_tipo_producto		int				not null identity
        constraint pk_tipos_productos primary key,
    nom_tipo_producto		varchar(255)	not null
)
go

/* -------------------------------------
   tabla: tipos_productos_marcas
   ------------------------------------- */
create table dbo.tipos_productos_marcas
(
    nro_marca				int				not null
        constraint fk_tipos_marcas_marcas references dbo.marcas_productos,
    nro_tipo_producto		int				not null
        constraint fk_tipos_marcas_tipos references dbo.tipos_productos,
    vigente					bit				not null,
    constraint pk_tipos_productos_marcas primary key(nro_marca, nro_tipo_producto)
)
go

/* -------------------------------------
   tabla: productos
   ------------------------------------- */
create table dbo.productos
(
    cod_barra				varchar(13)		not null
        constraint pk_productos primary key,
    nom_producto			varchar(255)	not null,
    desc_producto			varchar(255),
    nro_categoria			int				not null
        constraint fk_productos_categorias references dbo.categorias_productos,
    imagen					varbinary(max),
    nro_marca				int				not null
        constraint fk_productos_marcas references dbo.marcas_productos,
    nro_tipo_producto		int				not null
        constraint fk_productos_tipos references dbo.tipos_productos,
    vigente					bit				not null
)
go

/* -------------------------------------
   tabla: productos_supermercados
   ------------------------------------- */
create table dbo.productos_supermercados
(
    nro_supermercado        int             not null,
    nro_sucursal            int             not null,
    cod_barra               varchar(13)     not null
        constraint fk_productos_supermercados_productos references dbo.productos,
    precio                  decimal(18, 2),
    fecha_ult_actualizacion datetime,
    
    constraint pk_productos_supermercados primary key(nro_supermercado, nro_sucursal, cod_barra),

    constraint fk_productos_supermercados_supermercados foreign key(nro_supermercado) 
        references dbo.supermercados(nro_supermercado),
    
    constraint fk_productos_supermercados_sucursales foreign key(nro_supermercado, nro_sucursal)
        references dbo.sucursales(nro_supermercado, nro_sucursal)
)
go

/* -------------------------------------
   tabla: idiomas
   ------------------------------------- */
create table dbo.idiomas
(
    cod_idioma				varchar(2)		not null
        constraint pk_idiomas primary key,
    nom_idioma				varchar(255)	not null
)
go

/* -------------------------------------
   tabla: idiomas_rubros_productos
   ------------------------------------- */
create table dbo.idiomas_rubros_productos
(
    nro_rubro				int				not null
        constraint fk_idiomas_rubros references dbo.rubros_productos,
    cod_idioma				varchar(2)		not null
        constraint fk_idiomas_rubros_idiomas references dbo.idiomas,
    rubro					varchar(255),
    constraint pk_idiomas_rubros primary key(nro_rubro, cod_idioma)
)
go

/* -------------------------------------
   tabla: idiomas_categorias_productos
   ------------------------------------- */
create table dbo.idiomas_categorias_productos
(
    nro_categoria			int				not null
        constraint fk_idiomas_categorias references dbo.categorias_productos,
    cod_idioma				varchar(2)		not null
        constraint fk_idiomas_categorias_idiomas references dbo.idiomas,
    categoria				varchar(255),
    constraint pk_idiomas_categorias primary key(nro_categoria, cod_idioma)
)
go

/* -------------------------------------
   tabla: idiomas_tipos_productos
   ------------------------------------- */
create table dbo.idiomas_tipos_productos
(
    nro_tipo_producto		int				not null
        constraint fk_idiomas_tipos references dbo.tipos_productos,
    cod_idioma				varchar(2)		not null
        constraint fk_idiomas_tipos_idiomas references dbo.idiomas,
    tipo_producto			varchar(255),
    constraint pk_idiomas_tipos primary key(nro_tipo_producto, cod_idioma)
)
go