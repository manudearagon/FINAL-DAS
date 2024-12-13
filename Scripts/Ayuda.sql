INSERT INTO sucursales
    (nro_supermercado, nro_sucursal, nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, horario_sucursal, servicios_disponibles, nro_localidad, habilitada)
VALUES
    (2, 4, 'Rest A Centro', 'Av. General Paz', 350, '0351-4211000, 0351-4211001', -31.416111, -64.183333, 'Lunes a Sabado de 9 a 21 y Domingos de 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones, Entrega a domicilio, Estacionamiento gratuito, Recogida en tienda', 5, 1),
    (1, 2, 'Rest A Ruta 20', 'Av. Fuerza Aérea Argentina', 1700, '0351-4652000, 0351-4652001', -31.434622, -64.195839, 'Lunes a Sabado de 9 a 21 y Domingos de 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones, Entrega a domicilio, Estacionamiento gratuito, Recogida en tienda', 5, 1),
    (1, 3, 'Rest A Circunvalación', 'Av. Circunvalación', 5500, '0351-4783000, 0351-4783001', -31.381235, -64.217828, 'Lunes a Sabado de 9 a 21 y Domingos de 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones, Entrega a domicilio, Estacionamiento gratuito, Recogida en tienda', 5, 1);

/* Sucursales Supermercado REST B */
INSERT INTO sucursales
    (nro_supermercado, nro_sucursal, nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, horario_sucursal, servicios_disponibles, nro_localidad, habilitada)
VALUES
    (2, 4, 'Rest B Cofico', 'Av. General Paz', 350, '0351-4211000, 0351-4211001', -31.416111, -64.183333, 'Lunes a Sabado de 9 a 21 y Domingos de 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones, Entrega a domicilio, Estacionamiento gratuito, Recogida en tienda', 5, 1),
    (2, 5, 'Rest B Valparaiso', 'Av. Valparaiso', 1700, '0351-4652000, 0351-4652001', -31.434622, -64.195839, 'Lunes a Sabado de 9 a 21 y Domingos de 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones, Entrega a domicilio, Estacionamiento gratuito, Recogida en tienda', 5, 1),
    (2, 6, 'Rest B Alberdi', 'Av. Circunvalación', 5500, '0351-4783000, 0351-4783001', -31.381235, -64.217828, 'Lunes a Sabado de 9 a 21 y Domingos de 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones, Entrega a domicilio, Estacionamiento gratuito, Recogida en tienda', 5, 1);

/* Sucursales WS A */
INSERT INTO sucursales
    (nro_supermercado, nro_sucursal, nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, horario_sucursal, servicios_disponibles, nro_localidad, habilitada)
VALUES
    (3, 1, 'SOAP A Cerro', 'Av. Rafael Núñez', '4630', '0810-777-8888, 0351-4211001', -31.416111, -64.183333, 'Lunes a Sabado de 8 a 21 y Domingos de 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones, Entrega a domicilio, Estacionamiento gratuito, Recogida en tienda', 5, 1),
    (3, 2, 'SOAP B Cabrera', 'Jose Antonio de Goyechea', '2851', '0351-4487566, 0351-4879400', -31.434622, -64.195839, 'Lunes a Sabado de 8 a 21 y Domingos de 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones, Entrega a domicilio, Estacionamiento gratuito, Recogida en tienda', 5, 1);

/* Sucursales Supermercado WS B */
INSERT INTO sucursales
    (nro_supermercado, nro_sucursal, nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, horario_sucursal, servicios_disponibles, nro_localidad, habilitada)
VALUES
    (4, 3, 'SOAP C Cerro', 'Av. Rafael Núñez', '4630', '0810-777-8888, 0351-4211001', -31.416111, -64.183333, 'Lunes a Sabado de 8 a 21 y Domingos de 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones, Entrega a domicilio, Estacionamiento gratuito, Recogida en tienda', 5, 1),
    (4, 4, 'SOAP D Cabrera', 'Jose Antonio de Goyechea', '2851', '0351-4487566, 0351-4879400', -31.434622, -64.195839, 'Lunes a Sabado de 8 a 21 y Doming 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones, Entrega a domicilio, Estacionamiento gratuito, Recogida en tienda', 5, 1);




/* -------------------------------------
   tabla: productos_supermercados
   ------------------------------------- */
