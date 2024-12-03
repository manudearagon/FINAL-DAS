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
   Tabla: paises
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
    (1, 3, 'Santa Fe');
SELECT *
FROM provincias;
/* -------------------------------------
   tabla: localidades
   ------------------------------------- */
insert into localidades
    (nro_localidad, nom_localidad, cod_pais, cod_provincia)
values
    (1, 'CABA', 1, 1),
    (2, 'La Plata', 1, 1),
    (3, 'Mar del Plata', 1, 1),
    (4, 'Dolores', 1, 1),
    (5, 'Cordoba', 1, 2),
    (6, 'Villa Carlos Paz', 1, 2),
    (7, 'Villa Allende', 1, 2),
    (8, 'Rio Cuarto', 1, 2),
    (9, 'Rosario', 1, 3),
    (10, 'San Lorenzo', 1, 3),
    (11, 'Ceres', 1, 3),
    (12, 'Santa Fe', 1, 3);

/* -------------------------------------
   tabla: supermercados
   ------------------------------------- */
insert into supermercados
    (razon_social, cuit)
values
    ('Supermercado REST A', '20426924820'),
    ('Supermercado REST B', '20232835461'),
    ('Supermercado WS A', '21186659991'),
    ('Supermercado WS B', '20448945469');

/* -------------------------------------
   tabla: sucursales
   ------------------------------------- */
/* Sucursales Supermercado Libertad */
INSERT INTO sucursales
    (nro_supermercado, nro_sucursal, nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, horario_sucursal, servicios_disponibles, nro_localidad, habilitada)
VALUES
    (1, 1, 'Libertad Centro', 'Av. General Paz', 350, '0351-4211000, 0351-4211001', -31.416111, -64.183333, 'Lunes a Sabado de 9 a 21 y Domingos de 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones, Entrega a domicilio, Estacionamiento gratuito, Recogida en tienda', 5, 1),
    (1, 2, 'Libertad Ruta 20', 'Av. Fuerza Aérea Argentina', 1700, '0351-4652000, 0351-4652001', -31.434622, -64.195839, 'Lunes a Sabado de 9 a 21 y Domingos de 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones, Entrega a domicilio, Estacionamiento gratuito, Recogida en tienda', 5, 1),
    (1, 3, 'Libertad Circunvalación', 'Av. Circunvalación', 5500, '0351-4783000, 0351-4783001', -31.381235, -64.217828, 'Lunes a Sabado de 9 a 21 y Domingos de 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones, Entrega a domicilio, Estacionamiento gratuito, Recogida en tienda', 5, 1);

/* Sucursales Supermercado Disco */
INSERT INTO sucursales
    (nro_supermercado, nro_sucursal, nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, horario_sucursal, servicios_disponibles, nro_localidad, habilitada)
VALUES
    (2, 1, 'Disco Cerro', 'Av. Rafael Núñez', '4630', '0810-777-8888, 0351-4211001', -31.416111, -64.183333, 'Lunes a Sabado de 8 a 21 y Domingos de 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones, Entrega a domicilio, Estacionamiento gratuito, Recogida en tienda', 5, 1),
    (2, 2, 'Disco Villa Cabrera', 'Jose Antonio de Goyechea', '2851', '0351-4487566, 0351-4879400', -31.434622, -64.195839, 'Lunes a Sabado de 8 a 21 y Domingos de 10 a 18', 'Atención al cliente, Cajeros automáticos, Compra en línea, Devoluciones, Entrega a domicilio, Estacionamiento gratuito, Recogida en tienda', 5, 1);

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
    (4, 'http://localhost:8083/services/supermercado.wsdl', 'WS', 'usr_admin', 'pwd_admin', '2024-09-01 12:00:00');

/* -------------------------------------
   tabla: rubros_productos
   ------------------------------------- */
insert into rubros_productos
    (nom_rubro, vigente)
VALUES
    ('GASEOSAS', 1),
    ('JUGOS', 1),
    ('AGUAS', 1),
    ('CERVEZAS', 1),
    ('ACEITES Y VINAGRE', 1),
    ('ACEITUNAS Y ENCURTIDOS', 1),
    ('ADEREZOS', 1),
    ('ARROZ Y LEGUMBRES', 1),
    ('CALDOS, SOPAS, PURE', 1),
    ('DESAYUNO Y MERIENDA', 1),
    ('GOLOSINAS Y CHOCOLATES', 1),
    ('HARINAS', 1),
    ('PANIFICADOS', 1),
    ('PARA PREPARAR', 1),
    ('PASTAS SECAS Y SALSAS', 1),
    ('SAL, PIMIENTAS Y ESPECIAS', 1),
    ('SNACKS', 1),
    ('DULCE DE LECHE', 1),
    ('LECHES', 1),
    ('CREMAS', 1),
    ('YOGURES', 1),
    ('MANTECAS Y MARGARINAS', 1),
    ('QUESOS', 1),
    ('FIAMBRES', 1),
    ('CARNE VACUNA', 1),
    ('CARNE DE CERDO', 1),
    ('CARNE DE POLLO', 1),
    ('PESCADOS', 1),
    ('FRUTAS', 1),
    ('VERDURAS', 1),
    ('HUEVOS', 1),
    ('FRUTAS CONGELADAS', 1),
    ('VERDURAS CONGELADAS', 1),
    ('PAPAS CONGELADAS', 1),
    ('HELADOS Y POSTRES', 1),
    ('CARNES Y POLLO', 1),
    ('HAMBURGUESAS Y MILANESAS', 1),
    ('CUIDADO CAPILAR', 1),
    ('CUIDADO ORAL', 1),
    ('CUIDADO PERSONAL', 1),
    ('CUIDADO DE LA PIEL ', 1),
    ('PROTECCION FEMENINA', 1),
    ('PROTECCION PARA ADULTOS ', 1),
    ('ACCESORIOS DE LIMPIEZA', 1),
    ('CUIDADO DE ROPA', 1),
    ('LIMPIEZA DE COCINA ', 1),
    ('PAPELES', 1);

/* -------------------------------------
   tabla: categorias_productos
   ------------------------------------- */
-- Rubro: GASEOSAS (nro_rubro = 1)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Cola', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'GASEOSAS'), 1),
    ('Limón', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'GASEOSAS'), 1),
    ('Naranja', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'GASEOSAS'), 1),
    ('Pomelo', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'GASEOSAS'), 1),
    ('Tónica', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'GASEOSAS'), 1);

-- Rubro: JUGOS (nro_rubro = 2)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Listos para tomar', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'JUGOS'), 1),
    ('Concentrados', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'JUGOS'), 1),
    ('En polvo', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'JUGOS'), 1),
    ('Frescos', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'JUGOS'), 1);

-- Rubro: AGUAS (nro_rubro = 3)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Agua con gas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'AGUAS'), 1),
    ('Agua sin gas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'AGUAS'), 1),
    ('Agua saborizada', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'AGUAS'), 1);

