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
    ('Supermercado A', '30-12345678-1');
INSERT INTO supermercados
    (razon_social, cuit)
VALUES
    ('Supermercado B', '30-87654321-2');
INSERT INTO supermercados
    (razon_social, cuit)
VALUES
    ('Supermercado C', '30-13579135-3');

-- Insertar en la tabla 'sucursales'
INSERT INTO sucursales
    (nro_supermercado, nro_sucursal, nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, horario_sucursal, servicios_disponibles, nro_localidad, habilitada)
VALUES
    (1, 1, 'Sucursal Centro', 'Calle Falsa', 123, '1111-2222', -34.6037, -58.3816, '9:00-18:00', 'Estacionamiento, WiFi', 1, 1);
INSERT INTO sucursales
    (nro_supermercado, nro_sucursal, nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, horario_sucursal, servicios_disponibles, nro_localidad, habilitada)
VALUES
    (1, 2, 'Sucursal Norte', 'Calle Verdadera', 456, '2222-3333', -34.6117, -58.3895, '9:00-20:00', 'Estacionamiento', 2, 1);
INSERT INTO sucursales
    (nro_supermercado, nro_sucursal, nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, horario_sucursal, servicios_disponibles, nro_localidad, habilitada)
VALUES
    (2, 1, 'Sucursal Oeste', 'Calle Imaginaria', 789, '3333-4444', -34.6181, -58.4011, '10:00-19:00', 'Estacionamiento, Delivery', 3, 1);

-- Insertar en la tabla 'servicios_supermercados'
INSERT INTO servicios_supermercados
    (nro_supermercado, url_servicio, tipo_servicio, token_servicio, fecha_ult_act_servicio)
VALUES
    (1, 'https://supermercadoa.com/api', 'Online Orders', 'TOKEN12345', GETDATE());
INSERT INTO servicios_supermercados
    (nro_supermercado, url_servicio, tipo_servicio, token_servicio, fecha_ult_act_servicio)
VALUES
    (2, 'https://supermercadob.com/api', 'Customer Support', 'TOKEN67890', GETDATE());

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

-- Insertar en la tabla 'categorias_productos'
INSERT INTO categorias_productos
    (nom_categoria, nro_rubro, vigente)
VALUES
    ('Lácteos', 1, 1);
INSERT INTO categorias_productos
    (nom_categoria, nro_rubro, vigente)
VALUES
    ('Gaseosas', 2, 1);
INSERT INTO categorias_productos
    (nom_categoria, nro_rubro, vigente)
VALUES
    ('Detergentes', 3, 1);

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
    (1, 1, 1);
INSERT INTO tipos_productos_marcas
    (nro_marca, nro_tipo_producto, vigente)
VALUES
    (2, 2, 1);
INSERT INTO tipos_productos_marcas
    (nro_marca, nro_tipo_producto, vigente)
VALUES
    (3, 3, 1);

-- Insertar en la tabla 'productos'
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('1234567890123', 'Producto A', 'Descripcion del producto A', 1, NULL, 1, 1, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('2345678901234', 'Producto B', 'Descripcion del producto B', 2, NULL, 2, 2, 1);
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, nro_categoria, imagen, nro_marca, nro_tipo_producto, vigente)
VALUES
    ('3456789012345', 'Producto C', 'Descripcion del producto C', 3, NULL, 3, 3, 1);

-- Insertar en la tabla 'productos_supermercados'
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1, 1, '1234567890123', 50.75, GETDATE());
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1, 2, '2345678901234', 75.25, GETDATE());
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (2, 1, '3456789012345', 100.99, GETDATE());

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
    (1, 'es', 'Alimentos');
INSERT INTO idiomas_rubros_productos
    (nro_rubro, cod_idioma, rubro)
VALUES
    (2, 'es', 'Bebidas');
INSERT INTO idiomas_rubros_productos
    (nro_rubro, cod_idioma, rubro)
VALUES
    (3, 'es', 'Limpieza');

-- Insertar en la tabla 'idiomas_categorias_productos'
INSERT INTO idiomas_categorias_productos
    (nro_categoria, cod_idioma, categoria)
VALUES
    (1, 'es', 'Lácteos');
INSERT INTO idiomas_categorias_productos
    (nro_categoria, cod_idioma, categoria)
VALUES
    (2, 'es', 'Gaseosas');
INSERT INTO idiomas_categorias_productos
    (nro_categoria, cod_idioma, categoria)
VALUES
    (3, 'es', 'Detergentes');

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