/* Productos Supermercado Libertad */
-- SUCURSAL 1
DELETE FROM productos_supermercados;
SELECT *
FROM productos_supermercados;
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (2, 4, '7791234560011', 110.00, '2024-09-01 10:00:00'),
    -- Coca-Cola Original 500ml
    (2, 4, '7791234560028', 130.00, '2024-09-01 10:00:00'),
    -- Pepsi 500ml
    (2, 4, '7791234560035', 122.00, '2024-09-01 10:00:00'),
    -- Fanta Naranja 500ml
    (2, 4, '7791234560042', 145.00, '2024-09-01 10:00:00'),
    -- Schweppes Pomelo 500ml
    (2, 4, '7791234560059', 189.00, '2024-09-01 10:00:00'),
    -- Sprite Limon 500ml
    (2, 4, '7791234560066', 198.00, '2024-09-01 10:00:00'),
    -- Schweppes Tonica 500ml
    (2, 4, '7791234560073', 150.00, '2024-09-01 10:00:00'),
    -- Cepita Naranja 1L
    (2, 4, '7791234560080', 133.00, '2024-09-01 10:00:00'),
    -- Baggio Multifruta 1L
    (2, 4, '7791234560097', 123.00, '2024-09-01 10:00:00'),
    -- Baggio Durazno 1L
    (2, 4, '7791234560103', 152.00, '2024-09-01 10:00:00'),
    -- Cepita Multifruta 1L
    (2, 4, '7791234560110', 153.00, '2024-09-01 10:00:00'),
    -- Villa del Sur con Gas 500ml
    (2, 4, '7791234560127', 90.00, '2024-09-01 10:00:00'),
    -- Eco de los Andes sin Gas 1L
    (2, 4, '7791234560134', 188.00, '2024-09-01 10:00:00'),
    -- Bon Aqua Pomelo saborizada 1L
    (2, 4, '7791234560141', 180.00, '2024-09-01 10:00:00'),
    -- Bon Aqua Pera saborizada 1L
    (2, 4, '7791234560158', 900.00, '2024-09-01 10:00:00'),
    -- Bon Aqua Manzana saborizada 1L
    (2, 4, '000000000004', 230.00, '2024-09-01 10:00:00'),
    -- Cerveza Quilmes 1L
    (2, 4, '000000000005', 123.00, '2024-09-01 10:00:00'),
    -- Aceite de Oliva
    (2, 4, '000000000006', 235.00, '2024-09-01 10:00:00'),
    -- Aceitunas Verdes
    (2, 4, '7791234560165', 521.00, '2024-09-01 10:00:00'),
    -- Hellmanns Mayonesa 500g
    (2, 4, '7791234560172', 522.00, '2024-09-01 10:00:00'),
    -- Danica Ketchup 300g
    (2, 4, '7791234560189', 110.00, '2024-09-01 10:00:00'),

    -------------------------------------
    -- Mostaza Natura 250g
    (2, 4, '7791234560196', 115.00, '2024-09-01 10:00:00'),
    -- Salsa Golf Hellmanns 350g
    (2, 4, '000000000008', 130.00, '2024-09-01 10:00:00'),
    -- Arroz largo No se pasa
    (2, 4, '000000000009', 85.00, '2024-09-01 10:00:00'),
    -- Caldo de Pollo
    (2, 4, '7791234560202', 145.00, '2024-09-01 10:00:00'),
    -- La Virginia Cafe Molido 500g
    (2, 4, '7791234560219', 150.00, '2024-09-01 10:00:00'),
    -- Recetas de la Abuela 200g
    (2, 4, '7791234560226', 155.00, '2024-09-01 10:00:00'),
    -- Bagley Galletitas Saladas 150g
    (2, 4, '7791234560233', 160.00, '2024-09-01 10:00:00'),
    -- Sancor Leche en Polvo 400g
    (2, 4, '7791234560240', 165.00, '2024-09-01 10:00:00'),
    -- Taragui Yerba Mate 1Kg
    (2, 4, '000000000011', 70.00, '2024-09-01 10:00:00'),
    -- Chocolate con Leche
    (2, 4, '000000000012', 75.00, '2024-09-01 10:00:00'),
    -- Polenta
    (2, 4, '000000000013', 80.00, '2024-09-01 10:00:00'),
    -- Pan Lactal
    (2, 4, '000000000014', 85.00, '2024-09-01 10:00:00'),
    -- Preparado para Tortas
    (2, 4, '000000000015', 90.00, '2024-09-01 10:00:00'),
    -- Fideos Espagueti
    (2, 4, '000000000016', 95.00, '2024-09-01 10:00:00'),
    -- Sal Fina
    (2, 4, '000000000017', 100.00, '2024-09-01 10:00:00'),
    -- Nachos
    (2, 4, '000000000018', 105.00, '2024-09-01 10:00:00'),
    -- Dulce de Leche
    (2, 4, '000000000019', 120.50, '2024-10-06'),
    -- Leche Larga Vida
    (2, 4, '000000000020', 200.75, '2024-10-06'),
    -- Crema de Leche
    (2, 4, '000000000021', 85.90, '2024-10-06'),
    -- Yogur Natural
    (2, 4, '000000000022', 250.00, '2024-10-06'),
    -- Manteca
    (2, 4, '000000000023', 350.50, '2024-10-06'),
    -- Queso Finlandia Clasico
    (2, 4, '000000000024', 450.75, '2024-10-06'),
    -- Jamón Cocido
    (2, 4, '000000000025', 1200.00, '2024-10-06'),
    -- Carne de Res
    (2, 4, '000000000026', 850.50, '2024-10-06'),
    -- Carne de Cerdo
    (2, 4, '000000000027', 720.25, '2024-10-06'),
    -- Pollo Entero
    (2, 4, '000000000028', 650.00, '2024-10-06'),
    -- Filete de Merluza
    (2, 4, '000000000029', 180.90, '2024-10-06'),
    -- Manzanas
    (2, 4, '000000000030', 250.30, '2024-10-06'),
    -- Verduras
    (2, 4, '000000000031', 350.00, '2024-10-06'),
    -- Huevos
    (2, 4, '000000000032', 550.90, '2024-10-06'),
    -- Frutillas Congeladas
    (2, 4, '000000000033', 400.70, '2024-10-06'),
    -- Verduras Mixtas Congeladas
    (2, 4, '000000000034', 450.00, '2024-10-06'),
    -- Papas Fritas
    (2, 4, '000000000035', 500.50, '2024-10-06'),
    -- Helado de Chocolate
    (2, 4, '000000000036', 1100.00, '2024-10-06'),
    -- Asado de Tira
    (2, 4, '000000000037', 750.50, '2024-10-06'),
    -- Hamburguesa de Carne
    (2, 4, '000000000038', 320.25, '2024-10-06'),
    -- Shampoo
    (2, 4, '000000000039', 150.75, '2024-10-06'),
    -- Pasta Dental
    (2, 4, '000000000040', 210.30, '2024-10-06'),
    -- Desodorante Mujer
    (2, 4, '000000000041', 600.40, '2024-10-06'),
    -- Crema Hidratante
    (2, 4, '000000000042', 300.80, '2024-10-06'),
    -- Toallas Higiénicas
    (2, 4, '000000000043', 550.60, '2024-10-06'),
    -- Protección para Adultos
    (2, 4, '000000000044', 70.50, '2024-10-06'),
    -- Esponjas
    (2, 4, '000000000045', 180.25, '2024-10-06'),
    -- Detergente Líquido
    (2, 4, '000000000046', 230.70, '2024-10-06');
