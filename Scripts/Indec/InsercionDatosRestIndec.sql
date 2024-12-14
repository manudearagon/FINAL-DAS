-- Limpiar toda la informacion de todas las tablas
SELECT *
FROM servicios_supermercados
-- SELECT * FROM sucursales
-- -----
-- DELETE FROM paises;
-- DELETE FROM provincias;
-- DELETE FROM localidades;
-- DELETE FROM supermercados;
-- DELETE FROM servicios_supermercados;
-- DELETE FROM sucursales;
-- DELETE FROM rubros_productos;
-- DELETE FROM categorias_productos;
-- DELETE FROM marcas_productos;
-- DELETE FROM tipos_productos;
-- DELETE FROM tipos_productos_marcas;
-- DELETE FROM productos;
-- DELETE FROM productos_supermercados;
-- DELETE FROM idiomas;
-- DELETE FROM idiomas_rubros_productos;
-- DELETE FROM idiomas_categorias_productos;
-- DELETE FROM idiomas_tipos_productos;

SELECT *
FROM supermercados

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


-- Insertar en la tabla 'supermercados'
INSERT INTO supermercados
    (razon_social, cuit)
VALUES
    ('Supermercado Rest', '30-12345678-1');
-- 1008
INSERT INTO supermercados
    (razon_social, cuit)
VALUES
    ('Supermercado WS', '30-87654321-2');
-- 1009


-- Insertar en la tabla 'sucursales'
INSERT INTO sucursales
    (nro_supermercado, nro_sucursal, nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, horario_sucursal, servicios_disponibles, nro_localidad, habilitada)
VALUES
    (1010, 1, 'Sucursal Centro', 'Calle Falsa', 123, '1111-2222', -34.6037, -58.3816, '9:00-18:00', 'Estacionamiento, WiFi', 1, 1);
INSERT INTO sucursales
    (nro_supermercado, nro_sucursal, nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, horario_sucursal, servicios_disponibles, nro_localidad, habilitada)
VALUES
    (1010, 2, 'Sucursal Norte', 'Calle Verdadera', 456, '2222-3333', -34.6117, -58.3895, '9:00-20:00', 'Estacionamiento', 2, 1);
INSERT INTO sucursales
    (nro_supermercado, nro_sucursal, nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, horario_sucursal, servicios_disponibles, nro_localidad, habilitada)
VALUES
    (1010, 3, 'Sucursal Oeste', 'Calle Imaginaria', 789, '3333-4444', -34.6181, -58.4011, '10:00-19:00', 'Estacionamiento, Delivery', 3, 1);
INSERT INTO sucursales
    (nro_supermercado, nro_sucursal, nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, horario_sucursal, servicios_disponibles, nro_localidad, habilitada)
VALUES
    (1011, 4, 'Sucursal Cofico', 'Avenida Siempre Viva', 742, '4444-5555', -34.6037, -58.3816, '9:00-18:00', 'Estacionamiento, WiFi', 1, 1);
INSERT INTO sucursales
    (nro_supermercado, nro_sucursal, nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, horario_sucursal, servicios_disponibles, nro_localidad, habilitada)
VALUES
    (1011, 5, 'Sucursal Cayetano', 'Calle Real', 123, '5555-6666', -34.6117, -58.3895, '9:00-20:00', 'Estacionamiento', 2, 1);
INSERT INTO sucursales
    (nro_supermercado, nro_sucursal, nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, horario_sucursal, servicios_disponibles, nro_localidad, habilitada)
VALUES
    (1011, 6, 'Sucursal Si', 'Calle Imaginaria', 456, '6666-7777', -34.6181, -58.4011, '10:00-19:00', 'Estacionamiento, Delivery', 3, 0);



-- -- Insertar en la tabla 'servicios_supermercados'
-- INSERT INTO servicios_supermercados
--     (nro_supermercado, url_servicio, tipo_servicio, token_servicio, fecha_ult_act_servicio)
-- VALUES
--     (1010, 'http://localhost:8080/api/supermarkets/sucursales', 'Rest', 'TOKEN12345', GETDATE());
-- INSERT INTO servicios_supermercados
--     (nro_supermercado, url_servicio, tipo_servicio, token_servicio, fecha_ult_act_servicio)
-- VALUES
--     (1011, 'http://localhost:8081/services/supermercados.wsdl', 'WS', 'TOKEN67890', GETDATE());