-- Rubro: CERVEZA (nro_rubro = 4)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Roja', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CERVEZAS'), 1),
    ('Rubia', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CERVEZAS'), 1),
    ('Negra', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CERVEZAS'), 1),
    ('Ipa', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CERVEZAS'), 1),
    ('Sin alcohol', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CERVEZAS'), 1);

-- Rubro: ACEITES Y VINAGRES (nro_rubro = 5)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Aceite en aerosol', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ACEITES Y VINAGRE'), 1),
    ('Aceite de girasol', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ACEITES Y VINAGRE'), 1),
    ('Aceite de maiz', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ACEITES Y VINAGRE'), 1),
    ('Aceite de oliva', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ACEITES Y VINAGRE'), 1),
    ('Aceite mezcla', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ACEITES Y VINAGRE'), 1),
    ('Jugo de limon', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ACEITES Y VINAGRE'), 1),
    ('Vinagres', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ACEITES Y VINAGRE'), 1);

-- Rubro: Aceituna y Encurtidos (nro_rubro = 6)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Aceitunas verde', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ACEITUNAS Y ENCURTIDOS'), 1),
    ('Aceitunas negras', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ACEITUNAS Y ENCURTIDOS'), 1),
    ('Encurtidos', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ACEITUNAS Y ENCURTIDOS'), 1);

-- Rubro: ADEREZOS (nro_rubro = 7)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Mayonesas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ADEREZOS'), 1),
    ('Ketchup', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ADEREZOS'), 1),
    ('Mostazas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ADEREZOS'), 1),
    ('Salsa golf', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ADEREZOS'), 1);

-- Rubro: Arroz (nro_rubro = 8)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Arroz', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ARROZ Y LEGUMBRES'), 1),
    ('Legumbres', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ARROZ Y LEGUMBRES'), 1);

-- Rubro: caldos sopas pure (nro_rubro = 9)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Caldos', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CALDOS, SOPAS, PURE'), 1),
    ('Sopa', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CALDOS, SOPAS, PURE'), 1),
    ('Pure', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CALDOS, SOPAS, PURE'), 1);

-- Rubro: DESAYUNO Y MERIENDA (nro_rubro = 10)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Azúcar y edulcorante', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1),
    ('Bizcochuelos, budines y magdalenas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1),
    ('Cafes', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1),
    ('Cereales', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1),
    ('Galletitas dulces', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1),
    ('Galletitas saladas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1),
    ('Leches en polvo', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1),
    ('Mermeladas y dulce', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1),
    ('Tes', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1),
    ('Yerbas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1),
    ('Cacaos', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1);

-- Rubro: golosinas y chocolates (nro_rubro = 11)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Alfajores', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'GOLOSINAS Y CHOCOLATES'), 1),
    ('Bombones', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'GOLOSINAS Y CHOCOLATES'), 1),
    ('Caramelos y chicles', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'GOLOSINAS Y CHOCOLATES'), 1),
    ('Chocolates con Leche', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'GOLOSINAS Y CHOCOLATES'), 1),
    ('Turrones', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'GOLOSINAS Y CHOCOLATES'), 1);

-- Rubro: harinas (nro_rubro = 12)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Harinas comunes y leudantes', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'HARINAS'), 1),
    ('Polentas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'HARINAS'), 1),
    ('Avenas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'HARINAS'), 1);

-- Rubro: panificados (nro_rubro = 13)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Pan Lactal', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PANIFICADOS'), 1),
    ('Pan para hamburguesas y panchos', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PANIFICADOS'), 1),
    ('Tostadas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PANIFICADOS'), 1),
    ('Pan rallado', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PANIFICADOS'), 1);

-- Rubro: para preparar (nro_rubro = 14)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Bizcochuelos y tortas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PARA PREPARAR'), 1),
    ('Flanes', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PARA PREPARAR'), 1),
    ('Gelatinas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PARA PREPARAR'), 1),
    ('Helados', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PARA PREPARAR'), 1),
    ('Postres', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PARA PREPARAR'), 1);

-- Rubro: pastas secas y salsas (nro_rubro = 15)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Fideos largos', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PASTAS SECAS Y SALSAS'), 1),
    ('Fideos guiseros', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PASTAS SECAS Y SALSAS'), 1),
    ('Fideos para sopa', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PASTAS SECAS Y SALSAS'), 1),
    ('Pastas listas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PASTAS SECAS Y SALSAS'), 1),
    ('Salsas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PASTAS SECAS Y SALSAS'), 1),
    ('Pastas rellenas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PASTAS SECAS Y SALSAS'), 1);

-- Rubro: SAL, PIMIENTA, ESPECIAS (nro_rubro = 16)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Sal', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'SAL, PIMIENTAS Y ESPECIAS'), 1),
    ('Hierbas y especias', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'SAL, PIMIENTAS Y ESPECIAS'), 1),
    ('Pimienta', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'SAL, PIMIENTAS Y ESPECIAS'), 1);

-- Rubro: SNACKS (nro_rubro = 17)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Frutas secas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'SNACKS'), 1),
    ('Mani', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'SNACKS'), 1),
    ('Nachos', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'SNACKS'), 1),
    ('Papas fritas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'SNACKS'), 1),
    ('Pochoclos', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'SNACKS'), 1),
    ('Mix', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'SNACKS'), 1);

-- Rubro: DULCE DE LECHE (nro_rubro = 18)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Tradicional', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'DULCE DE LECHE'), 1),
    ('Repostero', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'DULCE DE LECHE'), 1);

-- Rubro: LECHES (nro_rubro = 19)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Larga Vida', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'LECHES'), 1),
    ('Vegetal', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'LECHES'), 1);

-- Rubro: CREMAS (nro_rubro = 20)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Larga Duracion', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CREMAS'), 1),
    ('Frescas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CREMAS'), 1);

-- Rubro: YOGURES (nro_rubro = 21)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Firmes', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'YOGURES'), 1),
    ('Bebibles', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'YOGURES'), 1);

-- Rubro: MANTECAS Y MARGARINAS (nro_rubro = 22)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Manteca', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'MANTECAS Y MARGARINAS'), 1),
    ('Margarina', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'MANTECAS Y MARGARINAS'), 1);

-- Rubro: QUESOS (nro_rubro = 23)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Quesos blandos', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'QUESOS'), 1),
    ('Quesos semiduros', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'QUESOS'), 1),
    ('Quesos duros', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'QUESOS'), 1),
    ('Quesos untables', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'QUESOS'), 1);

-- Rubro: FIAMBRES (nro_rubro = 24)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Jamon', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'FIAMBRES'), 1),
    ('Salame', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'FIAMBRES'), 1),
    ('Salchichas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'FIAMBRES'), 1);

-- Rubro: CARNE VACUNA (nro_rubro = 25)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Carne de Res', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CARNE VACUNA'), 1);

-- Rubro: CARNE CERDO (nro_rubro = 26)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Carne de Cerdo', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CARNE DE CERDO'), 1);

-- Rubro: CARNE POLLO (nro_rubro = 27)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Carne de Pollo', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CARNE DE POLLO'), 1);

-- Rubro: PESCADO (nro_rubro = 28)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Pescado', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PESCADOS'), 1);

-- Rubro: FRUTA (nro_rubro = 29)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Frutas sueltas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'FRUTAS'), 1),
    ('Frutas empaquetadas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'FRUTAS'), 1);

-- Rubro: VERDURA (nro_rubro = 30)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Verduras sueltas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'VERDURAS'), 1),
    ('Verduras empaquetadas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'VERDURAS'), 1),
    ('Ensaladas preparadas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'VERDURAS'), 1);

-- Rubro: HUEVOS (nro_rubro = 31)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Blancos', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'HUEVOS'), 1),
    ('De codorniz', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'HUEVOS'), 1);

-- Rubro: FRUTAS CONGELADAS (nro_rubro = 32)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Frutillas Congeladas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'FRUTAS CONGELADAS'), 1);

-- Rubro: VERDURAS CONGELADAS (nro_rubro = 33)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Mix Verduras Congeladas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'VERDURAS CONGELADAS'), 1);

-- Rubro: PAPAS CONGELADAS (nro_rubro = 34)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Papas fritas Congeladas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PAPAS CONGELADAS'), 1);

-- Rubro: HELADOS Y POSTRES (nro_rubro = 35)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Helado de crema', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'HELADOS Y POSTRES'), 1);

-- Rubro: CARNES Y POLLO (nro_rubro = 36)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Asado congelado', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CARNES Y POLLO'), 1);

-- Rubro: HAMBURGUESAS Y MILANESAS (nro_rubro = 37)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Hamburguesas congeladas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'HAMBURGUESAS Y MILANESAS'), 1);

