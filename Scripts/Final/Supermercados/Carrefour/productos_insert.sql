/* -------------------------------------
   tabla: paises
   ------------------------------------- */
insert into paises
    (cod_pais, nom_pais, local)
values
    (1, 'Argentina', 'Latinoamérica');

/* -------------------------------------
   tabla: provincias
   ------------------------------------- */
insert into provincias
    (cod_pais, cod_provincia, nom_provincia)
values
    (1, 1, 'Buenos Aires'),
    (1, 2, 'Cordoba'),
    (1, 3, 'Santa Fe'),
    (1, 4, 'Mendoza'),
    (1, 5, 'Tucuman'),
    (1, 6, 'Salta'),
    (1, 7, 'Chaco'),
;


/* -------------------------------------
   tabla: localidades
   ------------------------------------- */
insert into localidades
    (nro_localidad, nom_localidad, cod_pais, cod_provincia)
values
    (1, 'La Plata', 1, 1),
    (2, 'Mar del Plata', 1, 1),
    (3, 'Bahia Blanca', 1, 1),
    (4, 'Rosario', 1, 3),
    (5, 'Santa Fe', 1, 3),
    (6, 'San Miguel de Tucuman', 1, 5),
    (7, 'San Salvador de Jujuy', 1, 6),
    (8, 'Resistencia', 1, 7),
    (9, 'Cordoba', 1, 2),
    (10, 'Mendoza', 1, 4),
    (11, 'Salta', 1, 6),
    (12, 'San Juan', 1, 4),
    (13, 'Neuquen', 1, 4),
    (14, 'Rio Gallegos', 1, 4),
    (15, 'Ushuaia', 1, 4),
    (21, 'Formosa', 1, 7),
    (22, 'Corrientes', 1, 7),
    (23, 'Posadas', 1, 7),
    (24, 'Parana', 1, 3),
    (25, 'Concordia', 1, 3),
    (29, 'Rio Cuarto', 1, 2),
    (30, 'Villa Maria', 1, 2),
    (31, 'Rio Tercero', 1, 2),
    (32, 'San Francisco', 1, 2),
    (33, 'Jesus Maria', 1, 2),
    (34, 'Villa Carlos', 1, 2)
    ;

/* -------------------------------------
tabla: rubros_productos
------------------------------------- */
insert into rubros_productos
    (nom_rubro, vigente)
VALUES
    (1, 'Alimentos básicos', 1),
    (2, 'Verduras y hortalizas', 1),
    (3,'Carnes y derivados', 1),
    (4,'Bebidas', 1),
    (5,'Condimentos y completos', 1),
    (6,'Infusiones', 1),
    (7,'Lácteos', 1)
;