-- Insertar en la tabla 'rubros_productos'
INSERT INTO rubros_productos
    (nom_rubro, vigente)
VALUES
    ('Alimentos', 1);
INSERT INTO rubros_productos
    (nom_rubro, vigente)
VALUES
    ('Bebidas', 1);
INSERT INTO rubros_productos
    (nom_rubro, vigente)
VALUES
    ('Limpieza', 1);

SELECT *
FROM rubros_productos


-- Insertar en la tabla 'categorias_productos'
INSERT INTO categorias_productos
    (nom_categoria, nro_rubro, vigente)
VALUES
    ('Lácteos', 2014, 1);
INSERT INTO categorias_productos
    (nom_categoria, nro_rubro, vigente)
VALUES
    ('Gaseosas', 2015, 1);
INSERT INTO categorias_productos
    (nom_categoria, nro_rubro, vigente)
VALUES
    ('Detergentes', 2016, 1);
INSERT INTO categorias_productos
    (nom_categoria, nro_rubro, vigente)
VALUES
    ('Carnes', 2014, 1);
INSERT INTO categorias_productos
    (nom_categoria, nro_rubro, vigente)
VALUES
    ('Verduras', 2014, 1);
INSERT INTO categorias_productos
    (nom_categoria, nro_rubro, vigente)
VALUES
    ('Frutas', 2014, 1);
INSERT INTO categorias_productos
    (nom_categoria, nro_rubro, vigente)
VALUES
    ('Cereales', 2014, 1);
INSERT INTO categorias_productos
    (nom_categoria, nro_rubro, vigente)
VALUES
    ('Aguas', 2015, 1);
INSERT INTO categorias_productos
    (nom_categoria, nro_rubro, vigente)
VALUES
    ('Jugos', 2015, 1);
INSERT INTO categorias_productos
    (nom_categoria, nro_rubro, vigente)
VALUES
    ('Vinos', 2015, 1);
INSERT INTO categorias_productos
    (nom_categoria, nro_rubro, vigente)
VALUES
    ('Papeles', 2016, 1);

SELECT *
FROM categorias_productos

-- Insertar en la tabla 'marcas_productos'
INSERT INTO marcas_productos
    (nom_marca, vigente)
VALUES
    ('Marca A', 1);
INSERT INTO marcas_productos
    (nom_marca, vigente)
VALUES
    ('Marca B', 1);
INSERT INTO marcas_productos
    (nom_marca, vigente)
VALUES
    ('Marca C', 1);

SELECT *
FROM marcas_productos

-- Insertar en la tabla 'tipos_productos'
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


-- Insertar en la tabla 'tipos_productos_marcas'
INSERT INTO tipos_productos_marcas
    (nro_marca, nro_tipo_producto, vigente)
VALUES
    (1014, 1, 1);
INSERT INTO tipos_productos_marcas
    (nro_marca, nro_tipo_producto, vigente)
VALUES
    (1015, 2, 1);
INSERT INTO tipos_productos_marcas
    (nro_marca, nro_tipo_producto, vigente)
VALUES
    (1016, 3, 1);


-- SELECT * FROM categorias_productos
-- SELECT * FROM marcas_productos
-- SELECT * FROM tipos_productos