-- Rubro: CUIDADO CAPILAR (nro_rubro = 38)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Coloracion', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CUIDADO CAPILAR'), 1),
    ('Shampoo', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CUIDADO CAPILAR'), 1),
    ('Acondicionador', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CUIDADO CAPILAR'), 1),
    ('Tratamientos capilares', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CUIDADO CAPILAR'), 1);

-- Rubro: CUIDADO ORAL (nro_rubro = 39)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Pasta de dientes', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CUIDADO ORAL'), 1),
    ('Cepillos de dientes', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CUIDADO ORAL'), 1),
    ('Enjuagues bucales', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CUIDADO ORAL'), 1);

-- Rubro: CUIDADO PERSONAL (nro_rubro = 40)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Cepillos y esponjas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CUIDADO PERSONAL'), 1),
    ('Depilacion', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CUIDADO PERSONAL'), 1),
    ('Desodorantes', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CUIDADO PERSONAL'), 1),
    ('Talcos', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CUIDADO PERSONAL'), 1),
    ('Jabones', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CUIDADO PERSONAL'), 1);

-- Rubro: CUIDADO DE LA PIEL (nro_rubro = 41)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Cremas corporales', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CUIDADO DE LA PIEL '), 1),
    ('Cremas desmaquillantes', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CUIDADO DE LA PIEL '), 1),
    ('Cremas faciales', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CUIDADO DE LA PIEL '), 1),
    ('Solares y postsolares', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CUIDADO DE LA PIEL '), 1);

-- Rubro: PROTECCION FEMENINA (nro_rubro = 42)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Protectores diarios', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PROTECCION FEMENINA'), 1),
    ('Toallitas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PROTECCION FEMENINA'), 1),
    ('Tampones', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PROTECCION FEMENINA'), 1);

-- Rubro: PROTECCION PARA ADULTOS (nro_rubro = 43)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Pañales adultos', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PROTECCION PARA ADULTOS '), 1),
    ('Toallitas humedas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PROTECCION PARA ADULTOS '), 1);

-- Rubro: ACCESORIOS DE LIMPIEZA (nro_rubro = 44)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Baldes y mopas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ACCESORIOS DE LIMPIEZA'), 1),
    ('Bolsas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ACCESORIOS DE LIMPIEZA'), 1),
    ('Escobas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ACCESORIOS DE LIMPIEZA'), 1),
    ('Esponjas', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ACCESORIOS DE LIMPIEZA'), 1),
    ('Plumeros', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ACCESORIOS DE LIMPIEZA'), 1),
    ('Palos', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ACCESORIOS DE LIMPIEZA'), 1),
    ('Secadores y trapos', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'ACCESORIOS DE LIMPIEZA'), 1);

-- Rubro: CUIDADO ROPA (nro_rubro = 45)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Jabon en polvo', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CUIDADO DE ROPA'), 1),
    ('Jabon en pan', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CUIDADO DE ROPA'), 1),
    ('Jabon liquido', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CUIDADO DE ROPA'), 1),
    ('Perfumantes', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CUIDADO DE ROPA'), 1),
    ('Suavizantes', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'CUIDADO DE ROPA'), 1);

-- Rubro: LIMPIEZA COCINA (nro_rubro = 46)
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Detergentes', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'LIMPIEZA DE COCINA '), 1),
    ('Fosforos', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'LIMPIEZA DE COCINA '), 1),
    ('Desinfectante', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'LIMPIEZA DE COCINA '), 1),
    ('Limpiadores de piso', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'LIMPIEZA DE COCINA '), 1);

-- Rubro: PAPELERÍA (nro_rubro = 47) 
insert into categorias_productos
    (nom_categoria, nro_rubro, vigente)
values
    ('Pañuelos', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PAPELES'), 1),
    ('Papel higiénico', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PAPELES'), 1),
    ('Rollos de cocina', (SELECT nro_rubro
        FROM rubros_productos
        WHERE nom_rubro = 'PAPELES'), 1);

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
    ('Baggio', 1),
    ('La Serenísima', 1),
    ('Sancor', 1),
    ('Tregar', 1),
    ('Ilolay', 1),
    ('Veronica', 1),
    ('Milkaut', 1),
    ('Arcor', 1),
    ('Bagley', 1),
    ('Terrabusi', 1),
    ('Marolio', 1),
    ('Molinos Río de la Plata', 1),
    ('Knorr', 1),
    ('Maggi', 1),
    ('Hellmannós', 1),
    ('Dánica', 1),
    ('Cañuelas', 1),
    ('Gallo', 1),
    ('La Campagnola', 1),
    ('Natura', 1),
    ('Cresta Roja', 1),
    ('Paladini', 1),
    ('Fargo', 1),
    ('Bimbo', 1),
    ('Don Satur', 1),
    ('Felices las Vacas', 1),
    ('Cinzano', 1),
    ('Gancia', 1),
    ('Ser', 1),
    ('Activia', 1),
    ('Quesos Santa Rosa', 1),
    ('Paty', 1),
    ('Swift', 1),
    ('Granja del Sol', 1),
    ('Vieníssima', 1),
    ('Tía Maruca', 1),
    ('Dove', 1),
    ('Plusbelle', 1),
    ('Rexona', 1),
    ('Pantene', 1),
    ('Ledesma', 1),
    ('Molinos Ala', 1),
    ('Nescafé', 1),
    ('La Virginia', 1),
    ('Cachamai', 1),
    ('Taragui', 1),
    ('Rosamonte', 1),
    ('Amanda', 1),
    ('Chamigo', 1),
    ('Serenisima Descremada', 1),
    ('Cindor', 1),
    ('Sancor Bebible', 1),
    ('Ariel', 1),
    ('La Salteña', 1),
    ('Súper Patitas', 1),
    ('Grido', 1),
    ('Patagonia', 1),
    ('Quilmes', 1),
    ('Andes', 1),
    ('Stella Artois', 1),
    ('Isenbeck', 1),
    ('Heineken', 1),
    ('Brahma', 1),
    ('Corona', 1),
    ('Zanella', 1),
    ('Speed', 1),
    ('Red Bull', 1),
    ('Gatorade', 1),
    ('Powerade', 1),
    ('Manaos', 1),
    ('Secco', 1),
    ('Vicentín', 1),
    ('Yogurisimo', 1),
    ('Bonafide', 1),
    ('Georgalos', 1),
    ('Lheritier', 1),
    ('Cachafaz', 1),
    ('Havanna', 1),
    ('Suchard', 1),
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
    (9, 'Limpieza');

/* -------------------------------------
   tabla: tipos_productos_marcas
   ------------------------------------- */
insert into tipos_productos_marcas
    (nro_marca, nro_tipo_producto, vigente)
values
    -- Marcas de Bebidas (Tipo 1)
    (1, 1, 1),
    -- Coca-Cola
    (2, 1, 1),
    -- Pepsi
    (3, 1, 1),
    -- Sprite
    (4, 1, 1),
    -- Fanta
    (5, 1, 1),
    -- Schweppes
    (6, 1, 1),
    -- Villa del Sur
    (7, 1, 1),
    -- Bon Aqua
    (8, 1, 1),
    -- Eco de los Andes
    (9, 1, 1),
    -- Cepita
    (10, 1, 1),
    -- Baggio
    (75, 1, 1),
    -- Speed
    (76, 1, 1),
    -- Red Bull
    (77, 1, 1),
    -- Gatorade
    (78, 1, 1),
    -- Powerade
    (79, 1, 1),
    -- Manaos
    (80, 1, 1),
    -- Secco
    (67, 1, 1),
    -- Quilmes

    -- Marcas de Almac�n (Tipo 2)
    (20, 2, 1),
    -- Marolio
    (21, 2, 1),
    -- Molinos R�o de la Plata
    (22, 2, 1),
    -- Knorr
    (23, 2, 1),
    -- Maggi
    (24, 2, 1),
    -- Hellmann�s
    (25, 2, 1),
    -- D�nica
    (26, 2, 1),
    -- Ca�uelas
    (27, 2, 1),
    -- Gallo
    (28, 2, 1),
    -- La Campagnola
    (29, 2, 1),
    -- Natura
    (50, 2, 1),
    -- Ledesma
    (51, 2, 1),
    -- Molinos Ala
    (52, 2, 1),
    -- Nescaf�
    (53, 2, 1),
    -- La Virginia
    (54, 2, 1),
    -- Cachamai
    (55, 2, 1),
    -- Tarag�i
    (56, 2, 1),
    -- Rosamonte
    (57, 2, 1),
    -- Amanda
    (58, 2, 1),
    -- Chamigo
    (96, 2, 1),
    -- Capit�n del Espacio
    (97, 2, 1),
    -- Vauquita
    (17, 2, 1),
    -- Arcor
    (18, 2, 1),
    -- Babley
    (12, 2, 1),
    -- Sancor REPETIDA
    (90, 2, 1),
    -- Nestle
    (33, 2, 1),
    -- Bimbo
    (34, 2, 1),
    -- Don Satur

    -- Marcas de L�cteos (Tipo 3)
    (11, 3, 1),
    -- La Seren�sima
    (12, 3, 1),
    -- Sancor
    (13, 3, 1),
    -- Tregar
    (14, 3, 1),
    -- Ilolay
    (15, 3, 1),
    -- Veronica
    (16, 3, 1),
    -- Milkaut
    (38, 3, 1),
    -- Ser
    (39, 3, 1),
    -- Activia
    (59, 3, 1),
    -- Serenisima Descremada
    (60, 3, 1),
    -- Cindor
    (61, 3, 1),
    -- Sancor Bebible
    (82, 3, 1),
    -- Yogur�simo

    -- Marcas de Quesos y Fiambres (Tipo 4)
    (40, 4, 1),
    -- Quesos Santa Rosa
    (31, 4, 1),
    -- Paladini
    (32, 4, 1),
    -- Fargo
    (35, 4, 1),
    -- Felices las Vacas


    -- Marcas de Carnes (Tipo 5)
    (30, 5, 1),
    -- Cresta Roja
    (41, 5, 1),
    -- Paty
    (42, 5, 1),
    -- Swift
    (43, 5, 1),
    -- Granja del Sol
    (44, 5, 1),
    -- Vien�ssima

    -- Marcas de Frutas y Verduras (Tipo 6)
    (93, 6, 1),
    -- Aguadito
    (94, 6, 1),
    -- Los Nietitos
    (95, 6, 1),
    -- Don Pedro
    (30, 6, 1),
    -- Cresta Roja

    -- Marcas de Congelados (Tipo 7)
    (43, 7, 1),
    -- Granja del Sol
    (44, 7, 1),
    -- Vien�ssima
    (45, 7, 1),
    -- T�a Maruca
    (64, 7, 1),
    -- S�per Patitas
    (65, 7, 1),
    -- Grido
    (42, 7, 1),
    -- Swift REPETIDO

    -- Marcas de Perfumer�a (Tipo 8)
    (46, 8, 1),
    -- Dove
    (47, 8, 1),
    -- Plusbelle
    (48, 8, 1),
    -- Rexona
    (49, 8, 1),
    -- Pantene

    -- Marcas de Limpieza (Tipo 9)
    (98, 9, 1),
    -- Magistral
    (99, 9, 1),
    -- Ala
    (100, 9, 1),
    -- Cif
    (101, 9, 1),
    -- Mr Musculo
    (102, 9, 1),
    -- Elite
    (103, 9, 1);
-- Elegante

/* -------------------------------------
   tabla: productos
   ------------------------------------- */
-- Bebidas > Gaseosas
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('7791234560011', 'Coca-Cola Original 500ml', 'Bebida gaseosa sabor cola 500ml', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\coca500.jpg', SINGLE_BLOB) AS imagen), 1, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Cola'), 1),
    -- Bebidas > Gaseosas > Cola
    ('7791234560028', 'Pepsi 500ml', 'Bebida gaseosa sabor cola 500ml', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\pepsi500.jpeg', SINGLE_BLOB) AS imagen), 2, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Cola'), 1),
    -- Bebidas > Gaseosas > Cola
    ('7791234560035', 'Fanta Naranja 500ml', 'Bebida gaseosa sabor naranja 500ml', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\fanta500.jpg', SINGLE_BLOB) AS imagen), 4, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Naranja'), 1),
    -- Bebidas > Gaseosas > Naranja
    ('7791234560042', 'Schweppes Pomelo 500ml', 'Bebida gaseosa sabor pomelo 500ml', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\schweppes.jpeg', SINGLE_BLOB) AS imagen), 5, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Pomelo'), 1),
    -- Bebidas > Gaseosas > Pomelo
    ('7791234560059', 'Sprite Limon 500ml', 'Bebida gaseosa sabor limon 500ml', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\sprite500.jpg', SINGLE_BLOB) AS imagen), 3, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Limón'), 1),
    -- Bebidas > Gaseosas > Limon
    ('7791234560066', 'Schweppes Tonica 500ml', 'Bebida gaseosa sabor tonica 500ml', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\schweppesTon.jpeg', SINGLE_BLOB) AS imagen), 5, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Tónica'), 1);