-- Desinfectante

-- SUCURSAL 2
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1, 2, '7791234560011', 120.00, '2024-09-01 10:00:00'),
    -- Coca-Cola Original 500ml
    (1, 2, '7791234560028', 115.00, '2024-09-01 10:00:00'),
    -- Pepsi 500ml
    (1, 2, '7791234560035', 110.00, '2024-09-01 10:00:00'),
    -- Fanta Naranja 500ml
    (1, 2, '7791234560042', 130.00, '2024-09-01 10:00:00'),
    -- Schweppes Pomelo 500ml
    (1, 2, '7791234560059', 120.00, '2024-09-01 10:00:00'),
    -- Sprite Limon 500ml
    (1, 2, '7791234560066', 135.00, '2024-09-01 10:00:00'),
    -- Schweppes Tonica 500ml
    (1, 2, '7791234560073', 150.00, '2024-09-01 10:00:00'),
    -- Cepita Naranja 1L
    (1, 2, '7791234560080', 155.00, '2024-09-01 10:00:00'),
    -- Baggio Multifruta 1L
    (1, 2, '7791234560097', 160.00, '2024-09-01 10:00:00'),
    -- Baggio Durazno 1L
    (1, 2, '7791234560103', 165.00, '2024-09-01 10:00:00'),
    -- Cepita Multifruta 1L
    (1, 2, '7791234560110', 170.00, '2024-09-01 10:00:00'),
    -- Villa del Sur con Gas 500ml
    (1, 2, '7791234560127', 175.00, '2024-09-01 10:00:00'),
    -- Eco de los Andes sin Gas 1L
    (1, 2, '7791234560134', 180.00, '2024-09-01 10:00:00'),
    -- Bon Aqua Pomelo saborizada 1L
    (1, 2, '7791234560141', 185.00, '2024-09-01 10:00:00'),
    -- Bon Aqua Pera saborizada 1L
    (1, 2, '7791234560158', 190.00, '2024-09-01 10:00:00'),
    -- Bon Aqua Manzana saborizada 1L
    (1, 2, '000000000004', 110.00, '2024-09-01 10:00:00'),
    -- Cerveza Quilmes 1L
    (1, 2, '000000000005', 200.00, '2024-09-01 10:00:00'),
    -- Aceite de Oliva
    (1, 2, '000000000006', 90.00, '2024-09-01 10:00:00'),
    -- Aceitunas Verdes
    (1, 2, '7791234560165', 100.00, '2024-09-01 10:00:00'),
    -- Hellmanns Mayonesa 500g
    (1, 2, '7791234560172', 105.00, '2024-09-01 10:00:00'),
    -- Danica Ketchup 300g
    (1, 2, '7791234560189', 110.00, '2024-09-01 10:00:00'),
    -- Mostaza Natura 250g
    (1, 2, '7791234560196', 115.00, '2024-09-01 10:00:00'),
    -- Salsa Golf Hellmanns 350g
    (1, 2, '000000000008', 130.00, '2024-09-01 10:00:00'),
    -- Arroz largo No se pasa
    (1, 2, '000000000009', 85.00, '2024-09-01 10:00:00'),
    -- Caldo de Pollo
    (1, 2, '7791234560202', 145.00, '2024-09-01 10:00:00'),
    -- La Virginia Cafe Molido 500g
    (1, 2, '7791234560219', 150.00, '2024-09-01 10:00:00'),
    -- Recetas de la Abuela 200g
    (1, 2, '7791234560226', 155.00, '2024-09-01 10:00:00'),
    -- Bagley Galletitas Saladas 150g
    (1, 2, '7791234560233', 160.00, '2024-09-01 10:00:00'),
    -- Sancor Leche en Polvo 400g
    (1, 2, '7791234560240', 165.00, '2024-09-01 10:00:00'),
    -- Taragui Yerba Mate 1Kg
    (1, 2, '000000000011', 70.00, '2024-09-01 10:00:00'),
    -- Chocolate con Leche
    (1, 2, '000000000012', 75.00, '2024-09-01 10:00:00'),
    -- Polenta
    (1, 2, '000000000013', 80.00, '2024-09-01 10:00:00'),
    -- Pan Lactal
    (1, 2, '000000000014', 85.00, '2024-09-01 10:00:00'),
    -- Preparado para Tortas
    (1, 2, '000000000015', 90.00, '2024-09-01 10:00:00'),
    -- Fideos Espagueti
    (1, 2, '000000000016', 95.00, '2024-09-01 10:00:00'),
    -- Sal Fina
    (1, 2, '000000000017', 100.00, '2024-09-01 10:00:00'),
    -- Nachos
    (1, 2, '000000000018', 105.00, '2024-09-01 10:00:00'),
    -- Dulce de Leche
    (1, 2, '000000000019', 120.50, '2024-10-06'),
    -- Leche Larga Vida
    (1, 2, '000000000020', 200.75, '2024-10-06'),
    -- Crema de Leche
    (1, 2, '000000000021', 85.90, '2024-10-06'),
    -- Yogur Natural
    (1, 2, '000000000022', 250.00, '2024-10-06'),
    -- Manteca
    (1, 2, '000000000023', 350.50, '2024-10-06'),
    -- Queso Finlandia Clasico
    (1, 2, '000000000024', 450.75, '2024-10-06'),
    -- Jamón Cocido
    (1, 2, '000000000025', 1200.00, '2024-10-06'),
    -- Carne de Res
    (1, 2, '000000000026', 850.50, '2024-10-06'),
    -- Carne de Cerdo
    (1, 2, '000000000027', 720.25, '2024-10-06'),
    -- Pollo Entero
    (1, 2, '000000000028', 650.00, '2024-10-06'),
    -- Filete de Merluza
    (1, 2, '000000000029', 180.90, '2024-10-06'),
    -- Manzanas
    (1, 2, '000000000030', 250.30, '2024-10-06'),
    -- Verduras
    (1, 2, '000000000031', 350.00, '2024-10-06'),
    -- Huevos
    (1, 2, '000000000032', 550.90, '2024-10-06'),
    -- Frutillas Congeladas
    (1, 2, '000000000033', 400.70, '2024-10-06'),
    -- Verduras Mixtas Congeladas
    (1, 2, '000000000034', 450.00, '2024-10-06'),
    -- Papas Fritas
    (1, 2, '000000000035', 500.50, '2024-10-06'),
    -- Helado de Chocolate
    (1, 2, '000000000036', 1100.00, '2024-10-06'),
    -- Asado de Tira
    (1, 2, '000000000037', 750.50, '2024-10-06'),
    -- Hamburguesa de Carne
    (1, 2, '000000000038', 320.25, '2024-10-06'),
    -- Shampoo
    (1, 2, '000000000039', 150.75, '2024-10-06'),
    -- Pasta Dental
    (1, 2, '000000000040', 210.30, '2024-10-06'),
    -- Desodorante Mujer
    (1, 2, '000000000041', 600.40, '2024-10-06'),
    -- Crema Hidratante
    (1, 2, '000000000042', 300.80, '2024-10-06'),
    -- Toallas Higiénicas
    (1, 2, '000000000043', 550.60, '2024-10-06'),
    -- Protección para Adultos
    (1, 2, '000000000044', 70.50, '2024-10-06'),
    -- Esponjas
    (1, 2, '000000000045', 180.25, '2024-10-06'),
    -- Detergente Líquido
    (1, 2, '000000000046', 230.70, '2024-10-06');