/* -------------------------------------
   tabla: categorias_productos
   ------------------------------------- */
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Harinas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'Alimentos básicos'), 1),
    ('Galletitas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'Alimentos básicos'), 1),
    ('Fideos', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'Alimentos básicos'), 1),
    ('Carnes frescas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'Carnes y derivados'), 1),
    ('Fiambres', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'Carnes y derivados'), 1),
    ('Menudencias', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'Carnes y derivados'), 1),
    ('Alcoholicas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'Bebidas'), 1),
    ('No alcoholicas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'Bebidas'), 1)
    ;

/* -------------------------------------
   tabla: marcas_productos
   ------------------------------------- */
insert into marcas_productos
    (nom_marca, vigente)
values
    ('Coca-Cola', 1),
    ('Pepsi', 1),
    ('Sprite', 1),
    ('Fanta', 1),
    ('Schweppes', 1),
    ('Villa del Sur', 1),
    ('Bon Aqua', 1),
    ('Eco de los Andes', 1),
    ('Cepita', 1),
    ('Baggio', 1), -- 10
    ('La Serenísima', 1),
    ('Sancor', 1),
    ('Tregar', 1),
    ('Ilolay', 1),
    ('Veronica', 1),
    ('Milkaut', 1),
    ('Arcor', 1),
    ('Bagley', 1),
    ('Terrabusi', 1),
    ('Marolio', 1),  --20
    ('Molinos Río de la Plata', 1),
    ('Knorr', 1),
    ('Maggi', 1),
    ('Hellmannós', 1),
    ('Dánica', 1),
    ('Cañuelas', 1),
    ('Cinzano', 1),
    ('Gancia', 1),
    ('Ser', 1),
    ('Activia', 1), --30
    ('Quesos Santa Rosa', 1),
    ('Paty', 1),
    ('Swift', 1),
    ('Granja del Sol', 1),
    ('Vieníssima', 1),
    ('Tía Maruca', 1),
    ('Dove', 1),
    ('Plusbelle', 1),
    ('Rexona', 1),
    ('Pantene', 1), --40
    ('Ledesma', 1),
    ('Molinos Ala', 1),
    ('Nescafé', 1),
    ('La Virginia', 1),
    ('Cachamai', 1),
    ('Taragui', 1),
    ('Rosamonte', 1),
    ('Amanda', 1),
    ('Chamigo', 1),
    ('Serenisima Descremada', 1), --50
    ('Cindor', 1),
    ('Sancor Bebible', 1),
    ('Ariel', 1),
    ('Cadbury', 1),
    ('Nestle', 1),
    ('Cofler', 1),
    ('Serranita', 1),
    ('Aguadito', 1),
    ('Los Nietitos', 1),
    ('Don Pedro', 1),
    ('Capitán del Espacio', 1),
    ('Vaquita', 1),
    ('Magistral', 1),
    ('Ala', 1),
    ('Cif', 1),
    ('Mr Musculo', 1),
    ('Elite', 1),
    ('Elegante', 1);


/* -------------------------------------
   tabla: tipos_productos
   ------------------------------------- */
insert into tipos_productos
    (nro_tipo_producto,nom_tipo_producto)
values
    (1, 'Bebidas'),
    (2, 'Almacen'),
    (3, 'Lacteos'),
    (4, 'Quesos y Fiambres'),
    (5, 'Carnes'),
    (6, 'Frutas y Verduras'),
    (7, 'Congelados'),
    (8, 'Perfumeria'),
    (9, 'Limpieza')    ;


/* -------------------------------------
   tabla: tipos_productos_marcas
   ------------------------------------- */
insert into tipos_productos_marcas
    (nro_marca, nro_tipo_producto, vigente)
values
    (1, 1, 1), 
    (2, 1, 1),
    (19, 2, 1),
    (18, 2, 1),
    (33, 5, 1),
    (32, 5, 1),
    (31, 4, 1),
    (50, 3, 1)
    ;


/* -------------------------------------
   Tabla: productos
   ------------------------------------- */
-- Bebidas > Gaseosas
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('7791234560028', 
    'Pepsi 500ml', 
    'Bebida gaseosa sabor cola 500ml', 
    'https://statics.dinoonline.com.ar/imagenes/full_600x600_ma/3080047_f.jpg', 
    2, 
    1, 
   (SELECT nro_rubro
    FROM rubros_productos
    WHERE nom_rubro = 'Bebidas'),
    1
    ),
    ('7791234560035', 'Coca-Cola 1.5l', 'Bebida gaseosa sabor cola 1.5l', 'https://m.media-amazon.com/images/I/51v8nyxSOYL._SL1500_.jpg', 1, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Coca-Cola'), 1)
        ;

/* -------------------------------------
   tabla: sucursales
   ------------------------------------- */
DELETE FROM sucursales;
/* Sucursales Carrefour */
INSERT INTO sucursales
    (nro_supermercado, nro_sucursal, nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, horario_sucursal, servicios_disponibles, nro_localidad, habilitada)
VALUES
-- CARREFOUR
    (1, 'Carrefour Express', 'Dr. Arturo Capdevila', 264, '08004448484', -31.262366, -64.3542574, 'Lunes a Sabado de 9 a 21 y Domingos de 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones, Entrega a domicilio, Estacionamiento gratuito, Recogida en tienda', 9, 1),
    (2, 'Carrefour Hipermercado Jardín', 'Bernardo OHiggins', 3765, '0351155918265', -31.4267809, -64.2105048, 'Lunes a Sabado de 9 a 21 y Domingos de 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones, Entrega a domicilio, Estacionamiento gratuito, Recogida en tienda', 9, 1),
    (3, 'Carrefour Hipermercado', 'Cno. Gral. Belgrano', 1900, '08004448484', -34.9016661, -57.9973231, 'Lunes a Sabado de 9 a 21 y Domingos de 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones', 1, 1),
    ;
    

/* -------------------------------------
   Tabla: productos_sucursales
   ------------------------------------- */
delete from dbo.productos_sucursales
-- Sucursal 1 - Bebidas 
INSERT INTO dbo.productos_sucursales
    (nro_sucursal, cod_barra, precio, vigente)
VALUES
    (1, '7791234560011', 120.00, 1),
    -- Coca-Cola Original 500ml
    (1, '7791234560028', 115.00, 1),
    -- Pepsi 500ml
    (1, '7791234560035', 110.00, 1)
    ;

/* -------------------------------------
   Tabla: tipos_servicios_supermercado
   ------------------------------------- */
INSERT INTO dbo.tipos_servicios_supermercado
    (nom_tipo_servicio)
VALUES
    ('Compra en línea'),
    ('Entrega a domicilio'),
    ('Recogida en tienda'),
    ('Atención al cliente'),
    ('Devoluciones'),
    ('Cajeros automáticos'),
    ('Estacionamiento gratuito')
    ;

/* -------------------------------------
   Tabla: tipos_servicios_sucursales
   ------------------------------------- */
INSERT INTO dbo.tipos_servicios_sucursales
    (nro_sucursal, nro_tipo_servicio, vigente)
VALUES
    (1, 1, 1),
    (1, 2, 1),
    (1, 3, 1),
    (1, 4, 1),
    (1, 5, 1),
    (1, 6, 1),
    (1, 7, 1),
    (2, 1, 1),
    (2, 2, 1),
    (2, 3, 1),
    (2, 4, 1),
    (2, 5, 1),
    (2, 6, 1),
    (2, 7, 1),
    (3, 1, 1),
    (3, 2, 1),
    (3, 3, 1),
    (3, 4, 1),
    (3, 5, 1),
    (3, 6, 1),
    (3, 7, 1)
    ;


/* -------------------------------------
   Tabla: empresas_externas
   ------------------------------------- */
-- INSERT INTO dbo.empresas_externas
--     (razon_social, cuit_empresa, token_servicio)
-- VALUES
--     ('INDEC - Instituto Nacional de Estadística y Censos', '30521015339', '0123456456789');
-- NO SE USA JAJA (Cuuchala)--

/* -------------------------------------
   Tabla: horarios_sucursales
   ------------------------------------- */
-- Horarios de la Sucursal 1
INSERT INTO dbo.horarios_sucursales
    (nro_sucursal, dia_semana, hora_desde, hora_hasta)
VALUES
    (1, 'Lunes', '09:00:00', '21:00:00'),
    (1, 'Martes', '09:00:00', '21:00:00'),
    (1, 'Miércoles', '09:00:00', '21:00:00'),
    (1, 'Jueves', '09:00:00', '21:00:00'),
    (1, 'Viernes', '09:00:00', '21:00:00'),
    (1, 'Sábado', '09:00:00', '21:00:00'),
    (1, 'Domingo', '10:00:00', '18:00:00');

    -- Horarios de la Sucursal 2
INSERT INTO dbo.horarios_sucursales
    (nro_sucursal, dia_semana, hora_desde, hora_hasta)
VALUES
    (2, 'Lunes', '09:00:00', '21:00:00'),
    (2, 'Martes', '09:00:00', '21:00:00'),
    (2, 'Miércoles', '09:00:00', '21:00:00'),
    (2, 'Jueves', '09:00:00', '21:00:00'),
    (2, 'Viernes', '09:00:00', '21:00:00'),
    (2, 'Sábado', '09:00:00', '21:00:00'),
    (2, 'Domingo', '10:00:00', '18:00:00');

-- Horarios de la Sucursal 3
INSERT INTO dbo.horarios_sucursales
    (nro_sucursal, dia_semana, hora_desde, hora_hasta)
VALUES
    (3, 'Lunes', '09:00:00', '21:00:00'),
    (3, 'Martes', '09:00:00', '21:00:00'),
    (3, 'Miércoles', '09:00:00', '21:00:00'),
    (3, 'Jueves', '09:00:00', '21:00:00'),
    (3, 'Viernes', '09:00:00', '21:00:00'),
    (3, 'Sábado', '09:00:00', '21:00:00'),
    (3, 'Domingo', '10:00:00', '18:00:00');

/* -------------------------------------
   Tabla: supermercado
   ------------------------------------- */
INSERT INTO dbo.supermercado
    (cuit, razon_social, calle, nro_calle, telefonos)
VALUES
    ('30687310434', 'Carrefour', 'Av. Libertador', '4500', '3518507761');