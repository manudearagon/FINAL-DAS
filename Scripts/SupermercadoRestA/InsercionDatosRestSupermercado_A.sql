-- DELETE FROM paises;
-- DELETE FROM provincias;
-- DELETE FROM localidades;
-- DELETE FROM empresas_externas;
-- DELETE FROM supermercado;
-- DELETE FROM sucursales;
-- DELETE FROM horarios_sucursales;
-- DELETE FROM tipos_servicios_supermercado;
-- DELETE FROM tipos_servicios_sucursales;
-- DELETE FROM rubros_productos;
-- DELETE FROM categorias_productos;
-- DELETE FROM marcas_productos;
-- DELETE FROM tipos_productos;
-- DELETE FROM productos;
-- DELETE FROM tipos_productos_marcas;
-- DELETE FROM productos_sucursales;

SELECT *
FROM paises;
SELECT *
FROM provincias;
SELECT *
FROM localidades;
SELECT *
FROM empresas_externas;
SELECT *
FROM supermercado;
SELECT *
FROM sucursales;
SELECT *
FROM horarios_sucursales;

insert into paises
    (cod_pais, nom_pais, local)
values
    (1, 'Argentina', 'ARG');


-- Inserciones para la tabla 'provincias'
INSERT INTO provincias
    (cod_pais, cod_provincia, nom_provincia)
VALUES
    (1, 1, 'Buenos Aires');
INSERT INTO provincias
    (cod_pais, cod_provincia, nom_provincia)
VALUES
    (1, 2, 'Córdoba');
INSERT INTO provincias
    (cod_pais, cod_provincia, nom_provincia)
VALUES
    (1, 3, 'Santa Fe');
INSERT INTO provincias
    (cod_pais, cod_provincia, nom_provincia)
VALUES
    (1, 4, 'Mendoza');
INSERT INTO provincias
    (cod_pais, cod_provincia, nom_provincia)
VALUES
    (1, 5, 'Tucumán');

-- Inserciones para la tabla 'localidades' (3 localidades por provincia)
INSERT INTO localidades
    (nro_localidad, nom_localidad, cod_pais, cod_provincia)
VALUES
    (1, 'La Plata', 1, 1);
INSERT INTO localidades
    (nro_localidad, nom_localidad, cod_pais, cod_provincia)
VALUES
    (2, 'Mar del Plata', 1, 1);
INSERT INTO localidades
    (nro_localidad, nom_localidad, cod_pais, cod_provincia)
VALUES
    (3, 'Bahía Blanca', 1, 1);

INSERT INTO localidades
    (nro_localidad, nom_localidad, cod_pais, cod_provincia)
VALUES
    (4, 'Córdoba Capital', 1, 2);
INSERT INTO localidades
    (nro_localidad, nom_localidad, cod_pais, cod_provincia)
VALUES
    (5, 'Villa Carlos Paz', 1, 2);
INSERT INTO localidades
    (nro_localidad, nom_localidad, cod_pais, cod_provincia)
VALUES
    (6, 'Río Cuarto', 1, 2);

INSERT INTO localidades
    (nro_localidad, nom_localidad, cod_pais, cod_provincia)
VALUES
    (7, 'Rosario', 1, 3);
INSERT INTO localidades
    (nro_localidad, nom_localidad, cod_pais, cod_provincia)
VALUES
    (8, 'Santa Fe Capital', 1, 3);
INSERT INTO localidades
    (nro_localidad, nom_localidad, cod_pais, cod_provincia)
VALUES
    (9, 'Rafaela', 1, 3);

INSERT INTO localidades
    (nro_localidad, nom_localidad, cod_pais, cod_provincia)
VALUES
    (10, 'Mendoza Capital', 1, 4);
INSERT INTO localidades
    (nro_localidad, nom_localidad, cod_pais, cod_provincia)
VALUES
    (11, 'San Rafael', 1, 4);
INSERT INTO localidades
    (nro_localidad, nom_localidad, cod_pais, cod_provincia)