-- Bebidas > Gaseosas > Tonica

-- Bebidas > Jugos
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('7791234560073', 'Cepita Naranja 1L', 'Jugo de naranja listo para tomar', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\cepitaNaranja.jpeg', SINGLE_BLOB) AS imagen), 9, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Listos para tomar'), 1),
    -- Bebidas > Jugos > Listos para tomar
    ('7791234560080', 'Baggio Multifruta 1L', 'Jugo de multifruta listo para tomar 1L', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\baggioMultif.png', SINGLE_BLOB) AS imagen), 10, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Listos para tomar'), 1),
    -- Bebidas > Jugos > Listos para tomar
    ('7791234560097', 'Baggio Durazno 1L', 'Jugo de durazno listo para tomar 1L', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\baggioDuraz.jpg', SINGLE_BLOB) AS imagen), 10, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Listos para tomar'), 1),
    -- Bebidas > Jugos > Listos para tomar
    ('7791234560103', 'Cepita Multifruta 1L', 'Jugo concentrado de multifruta 1L', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\cepitalMultf.jpg', SINGLE_BLOB) AS imagen), 9, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Concentrados'), 1);
-- Bebidas > Jugos > Concentrados

-- Bebidas > Aguas
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto,imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('7791234560110', 'Villa del Sur con Gas 500ml', 'Agua mineral con gas 500ml', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\villaSurGas.jpg', SINGLE_BLOB) AS imagen), 6, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Agua con gas'), 1),
    -- Bebidas > Aguas > Agua con gas
    ('7791234560127', 'Eco de los Andes sin Gas 1L', 'Agua mineral sin gas 1L', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\ecoAndesSinGas.jpg', SINGLE_BLOB) AS imagen), 8, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Agua sin gas'), 1),
    -- Bebidas > Aguas > Agua sin gas
    ('7791234560134', 'Bon Aqua Pomelo saborizada 1L', 'Agua saborizada con sabor a pomelo 1L', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\bonPomelo.jpeg', SINGLE_BLOB) AS imagen), 7, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Agua saborizada'), 1),
    -- Bebidas > Aguas > Agua saborizada
    ('7791234560141', 'Bon Aqua Pera saborizada 1L', 'Agua saborizada con sabor a pera 1L', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\bonPera.jpg', SINGLE_BLOB) AS imagen), 7, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Agua saborizada'), 1),
    -- Bebidas > Aguas > Agua saborizada
    ('7791234560158', 'Bon Aqua Manzana saborizada 1L', 'Agua saborizada con sabor a manzana 1L', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\bonManzana.jpg', SINGLE_BLOB) AS imagen), 7, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Agua saborizada'), 1);
-- Bebidas > Aguas > Agua saborizada

-- Bebidas > CERVEZAS
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000004', 'Cerveza Quilmes 1L', 'Cerveza Roja', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\quilmesRoja.jpg', SINGLE_BLOB) AS imagen), 67, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Roja'), 1);
-- Bebidas > Cervezas > Rojas

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Almacen > ACEITES Y VINAGRE
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000005', 'Aceite de Oliva', 'Aceite de oliva extra virgen', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\oliva.png', SINGLE_BLOB) AS imagen), 21, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Aceite de oliva'), 1);
-- Almacen > Aceites y vinagres > Aceite de oliva

-- Almcen > ACEITUNAS Y ENCURTIDOS
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000006', 'Aceitunas Verdes', 'Aceitunas verdes en salmuera', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\aceitunas.png', SINGLE_BLOB) AS imagen), 28, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Aceitunas verde'), 1);
-- Almacen > Aceitunas y encurtidos > Aceitunas verdes

-- Almacen > Aderezos
INSERT INTO productos
    (cod_barra, nom_producto,desc_producto,imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('7791234560165', 'Hellmanns Mayonesa 500g', 'Mayonesa clásica de 500g', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\hellmannMayo.jpg', SINGLE_BLOB) AS imagen), 24, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Mayonesas'), 1),
    -- Almacen > Aderezos > Mayonesas
    ('7791234560172', 'Danica Ketchup 300g', 'Kétchup de 300g', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\danicaKetch.jpg', SINGLE_BLOB) AS imagen), 25, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Ketchup'), 1),
    -- Almacen > Aderezos > Ketchup
    ('7791234560189', 'Mostaza Natura 250g', 'Mostaza de 250g', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\mostazaNatura.jpeg', SINGLE_BLOB) AS imagen), 29, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Mostazas'), 1),
    -- Almacen > Aderezos > Mostazas
    ('7791234560196', 'Salsa Golf Hellmanns 350g', 'Salsa golf de 350g', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\hellmanSalsaGol.jpeg', SINGLE_BLOB) AS imagen), 24, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Salsa golf'), 1);
-- Almacen > Aderezos > Salsa golf

-- Almacen > ARROZ Y LEGUMBRES
INSERT INTO productos
    (cod_barra, nom_producto,desc_producto,imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000008', 'Arroz', 'Arroz largo No se pasa', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\arrozMarolio.png', SINGLE_BLOB) AS imagen), 20, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Arroz'), 1);
-- Almacen > Arroz y legumbres > Arroz

