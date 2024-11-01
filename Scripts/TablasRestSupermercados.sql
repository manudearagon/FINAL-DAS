-- Crear tabla 'paises'
CREATE TABLE paises
(
    cod_pais INT PRIMARY KEY,
    nom_pais VARCHAR(100) NOT NULL,
    local BIT NOT NULL
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

-- Crear tabla 'empresas_externas'
CREATE TABLE empresas_externas
(
    nro_empresa INT PRIMARY KEY,
    razon_social VARCHAR(100) NOT NULL,
    cuit_empresa VARCHAR(20) NOT NULL,
    token_servicio VARCHAR(100) NOT NULL
);

-- Crear tabla 'supermercado'
CREATE TABLE supermercado
(
    cuit VARCHAR(20) PRIMARY KEY,
    razon_social VARCHAR(100) NOT NULL,
    calle VARCHAR(100) NOT NULL,
    nro_calle INT NOT NULL,
    telefonos VARCHAR(100) NOT NULL
);

-- Crear tabla 'sucursales'
CREATE TABLE sucursales
(
    nro_sucursal INT PRIMARY KEY,
    nom_sucursal VARCHAR(100) NOT NULL,
    calle VARCHAR(100) NOT NULL,
    nro_calle INT NOT NULL,
    telefonos VARCHAR(100) NOT NULL,
    coord_latitud DECIMAL(9,6) NOT NULL,
    coord_longitud DECIMAL(9,6) NOT NULL,
    nro_localidad INT NOT NULL,
    habilitada BIT NOT NULL,
    FOREIGN KEY (nro_localidad) REFERENCES localidades(nro_localidad)
);

-- Crear tabla 'horarios_sucursales'
CREATE TABLE horarios_sucursales
(
    nro_sucursal INT,
    dia_semana INT,
    hora_desde TIME NOT NULL,
    hora_hasta TIME NOT NULL,
    PRIMARY KEY (nro_sucursal, dia_semana),
    FOREIGN KEY (nro_sucursal) REFERENCES sucursales(nro_sucursal)
);

-- Crear tabla 'tipos_servicios_supermercado'
CREATE TABLE tipos_servicios_supermercado
(
    nro_tipo_servicio INT PRIMARY KEY,
    nom_tipo_servicio VARCHAR(100) NOT NULL
);

-- Crear tabla 'tipos_servicios_sucursales'
CREATE TABLE tipos_servicios_sucursales
(
    nro_sucursal INT,
    nro_tipo_servicio INT,
    vigente BIT NOT NULL,
    PRIMARY KEY (nro_sucursal, nro_tipo_servicio),
    FOREIGN KEY (nro_sucursal) REFERENCES sucursales(nro_sucursal),
    FOREIGN KEY (nro_tipo_servicio) REFERENCES tipos_servicios_supermercado(nro_tipo_servicio)
);

-- Crear tabla 'rubros_productos'
CREATE TABLE rubros_productos
(
    nro_rubro INT PRIMARY KEY,
    nom_rubro VARCHAR(100) NOT NULL,
    vigente BIT NOT NULL
);

-- Crear tabla 'categorias_productos'
CREATE TABLE categorias_productos
(
    nro_categoria INT PRIMARY KEY,
    nom_categoria VARCHAR(100) NOT NULL,
    nro_rubro INT NOT NULL,
    vigente BIT NOT NULL,
    FOREIGN KEY (nro_rubro) REFERENCES rubros_productos(nro_rubro)
);

-- Crear tabla 'marcas_productos'
CREATE TABLE marcas_productos
(
    nro_marca INT PRIMARY KEY,
    nom_marca VARCHAR(100) NOT NULL
);


-- Crear tabla 'tipos_productos'
CREATE TABLE tipos_productos
(
    nro_tipo_producto INT PRIMARY KEY,
    nom_tipo_producto VARCHAR(100) NOT NULL
);

-- Crear tabla 'productos'
CREATE TABLE productos
(
    cod_barra VARCHAR(50) PRIMARY KEY,
    nom_producto VARCHAR(100) NOT NULL,
    desc_producto VARCHAR(255),
    nro_categoria INT NOT NULL,
    imagen VARBINARY(MAX),
    nro_marca INT NOT NULL,
    nro_tipo_producto INT NOT NULL,
    vigente BIT NOT NULL,
    FOREIGN KEY (nro_categoria) REFERENCES categorias_productos(nro_categoria),
    FOREIGN KEY (nro_marca) REFERENCES marcas_productos(nro_marca),
    FOREIGN KEY (nro_tipo_producto) REFERENCES tipos_productos(nro_tipo_producto)
);

-- Crear tabla 'tipos_productos_marcas'
CREATE TABLE tipos_productos_marcas
(
    nro_marca INT,
    nro_tipo_producto INT,
    vigente BIT NOT NULL,
    PRIMARY KEY (nro_marca, nro_tipo_producto),
    FOREIGN KEY (nro_marca) REFERENCES marcas_productos(nro_marca),
    FOREIGN KEY (nro_tipo_producto) REFERENCES tipos_productos(nro_tipo_producto)
);

-- Crear tabla 'productos_sucursales'
CREATE TABLE productos_sucursales
(
    nro_sucursal INT,
    cod_barra VARCHAR(50),
    precio DECIMAL(10, 2) NOT NULL,
    vigente BIT NOT NULL,
    PRIMARY KEY (nro_sucursal, cod_barra),
    FOREIGN KEY (nro_sucursal) REFERENCES sucursales(nro_sucursal),
    FOREIGN KEY (cod_barra) REFERENCES productos(cod_barra)
);