VALUES
    (12, 'Godoy Cruz', 1, 4);

INSERT INTO localidades
    (nro_localidad, nom_localidad, cod_pais, cod_provincia)
VALUES
    (13, 'San Miguel de Tucumán', 1, 5);
INSERT INTO localidades
    (nro_localidad, nom_localidad, cod_pais, cod_provincia)
VALUES
    (14, 'Tafí Viejo', 1, 5);
INSERT INTO localidades
    (nro_localidad, nom_localidad, cod_pais, cod_provincia)
VALUES
    (15, 'Yerba Buena', 1, 5);

-- Tabla 'empresas_externas'
INSERT INTO empresas_externas
    (nro_empresa, razon_social, cuit_empresa, token_servicio)
VALUES
    (1, 'Proveedor Externo A', '30-12345678-1', 'TOKEN_ABC');
INSERT INTO empresas_externas
    (nro_empresa, razon_social, cuit_empresa, token_servicio)
VALUES
    (2, 'Proveedor Externo B', '30-87654321-2', 'TOKEN_DEF');
INSERT INTO empresas_externas
    (nro_empresa, razon_social, cuit_empresa, token_servicio)
VALUES
    (3, 'Proveedor Externo C', '30-12349876-3', 'TOKEN_GHI');

-- Tabla 'supermercado'
INSERT INTO supermercado
    (cuit, razon_social, calle, nro_calle, telefonos)
VALUES
    ('30-12345678-1', 'Supermercado Rest', 'Calle Falsa', 123, '1111-2222');


-- Tabla 'sucursales'
INSERT INTO sucursales
    (nro_sucursal, nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, nro_localidad, habilitada)
VALUES
    (1, 'Sucursal Centro', 'Avenida Siempre Viva', 742, '4444-5555', -34.6037, -58.3816, 1, 1);
INSERT INTO sucursales
    (nro_sucursal, nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, nro_localidad, habilitada)
VALUES
    (2, 'Sucursal Norte', 'Calle Real', 123, '5555-6666', -34.6117, -58.3895, 2, 1);
INSERT INTO sucursales
    (nro_sucursal, nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, nro_localidad, habilitada)
VALUES
    (3, 'Sucursal Sur', 'Calle Imaginaria', 456, '6666-7777', -34.6181, -58.4011, 3, 0);

-- Tabla 'horarios_sucursales'
INSERT INTO horarios_sucursales
    (nro_sucursal, dia_semana, hora_desde, hora_hasta)
VALUES
    (1, 1, '08:00', '20:00');
INSERT INTO horarios_sucursales
    (nro_sucursal, dia_semana, hora_desde, hora_hasta)
VALUES
    (2, 1, '08:00', '21:00');
INSERT INTO horarios_sucursales
    (nro_sucursal, dia_semana, hora_desde, hora_hasta)
VALUES
    (3, 1, '08:00', '22:00');

-- Tabla 'tipos_servicios_supermercado'
INSERT INTO tipos_servicios_supermercado
    (nro_tipo_servicio, nom_tipo_servicio)
VALUES
    (1, 'Estacionamiento');
INSERT INTO tipos_servicios_supermercado
    (nro_tipo_servicio, nom_tipo_servicio)
VALUES
    (2, 'WiFi');
INSERT INTO tipos_servicios_supermercado
    (nro_tipo_servicio, nom_tipo_servicio)
VALUES
    (3, 'Delivery');

-- Tabla 'tipos_servicios_sucursales'
INSERT INTO tipos_servicios_sucursales
    (nro_sucursal, nro_tipo_servicio, vigente)
VALUES
    (1, 1, 1);
INSERT INTO tipos_servicios_sucursales
    (nro_sucursal, nro_tipo_servicio, vigente)
VALUES
    (2, 2, 1);
INSERT INTO tipos_servicios_sucursales
    (nro_sucursal, nro_tipo_servicio, vigente)
VALUES
    (3, 3, 1);

-- Tabla 'rubros_productos'
INSERT INTO rubros_productos
    (nro_rubro, nom_rubro, vigente)