-- Almacen > CALDOS, SOPAS, PURE
INSERT INTO productos
    (cod_barra, nom_producto,desc_producto,imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000009', 'Caldo de Pollo', 'Caldo de pollo en cubos', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\caldo.jpeg', SINGLE_BLOB) AS imagen), 22, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Caldos'), 1);
-- Almacen > Caldos, sopas, puré > Caldos

-- Almacen > Desayuno y Merienda
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('7791234560202', 'La Virginia Cafe Molido 500g', 'Café molido de 500g', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\laVirginiaCafe.jpeg', SINGLE_BLOB) AS imagen), 53, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Cafes'), 1),
    -- Almacen > Desayuno y merienda > Cafes
    ('7791234560219', 'Recetas de la Abuela 200g', 'Galletitas dulces de 200g', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\recetasAguelaGall.jpeg', SINGLE_BLOB) AS imagen), 17, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Galletitas dulces'), 1),
    -- Almacen > Desayuno y merienda > Galletitas dulces
    ('7791234560226', 'Bagley Galletitas Saladas 150g', 'Galletitas saladas de 150g', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\bagleySaladas.jpeg', SINGLE_BLOB) AS imagen), 18, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Galletitas saladas'), 1),
    -- Almacen > Desayuno y merienda > Galletitas saladas
    ('7791234560233', 'Sancor Leche en Polvo 400g', 'Leche en polvo de 400g', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\sancorPolvo.jpg', SINGLE_BLOB) AS imagen), 12, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Leches en polvo'), 1),
    -- Almacen > Desayuno y merienda > Leches en polvo
    ('7791234560240', 'Taragui Yerba Mate 1Kg', 'Yerba mate de 1Kg', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\taraguiiYerba.jpg', SINGLE_BLOB) AS imagen), 55, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Yerbas'), 1);
-- Almacen > Desayuno y merienda > Yerbas

-- Almacen > GOLOSINAS Y CHOCOLATES
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000011', 'Chocolate con Leche', 'Chocolate con leche y nueces', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\nestleChoc.png', SINGLE_BLOB) AS imagen), 90, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Chocolates con Leche'), 1);
-- Almacen > Golosinas y chocolates > Chocolates con leche

-- Almacen > HARINAS
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000012', 'Polenta', 'Polenta de harina de maiz', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\polenta.jpg', SINGLE_BLOB) AS imagen), 17, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Polentas'), 1);
-- Almacen > Harinas > Polentas

-- Almacen > PANIFICADOS
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000013', 'Pan Lactal', 'Pan de molde Artesano 500gr', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\panLactal.png', SINGLE_BLOB) AS imagen), 33, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Pan Lactal'), 1);
-- Almacen > Panificados > Pan Lactal

-- Almacen > PARA PREPARAR
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000014', 'Preparado para Tortas', 'Mezcla para tortas de vainilla', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\torta.png', SINGLE_BLOB) AS imagen), 17, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Bizcochuelos y tortas'), 1);
-- Almacen > Para preparar > Bizcochuelos y tortas

-- Almacen> PASTAS SECAS Y SALSAS
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000015', 'Fideos Espagueti', 'Fideos tipo espagueti largos', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\fideosKnorr.png', SINGLE_BLOB) AS imagen), 22, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Fideos largos'), 1);
-- Almacen > Pastas secas y salsas > Fideos largos

-- Almacen > SAL, PIMIENTAS Y ESPECIAS
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000016', 'Sal Fina', 'Sal fina para cocinar', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\salMarolio.png', SINGLE_BLOB) AS imagen), 20, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Sal'), 1);
-- Almacen > Sal, pimientas y especias > Sal

-- Almacen > SNACKS
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000017', 'Nachos ', 'Nachos crujientes', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\nachos.png', SINGLE_BLOB) AS imagen), 34, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Nachos'), 1);
-- Almacen > Snacks > Nachos

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Lacteos > DULCE DE LECHE
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000018', 'Dulce de Leche', 'Dulce de leche repostero', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\dulceLecheRep.jpeg', SINGLE_BLOB) AS imagen), 11, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Lacteos'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Repostero'), 1);
-- Lacteos > Dulce de leche > Repostero

-- Lacteos > LECHES
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000019', 'Leche Larga vida', 'Leche entera pasteurizada 1L', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\leche.png', SINGLE_BLOB) AS imagen), 11, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Lacteos'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Larga Vida'), 1);
-- Lacteos > Leches > Larga vida

-- Lacteos > CREMAS
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000020', 'Crema de Leche', 'Crema de leche batida frescas', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\cremaSancor.png', SINGLE_BLOB) AS imagen), 12, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Lacteos'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Frescas'), 1);
-- Lacteos > Cremas > Frescas

-- Lacteos > YOGURES
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000021', 'Yogur Natural', 'Yogur natural firme', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\yogurtActivia.jpeg', SINGLE_BLOB) AS imagen), 39, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Lacteos'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Firmes'), 1);
-- Lacteos > Yogures > Firmes

-- Lacteos > MANTECAS Y MARGARINAS
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000022', 'Manteca', 'Manteca sin sal 200gr', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\manteca.png', SINGLE_BLOB) AS imagen), 11, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Lacteos'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Manteca'), 1);
-- Lacteos > Mantecas y margarinas > Manteca

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Quesos y fiambres > QUESOS
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000023', 'Queso Finlandia Clasico', 'Queso para untar sabor original 300gr', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\finlandia.png', SINGLE_BLOB) AS imagen), 11, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Quesos y Fiambres'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Quesos untables'), 1);
-- Quesos y fiambres > Quesos > Quesos untables

-- Quesos y fiambres > FIAMBRES
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000024', 'Jamón Cocido', 'Jamón cocido en rodajas Paladini', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\jamonPala.png', SINGLE_BLOB) AS imagen), 31, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Quesos y Fiambres'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Jamon'), 1);
-- Quesos y fiambres > Fiambres > Jamon

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Carnes > CARNE VACUNA
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000025', 'Carne de Res', 'Carne de res cortada para asar', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\carneRes.jpg', SINGLE_BLOB) AS imagen), 42, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Carnes'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Carne de Res'), 1);
-- Carnes > Carne Vacuna > Carne de Res

-- Carnes > CARNE DE CERDO
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000026', 'Carne de Cerdo', 'Panceta de cerdo', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\carneCerdo.png', SINGLE_BLOB) AS imagen), 41, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Carnes'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Carne de Cerdo'), 1);
-- Carnes > Carne de Cerdo > Carne de Cerdo

-- Carnes > CARNE DE POLLO
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000027', 'Pollo Entero', 'Pollo fresco entero', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\pollo.png', SINGLE_BLOB) AS imagen), 41, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Carnes'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Carne de Pollo'), 1);
-- Carnes > Carne de Pollo > Carne de Pollo

-- Carnes > PESCADOS
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000028', 'Filete de Merluza', 'Merluza fresca', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\pescadoMeda.png', SINGLE_BLOB) AS imagen), 43, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Carnes'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Pescado'), 1);
-- Carnes > Pescados > Pescado

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Frutas y Verduras > FRUTAS
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000029', 'Manzanas', 'Manzanas empaquetadas', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\manzana.png', SINGLE_BLOB) AS imagen), 30, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Frutas y Verduras'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Frutas empaquetadas'), 1);
-- Frutas y Verduras > Frutas > Frutas empaquetadas

-- Frutas y Verduras > VERDURAS
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000030', 'Verduras', 'Ensaladas listas', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\ensalada.png', SINGLE_BLOB) AS imagen), 30, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Frutas y Verduras'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Ensaladas preparadas'), 1);
-- Frutas y Verduras > Verduras > Ensaladas preparadas

-- Frutas y Verduras > HUEVOS
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000031', 'Huevos', 'Docena de huevos blancos', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\huevos.png', SINGLE_BLOB) AS imagen), 30, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Frutas y Verduras'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Blancos'), 1);
-- Frutas y Verduras > Huevos > Blancos

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Congelados > FRUTAS CONGELADAS
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000032', 'Frutillas Congeladas', 'Frutillas frescas congeladas', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\frutillas.png', SINGLE_BLOB) AS imagen), 43, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Congelados'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Frutillas Congeladas'), 1);
-- Congelados > Frutas congeladas > Frutillas congeladas

-- Congelados > VERDURAS CONGELADAS
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000033', 'Verduras Mixtas Congeladas', 'Mezcla de verduras congeladas', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\verdurasCong.png', SINGLE_BLOB) AS imagen), 43, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Congelados'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Mix Verduras Congeladas'), 1);
-- Congelados > Verduras congeladas > Mix Verduras Congeladas