-- Desinfectante

-- SUCURSAL 3
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1, 3, '7791234560011', 120.00, '2024-09-01 10:00:00'),
    -- Coca-Cola Original 500ml
    (1, 3, '7791234560028', 115.00, '2024-09-01 10:00:00'),
    -- Pepsi 500ml
    (1, 3, '7791234560035', 110.00, '2024-09-01 10:00:00'),
    -- Fanta Naranja 500ml
    (1, 3, '7791234560042', 130.00, '2024-09-01 10:00:00'),
    -- Schweppes Pomelo 500ml
    (1, 3, '7791234560059', 120.00, '2024-09-01 10:00:00'),
    -- Sprite Limon 500ml
    (1, 3, '7791234560066', 135.00, '2024-09-01 10:00:00'),
    -- Schweppes Tonica 500ml
    (1, 3, '7791234560073', 150.00, '2024-09-01 10:00:00'),
    -- Cepita Naranja 1L
    (1, 3, '7791234560080', 155.00, '2024-09-01 10:00:00'),
    -- Baggio Multifruta 1L
    (1, 3, '7791234560097', 160.00, '2024-09-01 10:00:00'),
    -- Baggio Durazno 1L
    (1, 3, '7791234560103', 165.00, '2024-09-01 10:00:00'),
    -- Cepita Multifruta 1L
    (1, 3, '7791234560110', 170.00, '2024-09-01 10:00:00'),
    -- Villa del Sur con Gas 500ml
    (1, 3, '7791234560127', 175.00, '2024-09-01 10:00:00'),
    -- Eco de los Andes sin Gas 1L
    (1, 3, '7791234560134', 180.00, '2024-09-01 10:00:00'),
    -- Bon Aqua Pomelo saborizada 1L
    (1, 3, '7791234560141', 185.00, '2024-09-01 10:00:00'),
    -- Bon Aqua Pera saborizada 1L
    (1, 3, '7791234560158', 190.00, '2024-09-01 10:00:00'),
    -- Bon Aqua Manzana saborizada 1L
    (1, 3, '000000000004', 110.00, '2024-09-01 10:00:00'),
    -- Cerveza Quilmes 1L
    (1, 3, '000000000005', 200.00, '2024-09-01 10:00:00'),
    -- Aceite de Oliva
    (1, 3, '000000000006', 90.00, '2024-09-01 10:00:00'),
    -- Aceitunas Verdes
    (1, 3, '7791234560165', 100.00, '2024-09-01 10:00:00'),
    -- Hellmanns Mayonesa 500g
    (1, 3, '7791234560172', 105.00, '2024-09-01 10:00:00'),
    -- Danica Ketchup 300g
    (1, 3, '7791234560189', 110.00, '2024-09-01 10:00:00'),
    -- Mostaza Natura 250g
    (1, 3, '7791234560196', 115.00, '2024-09-01 10:00:00'),
    -- Salsa Golf Hellmanns 350g
    (1, 3, '000000000008', 130.00, '2024-09-01 10:00:00'),
    -- Arroz largo No se pasa
    (1, 3, '000000000009', 85.00, '2024-09-01 10:00:00'),
    -- Caldo de Pollo
    (1, 3, '7791234560202', 145.00, '2024-09-01 10:00:00'),
    -- La Virginia Cafe Molido 500g
    (1, 3, '7791234560219', 150.00, '2024-09-01 10:00:00'),
    -- Recetas de la Abuela 200g
    (1, 3, '7791234560226', 155.00, '2024-09-01 10:00:00'),
    -- Bagley Galletitas Saladas 150g
    (1, 3, '7791234560233', 160.00, '2024-09-01 10:00:00'),
    -- Sancor Leche en Polvo 400g
    (1, 3, '7791234560240', 165.00, '2024-09-01 10:00:00'),
    -- Taragui Yerba Mate 1Kg
    (1, 3, '000000000011', 70.00, '2024-09-01 10:00:00'),
    -- Chocolate con Leche
    (1, 3, '000000000012', 75.00, '2024-09-01 10:00:00'),
    -- Polenta
    (1, 3, '000000000013', 80.00, '2024-09-01 10:00:00'),
    -- Pan Lactal
    (1, 3, '000000000014', 85.00, '2024-09-01 10:00:00'),
    -- Preparado para Tortas
    (1, 3, '000000000015', 90.00, '2024-09-01 10:00:00'),
    -- Fideos Espagueti
    (1, 3, '000000000016', 95.00, '2024-09-01 10:00:00'),
    -- Sal Fina
    (1, 3, '000000000017', 100.00, '2024-09-01 10:00:00'),
    -- Nachos
    (1, 3, '000000000018', 105.00, '2024-09-01 10:00:00'),
    -- Dulce de Leche
    (1, 3, '000000000019', 120.50, '2024-10-06'),
    -- Leche Larga Vida
    (1, 3, '000000000020', 200.75, '2024-10-06'),
    -- Crema de Leche
    (1, 3, '000000000021', 85.90, '2024-10-06'),
    -- Yogur Natural
    (1, 3, '000000000022', 250.00, '2024-10-06'),
    -- Manteca
    (1, 3, '000000000023', 350.50, '2024-10-06'),
    -- Queso Finlandia Clasico
    (1, 3, '000000000024', 450.75, '2024-10-06'),
    -- Jamón Cocido
    (1, 3, '000000000025', 1200.00, '2024-10-06'),
    -- Carne de Res
    (1, 3, '000000000026', 850.50, '2024-10-06'),
    -- Carne de Cerdo
    (1, 3, '000000000027', 720.25, '2024-10-06'),
    -- Pollo Entero
    (1, 3, '000000000028', 650.00, '2024-10-06'),
    -- Filete de Merluza
    (1, 3, '000000000029', 180.90, '2024-10-06'),
    -- Manzanas
    (1, 3, '000000000030', 250.30, '2024-10-06'),
    -- Verduras
    (1, 3, '000000000031', 350.00, '2024-10-06'),
    -- Huevos
    (1, 3, '000000000032', 550.90, '2024-10-06'),
    -- Frutillas Congeladas
    (1, 3, '000000000033', 400.70, '2024-10-06'),
    -- Verduras Mixtas Congeladas
    (1, 3, '000000000034', 450.00, '2024-10-06'),
    -- Papas Fritas
    (1, 3, '000000000035', 500.50, '2024-10-06'),
    -- Helado de Chocolate
    (1, 3, '000000000036', 1100.00, '2024-10-06'),
    -- Asado de Tira
    (1, 3, '000000000037', 750.50, '2024-10-06'),
    -- Hamburguesa de Carne
    (1, 3, '000000000038', 320.25, '2024-10-06'),
    -- Shampoo
    (1, 3, '000000000039', 150.75, '2024-10-06'),
    -- Pasta Dental
    (1, 3, '000000000040', 210.30, '2024-10-06'),
    -- Desodorante Mujer
    (1, 3, '000000000041', 600.40, '2024-10-06'),
    -- Crema Hidratante
    (1, 3, '000000000042', 300.80, '2024-10-06'),
    -- Toallas Higiénicas
    (1, 3, '000000000043', 550.60, '2024-10-06'),
    -- Protección para Adultos
    (1, 3, '000000000044', 70.50, '2024-10-06'),
    -- Esponjas
    (1, 3, '000000000045', 180.25, '2024-10-06'),
    -- Detergente Líquido
    (1, 3, '000000000046', 230.70, '2024-10-06');
-- Desinfectante