VALUES
    (1, 'Alimentos', 1);
INSERT INTO rubros_productos
    (nro_rubro, nom_rubro, vigente)
VALUES
    (2, 'Bebidas', 1);
INSERT INTO rubros_productos
    (nro_rubro, nom_rubro, vigente)
VALUES
    (3, 'Limpieza', 1);

-- Tabla 'categorias_productos'
INSERT INTO categorias_productos
    (nro_categoria, nom_categoria, nro_rubro, vigente)
VALUES
    (1, 'Lácteos', 1, 1);
INSERT INTO categorias_productos
    (nro_categoria, nom_categoria, nro_rubro, vigente)
VALUES
    (2, 'Gaseosas', 2, 1);
INSERT INTO categorias_productos
    (nro_categoria, nom_categoria, nro_rubro, vigente)
VALUES
    (3, 'Detergentes', 3, 1);

-- Tabla 'marcas_productos'
INSERT INTO marcas_productos
    (nro_marca, nom_marca)
VALUES
    (1, 'Marca A');
INSERT INTO marcas_productos
    (nro_marca, nom_marca)
VALUES
    (2, 'Marca B');
INSERT INTO marcas_productos
    (nro_marca, nom_marca)
VALUES
    (3, 'Marca C');

-- Tabla 'tipos_productos'
INSERT INTO tipos_productos
    (nro_tipo_producto, nom_tipo_producto)
VALUES
    (1, 'Botella');
INSERT INTO tipos_productos
    (nro_tipo_producto, nom_tipo_producto)
VALUES
    (2, 'Caja');
INSERT INTO tipos_productos
    (nro_tipo_producto, nom_tipo_producto)
VALUES
    (3, 'Paquete');

-- Tabla 'tipos_productos_marcas'
INSERT INTO tipos_productos_marcas
    (nro_marca, nro_tipo_producto, vigente)
VALUES
    (1, 1, 1);
INSERT INTO tipos_productos_marcas
    (nro_marca, nro_tipo_producto, vigente)
VALUES
    (2, 2, 1);
INSERT INTO tipos_productos_marcas
    (nro_marca, nro_tipo_producto, vigente)
VALUES
    (3, 3, 1);

-- Tabla 'productos'
-- Tabla 'productos' (ejemplo completo de canasta básica)
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('1234567890123', 'Arroz', 'Paquete de arroz 1kg', 1, NULL, 1, 3, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('2345678901234', 'Fideos', 'Paquete de fideos 500g', 1, NULL, 2, 3, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('3456789012345', 'Aceite', 'Botella de aceite 1L', 2, NULL, 3, 1, 1);
-- Productos de la Canasta Básica Alimenticia
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('4567890123456', 'Leche', 'Botella de leche 1L', 1, NULL, 1, 1, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('5678901234567', 'Pan', 'Pan de molde 500g', 1, NULL, 2, 2, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('6789012345678', 'Azúcar', 'Paquete de azúcar 1kg', 1, NULL, 3, 3, 1);

INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('7890123456789', 'Yerba Mate', 'Paquete de yerba mate 1kg', 1, NULL, 1, 3, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('8901234567890', 'Harina', 'Paquete de harina 1kg', 1, NULL, 2, 3, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('9012345678901', 'Huevos', 'Docena de huevos', 1, NULL, 3, 2, 1);

INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('0123456789012', 'Pollo', 'Kilo de pollo fresco', 1, NULL, 1, 3, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('1234509876543', 'Carne', 'Kilo de carne vacuna', 1, NULL, 2, 3, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('2345609876543', 'Tomate', 'Kilo de tomate', 1, NULL, 3, 3, 1);

INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('3456709876543', 'Manzana', 'Kilo de manzana', 1, NULL, 1, 3, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('4567809876543', 'Papas', 'Kilo de papas', 1, NULL, 2, 3, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('5678909876543', 'Zanahoria', 'Kilo de zanahorias', 1, NULL, 3, 3, 1);