-- Congelados > PAPAS CONGELADAS
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000034', 'Papas Fritas', 'Papas fritas congeladas', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\papasFritas.png', SINGLE_BLOB) AS imagen), 43, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Congelados'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Papas fritas Congeladas'), 1);
-- Congelados > Papas congeladas > Papas fritas Congeladas

-- Congelados > HELADOS Y POSTRES
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000035', 'Helado de Chocolate', 'Helado de chocolate Tentacion 1L', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\heladoChoco.png', SINGLE_BLOB) AS imagen), 65, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Congelados'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Helado de crema'), 1);
-- Congelados > Helados y postres > Helado de crema

-- Congelados > CARNES Y POLLO
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000036', 'Asado de Tira', 'Corte de asado de tira', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\asado.png', SINGLE_BLOB) AS imagen), 42, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Congelados'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Asado congelado'), 1);
-- Congelados > Carnes y pollos > Asado congelado

-- Congelados > HAMBURGUESAS Y MILANESAS
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000037', 'Hamburguesa de Carne', 'Hamburguesa de carne vacuna', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\hamburguesaSwift.png', SINGLE_BLOB) AS imagen), 42, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Congelados'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Hamburguesas congeladas'), 1);
-- Congelados > Hamburguesas y milanesas > Hamburguesas congeladas

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Perfumeria > CUIDADO CAPILAR
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000038', 'Shampoo', 'Shampoo para cabello seco Detox Pantene', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\shampoo.png', SINGLE_BLOB) AS imagen), 49, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Perfumeria'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Shampoo'), 1);
-- Perfumeria > Cuidado capilar > Shampoo

-- Perfumeria > CUIDADO ORAL
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000039', 'Pasta Dental', 'Pasta dental blanqueadora', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\pastaDientes.png', SINGLE_BLOB) AS imagen), 48, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Perfumeria'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Pasta de dientes'), 1);
-- Perfumeria > Cuidado oral > Pasta de dientes

-- Perfumeria > CUIDADO PERSONAL
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000040', 'Desodorante Mujer', 'Desodorante en spray Original', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\desodorante.png', SINGLE_BLOB) AS imagen), 46, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Perfumeria'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Desodorantes'), 1);
-- Perfumeria > Cuidado personal > Desodorantes

-- Perfumeria > CUIDADO DE LA PIEL
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000041', 'Crema Hidratante', 'Crema hidratante para la piel', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\cremaDove.png', SINGLE_BLOB) AS imagen), 46, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Perfumeria'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Cremas corporales'), 1);
-- Perfumeria > Cuidado de la piel > Cremas corporales

-- Perfumeria > PROTECCION FEMENINA
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000042', 'Toallas Higiénicas', 'Toallas higiénicas ultra finas', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\toallitas.png', SINGLE_BLOB) AS imagen), 46, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Perfumeria'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Toallitas'), 1);
-- Perfumeria > Protección femenina > Toallitas

-- Perfumeria > PROTECCION PARA ADULTOS
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000043', 'Protección para Adultos', 'Protección para adultos desechables', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\panales.png', SINGLE_BLOB) AS imagen), 46, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Perfumeria'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Pañales adultos'), 1);
-- Perfumeria > Protección para adultos > Pañales adultos

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Limpieza > ACCESORIOS DE LIMPIEZA
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000044', 'Esponjas', 'Esponjas para limpieza verdes', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\esponja.png', SINGLE_BLOB) AS imagen), 100, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Limpieza'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Esponjas'), 1);
-- Limpieza > Accesorios de limpieza > Esponjas

-- Limpieza > CUIDADO DE ROPA 
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000045', 'Detergente Líquido', 'Detergente líquido para ropa 3L', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\detergenteAla.png', SINGLE_BLOB) AS imagen), 99, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Limpieza'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Jabon liquido'), 1);
-- Limpieza > Cuidado de ropa > Jabon liquido

-- Limpieza > LIMPIEZA DE COCINA
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000046', 'Desinfectante', 'Desinfectante de cocina', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\desinfectante.png', SINGLE_BLOB) AS imagen), 101, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Limpieza'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Desinfectante'), 1);
-- Limpieza > Limpieza de cocina > Desinfectante

-- Limpieza > Papeles
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto,imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('7791234560257', 'Rollo de cocina', 'Rollo de papel absorbente para cocina', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\rolloCocina.png', SINGLE_BLOB) AS imagen), 102, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Limpieza'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Rollos de cocina'), 1),
    -- Limpieza > Papel > Rollos de cocina
    ('7791234560264', 'Papel Higienico', 'Papel higiénico suave y absorbente', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\papelHigienico.jpg', SINGLE_BLOB) AS imagen), 103, (SELECT nro_tipo_producto
        FROM tipos_productos
        WHERE nom_tipo_producto = 'Limpieza'), (SELECT nro_categoria
        FROM categorias_productos
        WHERE nom_categoria = 'Papel higiénico'), 1);
-- Limpieza > Papel > Papel higiénico


/* -------------------------------------
   tabla: productos_supermercados
   ------------------------------------- */
