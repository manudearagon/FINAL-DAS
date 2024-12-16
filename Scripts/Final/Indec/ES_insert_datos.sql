-- use indec
-- go
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

/* -------------------------------------
 CANASTA BÁSICA ARGENTINA:


Pan
Galletitas de agua
Galletitas dulces
Arroz
Harina de trigo
Otras harinas (maíz)
Fideos
Papa
Batta
Azúcar
Dulces (Dulce de batata, mermelada, dulce de leche)
Legumbres secas (Lentejas, arvejas)
Hortalizas (Acelga, cebolla, lechuga, tomate, perita, zanahoria, zapallo, tomate envasado)
Frutas (Manzana, mandarina, naranja, banana, pera)
Carnes (Asado, carnaza común, espinazo, paleta, carne picada, nalga, pollo, carne de pescado)
Menudencias (Hígado)
Fiambres (Paleta cocida, salame)
Huevos
Leche
Queso (Queso crema, queso cuartirolo, queso de rallar)
Yogur
Manteca
Aceita
Bebidas no alcoholicas (Gaseosas, jugos concentrados, soda)
Bebidas alcoholicas (Cerveza, vino)
Sal fina
Condimentos (Mayonesa, caldos concentrados)
Vinagre
Café
Yerba

*/


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


SELECT *
FROM provincias;
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
   tabla: supermercados
   ------------------------------------- */
insert into supermercados
    (razon_social, cuit)
values
    ('Carrefour', '30687310434'), // REST
    ('Walmart', '30678138300') // REST
    ;

/* -------------------------------------
   tabla: sucursales
   ------------------------------------- */
-- DELETE FROM sucursales;
-- /* Sucursales Carrefour */
-- INSERT INTO sucursales
--     (nro_supermercado, nro_sucursal, nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, horario_sucursal, servicios_disponibles, nro_localidad, habilitada)
-- VALUES
-- -- CARREFOUR
--     (1, 1, 'Carrefour Express', 'Dr. Arturo Capdevila', 264, '08004448484', -31.262366, -64.3542574, 'Lunes a Sabado de 9 a 21 y Domingos de 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones, Entrega a domicilio, Estacionamiento gratuito, Recogida en tienda', 9, 1),
--     (1, 2, 'Carrefour Hipermercado Jardín', 'Bernardo OHiggins', 3765, '0351155918265', -31.4267809, -64.2105048, 'Lunes a Sabado de 9 a 21 y Domingos de 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones, Entrega a domicilio, Estacionamiento gratuito, Recogida en tienda', 9, 1),
--     (1, 3, 'Carrefour Hipermercado', 'Cno. Gral. Belgrano', 1900, '08004448484', -34.9016661, -57.9973231, 'Lunes a Sabado de 9 a 21 y Domingos de 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones', 1, 1),
-- -- WALMART
--     (2, 1, 'Walmart', 'Av. Circunvalación', 1245, '08004448484', -31.262366, -64.3542574, 'Lunes a Sabado de 9 a 21 y Domingos de 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones, Entrega a domicilio, Estacionamiento gratuito, Recogida en tienda', 9, 1),
--     ;


/* -------------------------------------
   tabla: servicios_supermercados
   ------------------------------------- */
-- DELETE FROM servicios_supermercados;
-- DROP TABLE servicios_supermercados;
/* Servicios Supermercado Libertad */
INSERT INTO servicios_supermercados
    (nro_supermercado, url_servicio, tipo_servicio, usuario, password, fecha_ult_act_servicio)
VALUES
    (1, 'http://localhost:8080/api/v1/supermercado', 'Rest', 'usr_admin', 'pwd_admin', '2024-09-01 12:00:00'),
    (2, 'http://localhost:8081/api/v1/supermercado', 'Rest', 'usr_admin', 'pwd_admin', '2024-09-01 12:00:00'),
    (3, 'http://localhost:8082/services/supermercado.wsdl', 'WS', 'usr_admin', 'pwd_admin', '2024-09-01 12:00:00'),
    (4, 'http://localhost:8083/services/supermercado.wsdl', 'WS', 'usr_admin', 'pwd_admin', '2024-09-01 12:00:00')
    ;

/* -------------------------------------
   tabla: rubros_productos
   ------------------------------------- */
insert into rubros_productos
    (nom_rubro, vigente)
VALUES
    ('Alimentos básicos', 1),
    ('Verduras y hortalizas', 1),
    ('Carnes y derivados', 1),
    ('Bebidas', 1),
    ('Condimentos y completos', 1),
    ('Infusiones', 1),
    ('Lácteos', 1),
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
   tabla: productos
   ------------------------------------- */

INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('7791234560028', 'Pepsi 500ml', 'Bebida gaseosa sabor cola 500ml', 'https://statics.dinoonline.com.ar/imagenes/full_600x600_ma/3080047_f.jpg', 2, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Coca-Cola'), 1),
    ('7791234560035', 'Coca-Cola 1.5l', 'Bebida gaseosa sabor cola 1.5l', 'https://m.media-amazon.com/images/I/51v8nyxSOYL._SL1500_.jpg', 1, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Coca-Cola'), 1),
;

/* -------------------------------------
   tabla: productos_supermercados
   ------------------------------------- */
/* Productos Supermercado Libertad */
-- INSERT INTO productos_supermercados
--     (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
-- VALUES
-- -- WALMART 
--     (2, 1, '7791234560011', 120.00, '2024-09-01 10:00:00'),
--     -- Coca-Cola Original 500ml
--     (2, 1, '7791234560028', 115.00, '2024-09-01 10:00:00'),
--     -- Pepsi 500ml
--     (2, 1, '7791234560035', 110.00, '2024-09-01 10:00:00'),


-- -- CARREFOUR (SUCURSAL EXPRESS)
--     (1, 1, '7791234560011', 220.00, '2024-09-01 10:00:00'),
--     -- Coca-Cola Original 500ml
--     (1, 1, '7791234560028', 200.10, '2024-09-01 10:00:00'),
--     -- Pepsi 500ml
--     (1, 1, '7791234560035', 160.10, '2024-09-01 10:00:00')
--     ;


/* -------------------------------------
   tabla: idiomas
   ------------------------------------- */
insert into idiomas
    (cod_idioma, nom_idioma)
values
    ('es', 'Español'),
    ('en', 'Inglés');

/* -------------------------------------
   tabla: idiomas_rubros_productos
   ------------------------------------- */
-- Idioma Español
insert into idiomas_rubros_productos
    (nro_rubro, cod_idioma, rubro)
values
    (1, 'es', 'Alimentos básicos'),
    (2, 'es', 'Verduras y hortalizas'),
    (3, 'es', 'Carnes y derivados'),
    (4, 'es', 'Bebidas'),
    (5, 'es', 'Condimentos y completos'),
    (6, 'es', 'Infusiones'),
    (7, 'es', 'Lácteos'),
-- Idioma Inglés

    (1, 'en', 'Basic foods'),
    (2, 'en', 'Vegetables and greens'),
    (3, 'en', 'Meats and derivatives'),
    (4, 'en', 'Drinks'),
    (5, 'en', 'Condiments and complements'),
    (6, 'en', 'Infusions'),
    (7, 'en', 'Dairies')
    ;


/* -------------------------------------
tabla: idiomas_categorias_productos
------------------------------------- */
-- Idioma Español
insert into idiomas_categorias_productos
    (nro_categoria, cod_idioma, categoria)
VALUES
    (1, 'es', 'Harinas'),
    (2, 'es', 'Galletitas'),
    (3, 'es', 'Fideos'),
    (4, 'es', 'Carnes frescas'),
    (5, 'es', 'Fiambres'),
    (6, 'es', 'Menudencias'),
    (7, 'es', 'Alcoholicas'),
    (8, 'es', 'No alcoholicas'),

    -- INGLES
    (1, 'en', 'Flours'),
    (2, 'en', 'Cookies'),
    (3, 'en', 'Noodles'),
    (4, 'en', 'Fresh meats'),
    (5, 'en', 'Cold cuts'),
    (6, 'en', 'Offal'),
    (7, 'en', 'Alcoholic'),
    (8, 'en', 'Non-alcoholic')
    ;




/* -------------------------------------
tabla: idiomas_tipos_productos
   ------------------------------------- */
-- Idioma Español
insert into idiomas_tipos_productos
    (nro_tipo_producto, cod_idioma, tipo_producto)
values
    (1, 'es', 'Bebidas'),
    (2, 'es', 'Almacén'),
    (3, 'es', 'Lácteos'),
    (4, 'es', 'Quesos y Fiambres'),
    (5, 'es', 'Carnes'),
    (6, 'es', 'Frutas y Verduras'),
    (7, 'es', 'Congelados'),
    (8, 'es', 'Perfumería'),
    (9, 'es', 'Limpieza'),
    -- Ingles
    (1, 'en', 'Drinks'),
    (2, 'en', 'Warehouse'),
    (3, 'en', 'Dairies'),
    (4, 'en', 'Cheeses and Cold Cuts'),
    (5, 'en', 'Meats'),
    (6, 'en', 'Fruits and Vegetables'),
    (7, 'en', 'Frozen'),
    (8, 'en', 'Perfumery'),
    (9, 'en', 'Cleaning')