-- Insertar en la tabla 'productos'
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('07010301', 'Arroz', 'Paquete de arroz 1kg', 2029, NULL, 2014, 3, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('2345678901234', 'Fideos', 'Paquete de fideos 500g', 2029, NULL, 2014, 3, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('3456789012345', 'Aceite', 'Botella de aceite 1L', 2029, NULL, 2015, 1, 1);
-- Productos de la Canasta Básica Alimenticia
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('4567890123456', 'Leche', 'Botella de leche 1L', 2023, NULL, 1016, 1, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('5678901234567', 'Pan', 'Pan de molde 500g', 1029, NULL, 1016, 2, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('6789012345678', 'Azúcar', 'Paquete de azúcar 1kg', 1029, NULL, 1014, 3, 1);

INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('7890123456789', 'Yerba Mate', 'Paquete de yerba mate 1kg', 1023, NULL, 1015, 3, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('8901234567890', 'Harina', 'Paquete de harina 1kg', 1029, NULL, 1014, 3, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('9012345678901', 'Huevos', 'Docena de huevos', 1023, NULL, 1016, 2, 1);

INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('0123456789012', 'Pollo', 'Kilo de pollo fresco', 1026, NULL, 1015, 3, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('1234509876543', 'Carne', 'Kilo de carne vacuna', 1026, NULL, 1015, 3, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('2345609876543', 'Tomate', 'Kilo de tomate', 1027, NULL, 1015, 3, 1);

INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('3456709876543', 'Manzana', 'Kilo de manzana', 1028, NULL, 1015, 3, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('4567809876543', 'Papas', 'Kilo de papas', 1027, NULL, 1015, 3, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('5678909876543', 'Zanahoria', 'Kilo de zanahorias', 1027, NULL, 1015, 3, 1);

-- Insertar en la tabla 'productos_supermercados'
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1010, 1, '1234567890123', 100.00, GETDATE());
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1010, 1, '2345678901234', 50.00, GETDATE());
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1010, 1, '3456789012345', 150.00, GETDATE());
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1010, 1, '4567890123456', 80.00, GETDATE());
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1010, 1, '5678901234567', 70.00, GETDATE());
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1010, 1, '6789012345678', 60.00, GETDATE());
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1010, 1, '7890123456789', 90.00, GETDATE());
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1010, 1, '8901234567890', 40.00, GETDATE());
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1010, 1, '9012345678901', 30.00, GETDATE());

INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1010, 2, '1234567890123', 110.00, GETDATE());
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1010, 2, '2345678901234', 60.00, GETDATE());
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1010, 2, '3456789012345', 160.00, GETDATE());
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1010, 2, '4567890123456', 90.00, GETDATE());
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1010, 2, '5678901234567', 80.00, GETDATE());
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1010, 2, '6789012345678', 70.00, GETDATE());
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1010, 2, '7890123456789', 100.00, GETDATE());
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1010, 2, '8901234567890', 50.00, GETDATE());
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1010, 2, '9012345678901 ', 40.00, GETDATE());

-- Insertar en la tabla 'idiomas'
INSERT INTO idiomas
    (cod_idioma, nom_idioma)
VALUES
    ('es', 'Español');
INSERT INTO idiomas
    (cod_idioma, nom_idioma)
VALUES
    ('en', 'Inglés');
INSERT INTO idiomas
    (cod_idioma, nom_idioma)
VALUES
    ('fr', 'Francés');

-- Insertar en la tabla 'idiomas_rubros_productos'
INSERT INTO idiomas_rubros_productos
    (nro_rubro, cod_idioma, rubro)
VALUES
    (1014, 'es', 'Alimentos');
INSERT INTO idiomas_rubros_productos
    (nro_rubro, cod_idioma, rubro)
VALUES
    (1015, 'es', 'Bebidas');
INSERT INTO idiomas_rubros_productos
    (nro_rubro, cod_idioma, rubro)
VALUES
    (1016, 'es', 'Limpieza');


-- Insertar en la tabla 'idiomas_categorias_productos'
INSERT INTO idiomas_categorias_productos
    (nro_categoria, cod_idioma, categoria)
VALUES
    (1023, 'es', 'Lácteos');
INSERT INTO idiomas_categorias_productos
    (nro_categoria, cod_idioma, categoria)
VALUES
    (1024, 'es', 'Gaseosas');
INSERT INTO idiomas_categorias_productos
    (nro_categoria, cod_idioma, categoria)
VALUES
    (1025, 'es', 'Detergentes');

-- Insertar en la tabla 'idiomas_tipos_productos'
INSERT INTO idiomas_tipos_productos
    (nro_tipo_producto, cod_idioma, tipo_producto)
VALUES
    (1, 'es', 'Botella');
INSERT INTO idiomas_tipos_productos
    (nro_tipo_producto, cod_idioma, tipo_producto)
VALUES
    (2, 'es', 'Caja');
INSERT INTO idiomas_tipos_productos
    (nro_tipo_producto, cod_idioma, tipo_producto)
VALUES
    (3, 'es', 'Paquete');