/* Productos Supermercado Libertad */
-- SUCURSAL 1
INSERT INTO productos_supermercados
    (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
VALUES
    (1, 1, '7791234560011', 120.00, '2024-09-01 10:00:00'),
    -- Coca-Cola Original 500ml
    (1, 1, '7791234560028', 115.00, '2024-09-01 10:00:00'),
    -- Pepsi 500ml
    (1, 1, '7791234560035', 110.00, '2024-09-01 10:00:00'),
    -- Fanta Naranja 500ml
    (1, 1, '7791234560042', 130.00, '2024-09-01 10:00:00'),
    -- Schweppes Pomelo 500ml
    (1, 1, '7791234560059', 120.00, '2024-09-01 10:00:00'),
    -- Sprite Limon 500ml
    (1, 1, '7791234560066', 135.00, '2024-09-01 10:00:00'),
    -- Schweppes Tonica 500ml
    (1, 1, '7791234560073', 150.00, '2024-09-01 10:00:00'),
    -- Cepita Naranja 1L
    (1, 1, '7791234560080', 155.00, '2024-09-01 10:00:00'),
    -- Baggio Multifruta 1L
    (1, 1, '7791234560097', 160.00, '2024-09-01 10:00:00'),
    -- Baggio Durazno 1L
    (1, 1, '7791234560103', 165.00, '2024-09-01 10:00:00'),
    -- Cepita Multifruta 1L
    (1, 1, '7791234560110', 170.00, '2024-09-01 10:00:00'),
    -- Villa del Sur con Gas 500ml
    (1, 1, '7791234560127', 175.00, '2024-09-01 10:00:00'),
    -- Eco de los Andes sin Gas 1L
    (1, 1, '7791234560134', 180.00, '2024-09-01 10:00:00'),
    -- Bon Aqua Pomelo saborizada 1L
    (1, 1, '7791234560141', 185.00, '2024-09-01 10:00:00'),
    -- Bon Aqua Pera saborizada 1L
    (1, 1, '7791234560158', 190.00, '2024-09-01 10:00:00'),
    -- Bon Aqua Manzana saborizada 1L
    (1, 1, '000000000004', 110.00, '2024-09-01 10:00:00'),
    -- Cerveza Quilmes 1L
    (1, 1, '000000000005', 200.00, '2024-09-01 10:00:00'),
    -- Aceite de Oliva
    (1, 1, '000000000006', 90.00, '2024-09-01 10:00:00'),
    -- Aceitunas Verdes
    (1, 1, '7791234560165', 100.00, '2024-09-01 10:00:00'),
    -- Hellmanns Mayonesa 500g
    (1, 1, '7791234560172', 105.00, '2024-09-01 10:00:00'),
    -- Danica Ketchup 300g
    (1, 1, '7791234560189', 110.00, '2024-09-01 10:00:00'),
    -- Mostaza Natura 250g
    (1, 1, '7791234560196', 115.00, '2024-09-01 10:00:00'),
    -- Salsa Golf Hellmanns 350g
    (1, 1, '000000000008', 130.00, '2024-09-01 10:00:00'),
    -- Arroz largo No se pasa
    (1, 1, '000000000009', 85.00, '2024-09-01 10:00:00'),
    -- Caldo de Pollo
    (1, 1, '7791234560202', 145.00, '2024-09-01 10:00:00'),
    -- La Virginia Cafe Molido 500g
    (1, 1, '7791234560219', 150.00, '2024-09-01 10:00:00'),
    -- Recetas de la Abuela 200g
    (1, 1, '7791234560226', 155.00, '2024-09-01 10:00:00'),
    -- Bagley Galletitas Saladas 150g
    (1, 1, '7791234560233', 160.00, '2024-09-01 10:00:00'),
    -- Sancor Leche en Polvo 400g
    (1, 1, '7791234560240', 165.00, '2024-09-01 10:00:00'),
    -- Taragui Yerba Mate 1Kg
    (1, 1, '000000000011', 70.00, '2024-09-01 10:00:00'),
    -- Chocolate con Leche
    (1, 1, '000000000012', 75.00, '2024-09-01 10:00:00'),
    -- Polenta
    (1, 1, '000000000013', 80.00, '2024-09-01 10:00:00'),
    -- Pan Lactal
    (1, 1, '000000000014', 85.00, '2024-09-01 10:00:00'),
    -- Preparado para Tortas
    (1, 1, '000000000015', 90.00, '2024-09-01 10:00:00'),
    -- Fideos Espagueti
    (1, 1, '000000000016', 95.00, '2024-09-01 10:00:00'),
    -- Sal Fina
    (1, 1, '000000000017', 100.00, '2024-09-01 10:00:00'),
    -- Nachos
    (1, 1, '000000000018', 105.00, '2024-09-01 10:00:00'),
    -- Dulce de Leche
    (1, 1, '000000000019', 120.50, '2024-10-06'),
    -- Leche Larga Vida
    (1, 1, '000000000020', 200.75, '2024-10-06'),
    -- Crema de Leche
    (1, 1, '000000000021', 85.90, '2024-10-06'),
    -- Yogur Natural
    (1, 1, '000000000022', 250.00, '2024-10-06'),
    -- Manteca
    (1, 1, '000000000023', 350.50, '2024-10-06'),
    -- Queso Finlandia Clasico
    (1, 1, '000000000024', 450.75, '2024-10-06'),
    -- Jamón Cocido
    (1, 1, '000000000025', 1200.00, '2024-10-06'),
    -- Carne de Res
    (1, 1, '000000000026', 850.50, '2024-10-06'),
    -- Carne de Cerdo
    (1, 1, '000000000027', 720.25, '2024-10-06'),
    -- Pollo Entero
    (1, 1, '000000000028', 650.00, '2024-10-06'),
    -- Filete de Merluza
    (1, 1, '000000000029', 180.90, '2024-10-06'),
    -- Manzanas
    (1, 1, '000000000030', 250.30, '2024-10-06'),
    -- Verduras
    (1, 1, '000000000031', 350.00, '2024-10-06'),
    -- Huevos
    (1, 1, '000000000032', 550.90, '2024-10-06'),
    -- Frutillas Congeladas
    (1, 1, '000000000033', 400.70, '2024-10-06'),
    -- Verduras Mixtas Congeladas
    (1, 1, '000000000034', 450.00, '2024-10-06'),
    -- Papas Fritas
    (1, 1, '000000000035', 500.50, '2024-10-06'),
    -- Helado de Chocolate
    (1, 1, '000000000036', 1100.00, '2024-10-06'),
    -- Asado de Tira
    (1, 1, '000000000037', 750.50, '2024-10-06'),
    -- Hamburguesa de Carne
    (1, 1, '000000000038', 320.25, '2024-10-06'),
    -- Shampoo
    (1, 1, '000000000039', 150.75, '2024-10-06'),
    -- Pasta Dental
    (1, 1, '000000000040', 210.30, '2024-10-06'),
    -- Desodorante Mujer
    (1, 1, '000000000041', 600.40, '2024-10-06'),
    -- Crema Hidratante
    (1, 1, '000000000042', 300.80, '2024-10-06'),
    -- Toallas Higiénicas
    (1, 1, '000000000043', 550.60, '2024-10-06'),
    -- Protección para Adultos
    (1, 1, '000000000044', 70.50, '2024-10-06'),
    -- Esponjas
    (1, 1, '000000000045', 180.25, '2024-10-06'),
    -- Detergente Líquido
    (1, 1, '000000000046', 230.70, '2024-10-06');
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
    (1, 'es', 'Gaseosas'),
    (2, 'es', 'Jugos'),
    (3, 'es', 'Aguas'),
    (4, 'es', 'Cervezas'),
    (5, 'es', 'Aceites y Vinagre'),
    (6, 'es', 'Aceitunas y Encurtidos'),
    (7, 'es', 'Aderezos'),
    (8, 'es', 'Arroz y Legumbres'),
    (9, 'es', 'Caldos, Sopas, Puré'),
    (10, 'es', 'Desayuno y Merienda'),
    (11, 'es', 'Golosinas y Chocolates'),
    (12, 'es', 'Harinas'),
    (13, 'es', 'Panificados'),
    (14, 'es', 'Para Preparar'),
    (15, 'es', 'Pastas Secas y Salsas'),
    (16, 'es', 'Sal, Pimientas y Especias'),
    (17, 'es', 'Snacks'),
    (18, 'es', 'Dulce de Leche'),
    (19, 'es', 'Leches'),
    (20, 'es', 'Cremas'),
    (21, 'es', 'Yogures'),
    (22, 'es', 'Mantequillas y Margarinas'),
    (23, 'es', 'Quesos'),
    (24, 'es', 'Fiambres'),
    (25, 'es', 'Carne Vacuna'),
    (26, 'es', 'Carne de Cerdo'),
    (27, 'es', 'Carne de Pollo'),
    (28, 'es', 'Pescados'),
    (29, 'es', 'Frutas'),
    (30, 'es', 'Verduras'),
    (31, 'es', 'Huevos'),
    (32, 'es', 'Frutas Congeladas'),
    (33, 'es', 'Verduras Congeladas'),
    (34, 'es', 'Papas Congeladas'),
    (35, 'es', 'Helados y Postres'),
    (36, 'es', 'Carnes y Pollo'),
    (37, 'es', 'Hamburguesas y Milanesas'),
    (38, 'es', 'Cuidado Capilar'),
    (39, 'es', 'Cuidado Oral'),
    (40, 'es', 'Cuidado Personal'),
    (41, 'es', 'Cuidado de la Piel'),
    (42, 'es', 'Protección Femenina'),
    (43, 'es', 'Protección para Adultos'),
    (44, 'es', 'Accesorios de Limpieza'),
    (45, 'es', 'Cuidado de Ropa'),
    (46, 'es', 'Limpieza de Cocina'),
    (47, 'es', 'Papeles');

-- Idioma Inglés
insert into idiomas_rubros_productos
    (nro_rubro, cod_idioma, rubro)
values
    (1, 'en', 'Soft Drinks'),
    (2, 'en', 'Juices'),
    (3, 'en', 'Waters'),
    (4, 'en', 'Beers'),
    (5, 'en', 'Oils and Vinegar'),
    (6, 'en', 'Olives and Pickles'),
    (7, 'en', 'Dressings'),
    (8, 'en', 'Rice and Legumes'),
    (9, 'en', 'Broths, Soups, Puree'),
    (10, 'en', 'Breakfast and Snack'),
    (11, 'en', 'Sweets and Chocolates'),
    (12, 'en', 'Flours'),
    (13, 'en', 'Bakery'),
    (14, 'en', 'To Prepare'),
    (15, 'en', 'Dry Pasta and Sauces'),
    (16, 'en', 'Salt, Peppers and Spices'),
    (17, 'en', 'Snacks'),
    (18, 'en', 'Dulce de Leche'),
    (19, 'en', 'Milks'),
    (20, 'en', 'Creams'),
    (21, 'en', 'Yogurts'),
    (22, 'en', 'Butters and Margarines'),
    (23, 'en', 'Cheeses'),
    (24, 'en', 'Cold Cuts'),
    (25, 'en', 'Beef'),
    (26, 'en', 'Pork'),
    (27, 'en', 'Chicken'),
    (28, 'en', 'Fish'),
    (29, 'en', 'Fruits'),
    (30, 'en', 'Vegetables'),
    (31, 'en', 'Eggs'),
    (32, 'en', 'Frozen Fruits'),
    (33, 'en', 'Frozen Vegetables'),
    (34, 'en', 'Frozen Potatoes'),
    (35, 'en', 'Ice Creams and Desserts'),
    (36, 'en', 'Meats and Chicken'),
    (37, 'en', 'Burgers and Milanese'),
    (38, 'en', 'Hair Care'),
    (39, 'en', 'Oral Care'),
    (40, 'en', 'Personal Care'),
    (41, 'en', 'Skin Care'),
    (42, 'en', 'Feminine Protection'),
    (43, 'en', 'Adult Protection'),
    (44, 'en', 'Cleaning Accessories'),
    (45, 'en', 'Clothing Care'),
    (46, 'en', 'Kitchen Cleaning'),
    (47, 'en', 'Papers');

/* -------------------------------------
   tabla: idiomas_categorias_productos
   ------------------------------------- */
-- Idioma Español
insert into idiomas_categorias_productos
    (nro_categoria, cod_idioma, categoria)
VALUES
    (1, 'es', 'Cola'),
    (2, 'es', 'Limón'),
    (3, 'es', 'Naranja'),
    (4, 'es', 'Pomelo'),
    (5, 'es', 'Tónica'),
    (6, 'es', 'Listos para tomar'),
    (7, 'es', 'Concentrados'),
    (8, 'es', 'En polvo'),
    (9, 'es', 'Frescos'),
    (10, 'es', 'Agua con gas'),
    (11, 'es', 'Agua sin gas'),
    (12, 'es', 'Agua saborizada'),
    (13, 'es', 'Roja'),
    (14, 'es', 'Aceite de Oliva'),
    (15, 'es', 'Aceitunas Verde'),
    (16, 'es', 'Mayonesas'),
    (17, 'es', 'Ketchup'),
    (18, 'es', 'Mostazas'),
    (19, 'es', 'Salsa golf'),
    (20, 'es', 'Arroz'),
    (21, 'es', 'Caldos'),
    (22, 'es', 'Azúcar y edulcorante'),
    (23, 'es', 'Bizcochuelos, budines y magdalenas'),
    (24, 'es', 'Cafes'),
    (25, 'es', 'Cereales'),
    (26, 'es', 'Galletitas dulces'),
    (27, 'es', 'Galletitas saladas'),
    (28, 'es', 'Leches en polvo'),
    (29, 'es', 'Mermeladas y dulce'),
    (30, 'es', 'Tes'),
    (31, 'es', 'Yerbas'),
    (32, 'es', 'Cacaos'),
    (33, 'es', 'Chocolate con Leche'),
    (34, 'es', 'Polentas'),
    (35, 'es', 'Pan Lactal'),
    (36, 'es', 'Bizcochuelos y tortas'),
    (37, 'es', 'Fideos Largos'),
    (38, 'es', 'Sal'),
    (39, 'es', 'Nachos'),
    (40, 'es', 'Repostero'),
    (41, 'es', 'Larga Vida'),
    (42, 'es', 'Frescas'),
    (43, 'es', 'Firme'),
    (44, 'es', 'Manteca'),
    (45, 'es', 'Queso Untable'),
    (46, 'es', 'Jamon'),
    (47, 'es', 'Carne de Res'),
    (48, 'es', 'Carne de Cerdo'),
    (49, 'es', 'Carne de Pollo'),
    (50, 'es', 'Pescado'),
    (51, 'es', 'Manzanas'),
    (52, 'es', 'Ensaladas preparadas'),
    (53, 'es', 'Blancos'),
    (54, 'es', 'Frutillas Congeladas'),
    (55, 'es', 'Mix Verduras Congeladas'),
    (56, 'es', 'Papas fritas Congeladas'),
    (57, 'es', 'Helado de crema'),
    (58, 'es', 'Asado congelado'),
    (59, 'es', 'Hamburguesas congeladas'),
    (60, 'es', 'Shampoo'),
    (61, 'es', 'Pasta de dientes'),
    (62, 'es', 'Desodorante mujer'),
    (63, 'es', 'Crema corporal'),
    (64, 'es', 'Toallitas'),
    (65, 'es', 'Pañales adultos'),
    (66, 'es', 'Esponjas'),
    (67, 'es', 'Jabon liquido'),
    (68, 'es', 'Desinfectante'),
    (69, 'es', 'Pañuelos'),
    (70, 'es', 'Papel higiénico'),
    (71, 'es', 'Rollos de cocina');

-- Idioma Inglés
insert into idiomas_categorias_productos
    (nro_categoria, cod_idioma, categoria)
VALUES
    (1, 'en', 'Cola'),
    (2, 'en', 'Lemon'),
    (3, 'en', 'Orange'),
    (4, 'en', 'Grapefruit'),
    (5, 'en', 'Tonic'),
    (6, 'en', 'Ready to drink'),
    (7, 'en', 'Concentrated'),
    (8, 'en', 'Powdered'),
    (9, 'en', 'Fresh'),
    (10, 'en', 'Sparkling water'),
    (11, 'en', 'Still water'),
    (12, 'en', 'Flavored water'),
    (13, 'en', 'Red'),
    (14, 'en', 'Olive Oil'),
    (15, 'en', 'Green Olives'),
    (16, 'en', 'Mayonnaise'),
    (17, 'en', 'Ketchup'),
    (18, 'en', 'Mustards'),
    (19, 'en', 'Golf Sauce'),
    (20, 'en', 'Rice'),
    (21, 'en', 'Broths'),
    (22, 'en', 'Sugar and sweetener'),
    (23, 'en', 'Sponges, puddings and muffins'),
    (24, 'en', 'Coffees'),
    (25, 'en', 'Cereals'),
    (26, 'en', 'Sweet cookies'),
    (27, 'en', 'Salty cookies'),
    (28, 'en', 'Powdered milks'),
    (29, 'en', 'Jams and sweet'),
    (30, 'en', 'Teas'),
    (31, 'en', 'Herbs'),
    (32, 'en', 'Cacaos'),
    (33, 'en', 'Chocolate with Milk'),
    (34, 'en', 'Polentas'),
    (35, 'en', 'Lactal Bread'),
    (36, 'en', 'Sponges, puddings and muffins'),
    (37, 'en', 'Long Noodles'),
    (38, 'en', 'Salt'),
    (39, 'en', 'Nachos'),
    (40, 'en', 'Baker'),
    (41, 'en', 'Long Life'),
    (42, 'en', 'Fresh'),
    (43, 'en', 'Firm'),
    (44, 'en', 'Butter'),
    (45, 'en', 'Spreadable Cheese'),
    (46, 'en', 'Ham'),
    (47, 'en', 'Beef'),
    (48, 'en', 'Pork'),
    (49, 'en', 'Chicken'),
    (50, 'en', 'Fish'),
    (51, 'en', 'Apples'),
    (52, 'en', 'Prepared salads'),
    (53, 'en', 'Whites'),
    (54, 'en', 'Frozen Strawberries'),
    (55, 'en', 'Frozen Mixed Vegetables'),
    (56, 'en', 'Frozen French Fries'),
    (57, 'en', 'Cream ice cream'),
    (58, 'en', 'Frozen Roast'),
    (59, 'en', 'Frozen Hamburgers'),
    (60, 'en', 'Shampoo'),
    (61, 'en', 'Toothpaste'),
    (62, 'en', 'Women Deodorant'),
    (63, 'en', 'Body cream'),
    (64, 'en', 'Wipes'),
    (65, 'en', 'Adult diapers'),
    (66, 'en', 'Sponges'),
    (67, 'en', 'Liquid soap'),
    (68, 'en', 'Disinfectant'),
    (69, 'en', 'Handkerchiefs'),
    (70, 'en', 'Toilet paper'),
    (71, 'en', 'Kitchen rolls');

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
    (9, 'es', 'Limpieza');

-- Idioma Inglés
insert into idiomas_tipos_productos
    (nro_tipo_producto, cod_idioma, tipo_producto)
values
    (1, 'en', 'Drinks'),
    (2, 'en', 'Warehouse'),
    (3, 'en', 'Dairies'),
    (4, 'en', 'Cheeses and Cold Cuts'),
    (5, 'en', 'Meats'),
    (6, 'en', 'Fruits and Vegetables'),
    (7, 'en', 'Frozen'),
    (8, 'en', 'Perfumery'),
    (9, 'en', 'Cleaning');


/* ------------------------------- */
/* Tabla: servicios_supermercados */
/* ------------------------------- */

INSERT INTO servicios_supermercados
    (nro_supermercado, url_servicio, tipo_servicio, token_servicio, fecha_ult_act_servicio)
VALUES
    (1010, 'http://localhost:8080/api/supermarkets/sucursales', 'Rest', 'TOKEN12345', GETDATE()),
    (1011, 'http://localhost:8081/services/supermercados.wsdl', 'WS', 'TOKEN67890', GETDATE());
