
/* -------------------------------------
   Tabla: paises
   ------------------------------------- */
insert into dbo.paises
    (cod_pais, nom_pais, local)
values
    (1, 'Argentina', 'Latinoamérica');

/* -------------------------------------
   Tabla: provincias
   ------------------------------------- */
insert into dbo.provincias
    (cod_pais, cod_provincia, nom_provincia)
values
    (1, 1, 'Buenos Aires'),
    (1, 2, 'Córdoba'),
    (1, 3, 'Santa Fe');
-- SELECT * FROM dbo.provincias;
-- SELECT * FROM dbo.localidades;
/* -------------------------------------
   Tabla: localidades
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
   Tabla: rubros_productos
   ------------------------------------- */
insert into dbo.rubros_productos
    (nro_rubro,nom_rubro, vigente)
values
    (1, 'GASEOSAS', 1),
    (2, 'JUGOS', 1),
    (3, 'AGUAS', 1),
    (4, 'CERVEZAS', 1),
    (5, 'ACEITES Y VINAGRE', 1),
    (6, 'ACEITUNAS Y ENCURTIDOS', 1),
    (7, 'ADEREZOS', 1),
    (8, 'ARROZ Y LEGUMBRES', 1),
    (9, 'CALDOS, SOPAS, PURE', 1),
    (10, 'DESAYUNO Y MERIENDA', 1),
    (11, 'GOLOSINAS Y CHOCOLATES', 1),
    (12, 'HARINAS', 1),
    (13, 'PANIFICADOS', 1),
    (14, 'PARA PREPARAR', 1),
    (15, 'PASTAS SECAS Y SALSAS', 1),
    (16, 'SAL, PIMIENTAS Y ESPECIAS', 1),
    (17, 'SNACKS', 1),
    (18, 'DULCE DE LECHE', 1),
    (19, 'LECHES', 1),
    (20, 'CREMAS', 1),
    (21, 'YOGURES', 1),
    (22, 'MANTECAS Y MARGARINAS', 1),
    (23, 'QUESOS', 1),
    (24, 'FIAMBRES', 1),
    (25, 'CARNE VACUNA', 1),
    (26, 'CARNE DE CERDO', 1),
    (27, 'CARNE DE POLLO', 1),
    (28, 'PESCADOS', 1),
    (29, 'FRUTAS', 1),
    (30, 'VERDURAS', 1),
    (31, 'HUEVOS', 1),
    (32, 'FRUTAS CONGELADAS', 1),
    (33, 'VERDURAS CONGELADAS', 1),
    (34, 'PAPAS CONGELADAS', 1),
    (35, 'HELADOS Y POSTRES', 1),
    (36, 'CARNES Y POLLO', 1),
    (37, 'HAMBURGUESAS Y MILANESAS', 1),
    (38, 'CUIDADO CAPILAR', 1),
    (39, 'CUIDADO ORAL', 1),
    (40, 'CUIDADO PERSONAL', 1),
    (41, 'CUIDADO DE LA PIEL ', 1),
    (42, 'PROTECCION FEMENINA', 1),
    (43, 'PROTECCION PARA ADULTOS ', 1),
    (44, 'ACCESORIOS DE LIMPIEZA', 1),
    (45, 'CUIDADO DE ROPA', 1),
    (46, 'LIMPIEZA DE COCINA ', 1),
    (47, 'PAPELES', 1);

/* -------------------------------------
   Tabla: categorias_productos
   ------------------------------------- */
-- Rubro: GASEOSAS (nro_rubro = 1)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    (1, 'Cola', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'GASEOSAS'), 1),
    (2, 'Limón', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'GASEOSAS'), 1),
    (3, 'Naranja', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'GASEOSAS'), 1),
    (4, 'Pomelo', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'GASEOSAS'), 1),
    (5, 'Tónica', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'GASEOSAS'), 1);
-- SELECT * FROM sucursales
-- Rubro: JUGOS (nro_rubro = 2)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    (6, 'Listos para tomar', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'JUGOS'), 1),
    (7, 'Concentrados', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'JUGOS'), 1),
    (8, 'En polvo', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'JUGOS'), 1),
    (9, 'Frescos', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'JUGOS'), 1);

-- Rubro: AGUAS (nro_rubro = 3)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    (10, 'Agua con gas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'AGUAS'), 1),
    (11, 'Agua sin gas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'AGUAS'), 1),
    (12, 'Agua saborizada', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'AGUAS'), 1);

-- Rubro: CERVEZA (nro_rubro = 4)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    (13, 'Roja', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CERVEZAS'), 1),
    (14, 'Rubia', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CERVEZAS'), 1),
    (15, 'Negra', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CERVEZAS'), 1),
    (16, 'Ipa', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CERVEZAS'), 1),
    (17, 'Sin alcohol', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CERVEZAS'), 1);

-- Rubro: ACEITES Y VINAGRES (nro_rubro = 5)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Aceite en aerosol', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ACEITES Y VINAGRE'), 1),
    ('Aceite de girasol', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ACEITES Y VINAGRE'), 1),
    ('Aceite de maiz', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ACEITES Y VINAGRE'), 1),
    ('Aceite de oliva', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ACEITES Y VINAGRE'), 1),
    ('Aceite mezcla', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ACEITES Y VINAGRE'), 1),
    ('Jugo de limon', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ACEITES Y VINAGRE'), 1),
    ('Vinagres', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ACEITES Y VINAGRE'), 1);

-- Rubro: Aceituna y Encurtidos (nro_rubro = 6)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Aceitunas verde', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ACEITUNAS Y ENCURTIDOS'), 1),
    ('Aceitunas negras', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ACEITUNAS Y ENCURTIDOS'), 1),
    ('Encurtidos', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ACEITUNAS Y ENCURTIDOS'), 1);

-- Rubro: ADEREZOS (nro_rubro = 7)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Mayonesas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ADEREZOS'), 1),
    ('Ketchup', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ADEREZOS'), 1),
    ('Mostazas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ADEREZOS'), 1),
    ('Salsa golf', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ADEREZOS'), 1);

-- Rubro: Arroz (nro_rubro = 8)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Arroz', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ARROZ Y LEGUMBRES'), 1),
    ('Legumbres', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ARROZ Y LEGUMBRES'), 1);

-- Rubro: caldos sopas pure (nro_rubro = 9)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Caldos', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CALDOS, SOPAS, PURE'), 1),
    ('Sopa', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CALDOS, SOPAS, PURE'), 1),
    ('Pure', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CALDOS, SOPAS, PURE'), 1);

-- Rubro: DESAYUNO Y MERIENDA (nro_rubro = 10)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Azúcar y edulcorante', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1),
    ('Bizcochuelos, budines y magdalenas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1),
    ('Cafes', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1),
    ('Cereales', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1),
    ('Galletitas dulces', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1),
    ('Galletitas saladas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1),
    ('Leches en polvo', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1),
    ('Mermeladas y dulce', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1),
    ('Tes', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1),
    ('Yerbas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1),
    ('Cacaos', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'DESAYUNO Y MERIENDA'), 1);

-- Rubro: golosinas y chocolates (nro_rubro = 11)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Alfajores', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'GOLOSINAS Y CHOCOLATES'), 1),
    ('Bombones', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'GOLOSINAS Y CHOCOLATES'), 1),
    ('Caramelos y chicles', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'GOLOSINAS Y CHOCOLATES'), 1),
    ('Chocolates con Leche', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'GOLOSINAS Y CHOCOLATES'), 1),
    ('Turrones', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'GOLOSINAS Y CHOCOLATES'), 1);

-- Rubro: harinas (nro_rubro = 12)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Harinas comunes y leudantes', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'HARINAS'), 1),
    ('Polentas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'HARINAS'), 1),
    ('Avenas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'HARINAS'), 1);

-- Rubro: panificados (nro_rubro = 13)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Pan Lactal', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PANIFICADOS'), 1),
    ('Pan para hamburguesas y panchos', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PANIFICADOS'), 1),
    ('Tostadas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PANIFICADOS'), 1),
    ('Pan rallado', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PANIFICADOS'), 1);

-- Rubro: para preparar (nro_rubro = 14)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Bizcochuelos y tortas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PARA PREPARAR'), 1),
    ('Flanes', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PARA PREPARAR'), 1),
    ('Gelatinas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PARA PREPARAR'), 1),
    ('Helados', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PARA PREPARAR'), 1),
    ('Postres', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PARA PREPARAR'), 1);

-- Rubro: pastas secas y salsas (nro_rubro = 15)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Fideos largos', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PASTAS SECAS Y SALSAS'), 1),
    ('Fideos guiseros', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PASTAS SECAS Y SALSAS'), 1),
    ('Fideos para sopa', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PASTAS SECAS Y SALSAS'), 1),
    ('Pastas listas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PASTAS SECAS Y SALSAS'), 1),
    ('Salsas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PASTAS SECAS Y SALSAS'), 1),
    ('Pastas rellenas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PASTAS SECAS Y SALSAS'), 1);

-- Rubro: SAL, PIMIENTA, ESPECIAS (nro_rubro = 16)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Sal', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'SAL, PIMIENTAS Y ESPECIAS'), 1),
    ('Hierbas y especias', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'SAL, PIMIENTAS Y ESPECIAS'), 1),
    ('Pimienta', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'SAL, PIMIENTAS Y ESPECIAS'), 1);

-- Rubro: SNACKS (nro_rubro = 17)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Frutas secas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'SNACKS'), 1),
    ('Mani', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'SNACKS'), 1),
    ('Nachos', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'SNACKS'), 1),
    ('Papas fritas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'SNACKS'), 1),
    ('Pochoclos', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'SNACKS'), 1),
    ('Mix', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'SNACKS'), 1);

-- Rubro: DULCE DE LECHE (nro_rubro = 18)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Tradicional', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'DULCE DE LECHE'), 1),
    ('Repostero', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'DULCE DE LECHE'), 1);

-- Rubro: LECHES (nro_rubro = 19)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Larga Vida', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'LECHES'), 1),
    ('Vegetal', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'LECHES'), 1);

-- Rubro: CREMAS (nro_rubro = 20)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Larga Duracion', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CREMAS'), 1),
    ('Frescas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CREMAS'), 1);

-- Rubro: YOGURES (nro_rubro = 21)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Firmes', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'YOGURES'), 1),
    ('Bebibles', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'YOGURES'), 1);

-- Rubro: MANTECAS Y MARGARINAS (nro_rubro = 22)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Manteca', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'MANTECAS Y MARGARINAS'), 1),
    ('Margarina', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'MANTECAS Y MARGARINAS'), 1);

-- Rubro: QUESOS (nro_rubro = 23)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Quesos blandos', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'QUESOS'), 1),
    ('Quesos semiduros', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'QUESOS'), 1),
    ('Quesos duros', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'QUESOS'), 1),
    ('Quesos untables', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'QUESOS'), 1);

-- Rubro: FIAMBRES (nro_rubro = 24)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Jamon', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'FIAMBRES'), 1),
    ('Salame', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'FIAMBRES'), 1),
    ('Salchichas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'FIAMBRES'), 1);

-- Rubro: CARNE VACUNA (nro_rubro = 25)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Carne de Res', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CARNE VACUNA'), 1);

-- Rubro: CARNE CERDO (nro_rubro = 26)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Carne de Cerdo', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CARNE DE CERDO'), 1);

-- Rubro: CARNE POLLO (nro_rubro = 27)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Carne de Pollo', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CARNE DE POLLO'), 1);

-- Rubro: PESCADO (nro_rubro = 28)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Pescado', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PESCADOS'), 1);

-- Rubro: FRUTA (nro_rubro = 29)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Frutas sueltas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'FRUTAS'), 1),
    ('Frutas empaquetadas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'FRUTAS'), 1);

-- Rubro: VERDURA (nro_rubro = 30)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Verduras sueltas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'VERDURAS'), 1),
    ('Verduras empaquetadas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'VERDURAS'), 1),
    ('Ensaladas preparadas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'VERDURAS'), 1);

-- Rubro: HUEVOS (nro_rubro = 31)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Blancos', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'HUEVOS'), 1),
    ('De codorniz', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'HUEVOS'), 1);

-- Rubro: FRUTAS CONGELADAS (nro_rubro = 32)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Frutillas Congeladas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'FRUTAS CONGELADAS'), 1);

-- Rubro: VERDURAS CONGELADAS (nro_rubro = 33)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Mix Verduras Congeladas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'VERDURAS CONGELADAS'), 1);

-- Rubro: PAPAS CONGELADAS (nro_rubro = 34)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Papas fritas Congeladas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PAPAS CONGELADAS'), 1);

-- Rubro: HELADOS Y POSTRES (nro_rubro = 35)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Helado de crema', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'HELADOS Y POSTRES'), 1);

-- Rubro: CARNES Y POLLO (nro_rubro = 36)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Asado congelado', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CARNES Y POLLO'), 1);

-- Rubro: HAMBURGUESAS Y MILANESAS (nro_rubro = 37)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Hamburguesas congeladas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'HAMBURGUESAS Y MILANESAS'), 1);

-- Rubro: CUIDADO CAPILAR (nro_rubro = 38)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Coloracion', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CUIDADO CAPILAR'), 1),
    ('Shampoo', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CUIDADO CAPILAR'), 1),
    ('Acondicionador', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CUIDADO CAPILAR'), 1),
    ('Tratamientos capilares', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CUIDADO CAPILAR'), 1);

-- Rubro: CUIDADO ORAL (nro_rubro = 39)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Pasta de dientes', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CUIDADO ORAL'), 1),
    ('Cepillos de dientes', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CUIDADO ORAL'), 1),
    ('Enjuagues bucales', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CUIDADO ORAL'), 1);

-- Rubro: CUIDADO PERSONAL (nro_rubro = 40)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Cepillos y esponjas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CUIDADO PERSONAL'), 1),
    ('Depilacion', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CUIDADO PERSONAL'), 1),
    ('Desodorantes', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CUIDADO PERSONAL'), 1),
    ('Talcos', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CUIDADO PERSONAL'), 1),
    ('Jabones', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CUIDADO PERSONAL'), 1);

-- Rubro: CUIDADO DE LA PIEL (nro_rubro = 41)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Cremas corporales', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CUIDADO DE LA PIEL '), 1),
    ('Cremas desmaquillantes', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CUIDADO DE LA PIEL '), 1),
    ('Cremas faciales', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CUIDADO DE LA PIEL '), 1),
    ('Solares y postsolares', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CUIDADO DE LA PIEL '), 1);

-- Rubro: PROTECCION FEMENINA (nro_rubro = 42)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Protectores diarios', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PROTECCION FEMENINA'), 1),
    ('Toallitas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PROTECCION FEMENINA'), 1),
    ('Tampones', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PROTECCION FEMENINA'), 1);

-- Rubro: PROTECCION PARA ADULTOS (nro_rubro = 43)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Pañales adultos', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PROTECCION PARA ADULTOS '), 1),
    ('Toallitas humedas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PROTECCION PARA ADULTOS '), 1);

-- Rubro: ACCESORIOS DE LIMPIEZA (nro_rubro = 44)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Baldes y mopas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ACCESORIOS DE LIMPIEZA'), 1),
    ('Bolsas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ACCESORIOS DE LIMPIEZA'), 1),
    ('Escobas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ACCESORIOS DE LIMPIEZA'), 1),
    ('Esponjas', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ACCESORIOS DE LIMPIEZA'), 1),
    ('Plumeros', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ACCESORIOS DE LIMPIEZA'), 1),
    ('Palos', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ACCESORIOS DE LIMPIEZA'), 1),
    ('Secadores y trapos', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'ACCESORIOS DE LIMPIEZA'), 1);

-- Rubro: CUIDADO ROPA (nro_rubro = 45)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Jabon en polvo', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CUIDADO DE ROPA'), 1),
    ('Jabon en pan', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CUIDADO DE ROPA'), 1),
    ('Jabon liquido', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CUIDADO DE ROPA'), 1),
    ('Perfumantes', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CUIDADO DE ROPA'), 1),
    ('Suavizantes', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'CUIDADO DE ROPA'), 1);

-- Rubro: LIMPIEZA COCINA (nro_rubro = 46)
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Detergentes', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'LIMPIEZA DE COCINA '), 1),
    ('Fosforos', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'LIMPIEZA DE COCINA '), 1),
    ('Desinfectante', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'LIMPIEZA DE COCINA '), 1),
    ('Limpiadores de piso', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'LIMPIEZA DE COCINA '), 1);

-- Rubro: PAPELERÍA (nro_rubro = 47) 
insert into dbo.categorias_productos
    (nro_categoria,nom_categoria, nro_rubro, vigente)
values
    ('Pañuelos', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PAPELES'), 1),
    ('Papel higiénico', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PAPELES'), 1),
    ('Rollos de cocina', (SELECT nro_rubro
        FROM dbo.rubros_productos
        WHERE nom_rubro = 'PAPELES'), 1);


/* -------------------------------------
   Tabla: marcas_productos
   ------------------------------------- */
insert into dbo.marcas_productos
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

/* -------------------------------------
   Tabla: tipos_productos
   ------------------------------------- */
insert into dbo.tipos_productos
    (nom_tipo_producto)
values
    ('Bebidas'),
    ('Almacen'),
    ('Lácteos'),
    ('Quesos y Fiambres'),
    ('Carnes'),
    ('Frutas y Verduras'),
    ('Congelados'),
    ('Perfumeria'),
    ('Limpieza');

/* -------------------------------------
   Tabla: tipos_productos_marcas
   MARCA ASOCIO A QUE TIPO DE PRODUCTO VA
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
   Tabla: productos
   ------------------------------------- */
-- Bebidas > Gaseosas
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('7791234560011', 'Coca-Cola Original 500ml', 'Bebida gaseosa sabor cola 500ml', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\coca500.jpg', SINGLE_BLOB) AS imagen), 1, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Cola'), 1),
    -- Bebidas > Gaseosas > Cola
    ('7791234560028', 'Pepsi 500ml', 'Bebida gaseosa sabor cola 500ml', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\pepsi500.jpeg', SINGLE_BLOB) AS imagen), 2, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Cola'), 1),
    -- Bebidas > Gaseosas > Cola
    ('7791234560035', 'Fanta Naranja 500ml', 'Bebida gaseosa sabor naranja 500ml', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\fanta500.jpg', SINGLE_BLOB) AS imagen), 4, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Naranja'), 1),
    -- Bebidas > Gaseosas > Naranja
    ('7791234560042', 'Schweppes Pomelo 500ml', 'Bebida gaseosa sabor pomelo 500ml', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\schweppes.jpeg', SINGLE_BLOB) AS imagen), 5, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Pomelo'), 1),
    -- Bebidas > Gaseosas > Pomelo
    ('7791234560059', 'Sprite Limon 500ml', 'Bebida gaseosa sabor limon 500ml', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\sprite500.jpg', SINGLE_BLOB) AS imagen), 3, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Limón'), 1),
    -- Bebidas > Gaseosas > Limon
    ('7791234560066', 'Schweppes Tonica 500ml', 'Bebida gaseosa sabor tonica 500ml', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\schweppesTon.jpeg', SINGLE_BLOB) AS imagen), 5, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Tónica'), 1);
-- Bebidas > Gaseosas > Tonica

-- Bebidas > Jugos
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('7791234560073', 'Cepita Naranja 1L', 'Jugo de naranja listo para tomar', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\cepitaNaranja.jpeg', SINGLE_BLOB) AS imagen), 9, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Listos para tomar'), 1),
    -- Bebidas > Jugos > Listos para tomar
    ('7791234560080', 'Baggio Multifruta 1L', 'Jugo de multifruta listo para tomar 1L', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\baggioMultif.png', SINGLE_BLOB) AS imagen), 10, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Listos para tomar'), 1),
    -- Bebidas > Jugos > Listos para tomar
    ('7791234560097', 'Baggio Durazno 1L', 'Jugo de durazno listo para tomar 1L', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\baggioDuraz.jpg', SINGLE_BLOB) AS imagen), 10, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Listos para tomar'), 1),
    -- Bebidas > Jugos > Listos para tomar
    ('7791234560103', 'Cepita Multifruta 1L', 'Jugo concentrado de multifruta 1L', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\cepitalMultf.jpg', SINGLE_BLOB) AS imagen), 9, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Concentrados'), 1);
-- Bebidas > Jugos > Concentrados

-- Bebidas > Aguas
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto,imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('7791234560110', 'Villa del Sur con Gas 500ml', 'Agua mineral con gas 500ml', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\villaSurGas.jpg', SINGLE_BLOB) AS imagen), 6, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Agua con gas'), 1),
    -- Bebidas > Aguas > Agua con gas
    ('7791234560127', 'Eco de los Andes sin Gas 1L', 'Agua mineral sin gas 1L', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\ecoAndesSinGas.jpg', SINGLE_BLOB) AS imagen), 8, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Agua sin gas'), 1),
    -- Bebidas > Aguas > Agua sin gas
    ('7791234560134', 'Bon Aqua Pomelo saborizada 1L', 'Agua saborizada con sabor a pomelo 1L', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\bonPomelo.jpeg', SINGLE_BLOB) AS imagen), 7, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Agua saborizada'), 1),
    -- Bebidas > Aguas > Agua saborizada
    ('7791234560141', 'Bon Aqua Pera saborizada 1L', 'Agua saborizada con sabor a pera 1L', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\bonPera.jpg', SINGLE_BLOB) AS imagen), 7, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Agua saborizada'), 1),
    -- Bebidas > Aguas > Agua saborizada
    ('7791234560158', 'Bon Aqua Manzana saborizada 1L', 'Agua saborizada con sabor a manzana 1L', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\bonManzana.jpg', SINGLE_BLOB) AS imagen), 7, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Agua saborizada'), 1);
-- Bebidas > Aguas > Agua saborizada

-- Bebidas > CERVEZAS
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000004', 'Cerveza Quilmes 1L', 'Cerveza Roja', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\quilmesRoja.jpg', SINGLE_BLOB) AS imagen), 67, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Bebidas'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Roja'), 1);
-- Bebidas > Cervezas > Rojas

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Almacen > ACEITES Y VINAGRE
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000005', 'Aceite de Oliva', 'Aceite de oliva extra virgen', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\oliva.png', SINGLE_BLOB) AS imagen), 21, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Aceite de oliva'), 1);
-- Almacen > Aceites y vinagres > Aceite de oliva

-- Almcen > ACEITUNAS Y ENCURTIDOS
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000006', 'Aceitunas Verdes', 'Aceitunas verdes en salmuera', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\aceitunas.png', SINGLE_BLOB) AS imagen), 28, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Aceitunas verde'), 1);
-- Almacen > Aceitunas y encurtidos > Aceitunas verdes

-- Almacen > Aderezos
INSERT INTO productos
    (cod_barra, nom_producto,desc_producto,imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('7791234560165', 'Hellmanns Mayonesa 500g', 'Mayonesa clásica de 500g', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\hellmannMayo.jpg', SINGLE_BLOB) AS imagen), 24, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Mayonesas'), 1),
    -- Almacen > Aderezos > Mayonesas
    ('7791234560172', 'Danica Ketchup 300g', 'Kétchup de 300g', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\danicaKetch.jpg', SINGLE_BLOB) AS imagen), 25, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Ketchup'), 1),
    -- Almacen > Aderezos > Ketchup
    ('7791234560189', 'Mostaza Natura 250g', 'Mostaza de 250g', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\mostazaNatura.jpeg', SINGLE_BLOB) AS imagen), 29, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Mostazas'), 1),
    -- Almacen > Aderezos > Mostazas
    ('7791234560196', 'Salsa Golf Hellmanns 350g', 'Salsa golf de 350g', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\hellmanSalsaGol.jpeg', SINGLE_BLOB) AS imagen), 24, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Salsa golf'), 1);
-- Almacen > Aderezos > Salsa golf

-- Almacen > ARROZ Y LEGUMBRES
INSERT INTO dbo.productos
    (cod_barra, nom_producto,desc_producto,imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000008', 'Arroz', 'Arroz largo No se pasa', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\arrozMarolio.png', SINGLE_BLOB) AS imagen), 20, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Arroz'), 1);
-- Almacen > Arroz y legumbres > Arroz

-- Almacen > CALDOS, SOPAS, PURE
INSERT INTO dbo.productos
    (cod_barra, nom_producto,desc_producto,imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000009', 'Caldo de Pollo', 'Caldo de pollo en cubos', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\caldo.jpeg', SINGLE_BLOB) AS imagen), 22, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Caldos'), 1);
-- Almacen > Caldos, sopas, puré > Caldos

-- Almacen > Desayuno y Merienda
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('7791234560202', 'La Virginia Cafe Molido 500g', 'Café molido de 500g', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\laVirginiaCafe.jpeg', SINGLE_BLOB) AS imagen), 53, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Cafes'), 1),
    -- Almacen > Desayuno y merienda > Cafes
    ('7791234560219', 'Recetas de la Abuela 200g', 'Galletitas dulces de 200g', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\recetasAguelaGall.jpeg', SINGLE_BLOB) AS imagen), 17, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Galletitas dulces'), 1),
    -- Almacen > Desayuno y merienda > Galletitas dulces
    ('7791234560226', 'Bagley Galletitas Saladas 150g', 'Galletitas saladas de 150g', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\bagleySaladas.jpeg', SINGLE_BLOB) AS imagen), 18, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Galletitas saladas'), 1),
    -- Almacen > Desayuno y merienda > Galletitas saladas
    ('7791234560233', 'Sancor Leche en Polvo 400g', 'Leche en polvo de 400g', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\sancorPolvo.jpg', SINGLE_BLOB) AS imagen), 12, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Leches en polvo'), 1),
    -- Almacen > Desayuno y merienda > Leches en polvo
    ('7791234560240', 'Taragui Yerba Mate 1Kg', 'Yerba mate de 1Kg', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\taraguiiYerba.jpg', SINGLE_BLOB) AS imagen), 55, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Yerbas'), 1);
-- Almacen > Desayuno y merienda > Yerbas

-- Almacen > GOLOSINAS Y CHOCOLATES
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000011', 'Chocolate con Leche', 'Chocolate con leche y nueces', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\nestleChoc.png', SINGLE_BLOB) AS imagen), 90, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Chocolates con Leche'), 1);
-- Almacen > Golosinas y chocolates > Chocolates con leche

-- Almacen > HARINAS
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000012', 'Polenta', 'Polenta de harina de maiz', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\polenta.jpg', SINGLE_BLOB) AS imagen), 17, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Polentas'), 1);
-- Almacen > Harinas > Polentas

-- Almacen > PANIFICADOS
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000013', 'Pan Lactal', 'Pan de molde Artesano 500gr', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\panLactal.png', SINGLE_BLOB) AS imagen), 33, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Pan Lactal'), 1);
-- Almacen > Panificados > Pan Lactal

-- Almacen > PARA PREPARAR
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000014', 'Preparado para Tortas', 'Mezcla para tortas de vainilla', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\torta.png', SINGLE_BLOB) AS imagen), 17, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Bizcochuelos y tortas'), 1);
-- Almacen > Para preparar > Bizcochuelos y tortas

-- Almacen> PASTAS SECAS Y SALSAS
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000015', 'Fideos Espagueti', 'Fideos tipo espagueti largos', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\fideosKnorr.png', SINGLE_BLOB) AS imagen), 22, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Fideos largos'), 1);
-- Almacen > Pastas secas y salsas > Fideos largos

-- Almacen > SAL, PIMIENTAS Y ESPECIAS
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000016', 'Sal Fina', 'Sal fina para cocinar', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\salMarolio.png', SINGLE_BLOB) AS imagen), 20, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Sal'), 1);
-- Almacen > Sal, pimientas y especias > Sal

-- Almacen > SNACKS
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000017', 'Nachos ', 'Nachos crujientes', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\nachos.png', SINGLE_BLOB) AS imagen), 34, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Almacen'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Nachos'), 1);
-- Almacen > Snacks > Nachos

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Lacteos > DULCE DE LECHE
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000018', 'Dulce de Leche', 'Dulce de leche repostero', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\dulceLecheRep.jpeg', SINGLE_BLOB) AS imagen), 11, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Lacteos'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Repostero'), 1);
-- Lacteos > Dulce de leche > Repostero

-- Lacteos > LECHES
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000019', 'Leche Larga vida', 'Leche entera pasteurizada 1L', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\leche.png', SINGLE_BLOB) AS imagen), 11, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Lacteos'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Larga Vida'), 1);
-- Lacteos > Leches > Larga vida

-- Lacteos > CREMAS
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000020', 'Crema de Leche', 'Crema de leche batida frescas', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\cremaSancor.png', SINGLE_BLOB) AS imagen), 12, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Lacteos'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Frescas'), 1);
-- Lacteos > Cremas > Frescas

-- Lacteos > YOGURES
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000021', 'Yogur Natural', 'Yogur natural firme', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\yogurtActivia.jpeg', SINGLE_BLOB) AS imagen), 39, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Lacteos'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Firmes'), 1);
-- Lacteos > Yogures > Firmes

-- Lacteos > MANTECAS Y MARGARINAS
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000022', 'Manteca', 'Manteca sin sal 200gr', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\manteca.png', SINGLE_BLOB) AS imagen), 11, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Lacteos'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Manteca'), 1);
-- Lacteos > Mantecas y margarinas > Manteca

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Quesos y fiambres > QUESOS
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000023', 'Queso Finlandia Clasico', 'Queso para untar sabor original 300gr', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\finlandia.png', SINGLE_BLOB) AS imagen), 11, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Quesos y Fiambres'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Quesos untables'), 1);
-- Quesos y fiambres > Quesos > Quesos untables

-- Quesos y fiambres > FIAMBRES
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000024', 'Jamón Cocido', 'Jamón cocido en rodajas Paladini', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\jamonPala.png', SINGLE_BLOB) AS imagen), 31, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Quesos y Fiambres'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Jamon'), 1);
-- Quesos y fiambres > Fiambres > Jamon

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Carnes > CARNE VACUNA
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000025', 'Carne de Res', 'Carne de res cortada para asar', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\carneRes.jpg', SINGLE_BLOB) AS imagen), 42, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Carnes'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Carne de Res'), 1);
-- Carnes > Carne Vacuna > Carne de Res

-- Carnes > CARNE DE CERDO
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000026', 'Carne de Cerdo', 'Panceta de cerdo', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\carneCerdo.png', SINGLE_BLOB) AS imagen), 41, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Carnes'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Carne de Cerdo'), 1);
-- Carnes > Carne de Cerdo > Carne de Cerdo

-- Carnes > CARNE DE POLLO
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000027', 'Pollo Entero', 'Pollo fresco entero', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\pollo.png', SINGLE_BLOB) AS imagen), 41, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Carnes'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Carne de Pollo'), 1);
-- Carnes > Carne de Pollo > Carne de Pollo

-- Carnes > PESCADOS
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000028', 'Filete de Merluza', 'Merluza fresca', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\pescadoMeda.png', SINGLE_BLOB) AS imagen), 43, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Carnes'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Pescado'), 1);
-- Carnes > Pescados > Pescado

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Frutas y Verduras > FRUTAS
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000029', 'Manzanas', 'Manzanas empaquetadas', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\manzana.png', SINGLE_BLOB) AS imagen), 30, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Frutas y Verduras'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Frutas empaquetadas'), 1);
-- Frutas y Verduras > Frutas > Frutas empaquetadas

-- Frutas y Verduras > VERDURAS
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000030', 'Verduras', 'Ensaladas listas', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\ensalada.png', SINGLE_BLOB) AS imagen), 30, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Frutas y Verduras'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Ensaladas preparadas'), 1);
-- Frutas y Verduras > Verduras > Ensaladas preparadas

-- Frutas y Verduras > HUEVOS
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000031', 'Huevos', 'Docena de huevos blancos', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\huevos.png', SINGLE_BLOB) AS imagen), 30, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Frutas y Verduras'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Blancos'), 1);
-- Frutas y Verduras > Huevos > Blancos

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Congelados > FRUTAS CONGELADAS
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000032', 'Frutillas Congeladas', 'Frutillas frescas congeladas', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\frutillas.png', SINGLE_BLOB) AS imagen), 43, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Congelados'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Frutillas Congeladas'), 1);
-- Congelados > Frutas congeladas > Frutillas congeladas

-- Congelados > VERDURAS CONGELADAS
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000033', 'Verduras Mixtas Congeladas', 'Mezcla de verduras congeladas', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\verdurasCong.png', SINGLE_BLOB) AS imagen), 43, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Congelados'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Mix Verduras Congeladas'), 1);
-- Congelados > Verduras congeladas > Mix Verduras Congeladas

-- Congelados > PAPAS CONGELADAS
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000034', 'Papas Fritas', 'Papas fritas congeladas', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\papasFritas.png', SINGLE_BLOB) AS imagen), 43, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Congelados'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Papas fritas Congeladas'), 1);
-- Congelados > Papas congeladas > Papas fritas Congeladas

-- Congelados > HELADOS Y POSTRES
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000035', 'Helado de Chocolate', 'Helado de chocolate Tentacion 1L', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\heladoChoco.png', SINGLE_BLOB) AS imagen), 65, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Congelados'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Helado de crema'), 1);
-- Congelados > Helados y postres > Helado de crema

-- Congelados > CARNES Y POLLO
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000036', 'Asado de Tira', 'Corte de asado de tira', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\asado.png', SINGLE_BLOB) AS imagen), 42, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Congelados'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Asado congelado'), 1);
-- Congelados > Carnes y pollos > Asado congelado

-- Congelados > HAMBURGUESAS Y MILANESAS
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000037', 'Hamburguesa de Carne', 'Hamburguesa de carne vacuna', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\hamburguesaSwift.png', SINGLE_BLOB) AS imagen), 42, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Congelados'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Hamburguesas congeladas'), 1);
-- Congelados > Hamburguesas y milanesas > Hamburguesas congeladas

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Perfumeria > CUIDADO CAPILAR
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000038', 'Shampoo', 'Shampoo para cabello seco Detox Pantene', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\shampoo.png', SINGLE_BLOB) AS imagen), 49, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Perfumeria'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Shampoo'), 1);
-- Perfumeria > Cuidado capilar > Shampoo

-- Perfumeria > CUIDADO ORAL
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000039', 'Pasta Dental', 'Pasta dental blanqueadora', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\pastaDientes.png', SINGLE_BLOB) AS imagen), 48, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Perfumeria'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Pasta de dientes'), 1);
-- Perfumeria > Cuidado oral > Pasta de dientes

-- Perfumeria > CUIDADO PERSONAL
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000040', 'Desodorante Mujer', 'Desodorante en spray Original', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\desodorante.png', SINGLE_BLOB) AS imagen), 46, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Perfumeria'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Desodorantes'), 1);
-- Perfumeria > Cuidado personal > Desodorantes

-- Perfumeria > CUIDADO DE LA PIEL
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000041', 'Crema Hidratante', 'Crema hidratante para la piel', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\cremaDove.png', SINGLE_BLOB) AS imagen), 46, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Perfumeria'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Cremas corporales'), 1);
-- Perfumeria > Cuidado de la piel > Cremas corporales

-- Perfumeria > PROTECCION FEMENINA
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000042', 'Toallas Higiénicas', 'Toallas higiénicas ultra finas', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\toallitas.png', SINGLE_BLOB) AS imagen), 46, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Perfumeria'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Toallitas'), 1);
-- Perfumeria > Protección femenina > Toallitas

-- Perfumeria > PROTECCION PARA ADULTOS
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000043', 'Protección para Adultos', 'Protección para adultos desechables', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\panales.png', SINGLE_BLOB) AS imagen), 46, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Perfumeria'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Pañales adultos'), 1);
-- Perfumeria > Protección para adultos > Pañales adultos

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Limpieza > ACCESORIOS DE LIMPIEZA
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000044', 'Esponjas', 'Esponjas para limpieza verdes', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\esponja.png', SINGLE_BLOB) AS imagen), 100, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Limpieza'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Esponjas'), 1);
-- Limpieza > Accesorios de limpieza > Esponjas

-- Limpieza > CUIDADO DE ROPA 
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000045', 'Detergente Líquido', 'Detergente líquido para ropa 3L', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\detergenteAla.png', SINGLE_BLOB) AS imagen), 99, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Limpieza'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Jabon liquido'), 1);
-- Limpieza > Cuidado de ropa > Jabon liquido

-- Limpieza > LIMPIEZA DE COCINA
INSERT INTO dbo.productos
    (cod_barra, nom_producto, desc_producto, imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('000000000046', 'Desinfectante', 'Desinfectante de cocina', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\desinfectante.png', SINGLE_BLOB) AS imagen), 101, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Limpieza'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Desinfectante'), 1);
-- Limpieza > Limpieza de cocina > Desinfectante

-- Limpieza > Papeles
INSERT INTO productos
    (cod_barra, nom_producto, desc_producto,imagen, nro_marca, nro_tipo_producto, nro_categoria, vigente)
VALUES
    ('7791234560257', 'Rollo de cocina', 'Rollo de papel absorbente para cocina', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\rolloCocina.png', SINGLE_BLOB) AS imagen), 102, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Limpieza'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Rollos de cocina'), 1),
    -- Limpieza > Papel > Rollos de cocina
    ('7791234560264', 'Papel Higienico', 'Papel higiénico suave y absorbente', (SELECT *
        FROM OPENROWSET(BULK N'C:\imProductos\papelHigienico.jpg', SINGLE_BLOB) AS imagen), 103, (SELECT nro_tipo_producto
        FROM dbo.tipos_productos
        WHERE nom_tipo_producto = 'Limpieza'), (SELECT nro_categoria
        FROM dbo.categorias_productos
        WHERE nom_categoria = 'Papel higiénico'), 1);
-- Limpieza > Papel > Papel higiénico

/* -------------------------------------
   Tabla: sucursales
   ------------------------------------- */
-- Sucursal 1: Libertad Centro
INSERT INTO dbo.sucursales
    (nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, nro_localidad, habilitada)
VALUES
    ('REST A Centro', 'Av. General Paz', '350', '0351-4211000, 0351-4211001', -31.416111, -64.183333, 5, 1);

-- Sucursal 2: Libertad Ruta 20
INSERT INTO dbo.sucursales
    (nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, nro_localidad, habilitada)
VALUES
    ('REST A 20', 'Av. Fuerza Aérea Argentina', '1700', '0351-4652000, 0351-4652001', -31.434622, -64.195839, 5, 1);

-- Sucursal 3: Libertad Circunvalación
INSERT INTO dbo.sucursales
    (nom_sucursal, calle, nro_calle, telefonos, coord_latitud, coord_longitud, nro_localidad, habilitada)
VALUES
    ('REST A Circunvalación', 'Av. Circunvalación', '5500', '0351-4783000, 0351-4783001', -31.381235, -64.217828, 5, 1);

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
    (1, '7791234560035', 110.00, 1),
    -- Fanta Naranja 500ml
    (1, '7791234560042', 130.00, 1),
    -- Schweppes Pomelo 500ml
    (1, '7791234560059', 120.00, 1),
    -- Sprite Limon 500ml
    (1, '7791234560066', 135.00, 1),
    -- Schweppes Tonica 500ml
    (1, '7791234560073', 150.00, 1),
    -- Cepita Naranja 1L
    (1, '7791234560080', 155.00, 1),
    -- Baggio Multifruta 1L
    (1, '7791234560097', 160.00, 1),
    -- Baggio Durazno 1L
    (1, '7791234560103', 165.00, 1),
    -- Cepita Multifruta 1L
    (1, '7791234560110', 170.00, 1),
    -- Villa del Sur con Gas 500ml
    (1, '7791234560127', 175.00, 1),
    -- Eco de los Andes sin Gas 1L
    (1, '7791234560134', 180.00, 1),
    -- Bon Aqua Pomelo saborizada 1L
    (1, '7791234560141', 185.00, 1),
    -- Bon Aqua Pera saborizada 1L
    (1, '7791234560158', 190.00, 1),
    -- Bon Aqua Manzana saborizada 1L
    (1, '000000000004', 110.00, 1),
    -- Cerveza Quilmes 1L
    (1, '000000000005', 200.00, 1),
    -- Aceite de Oliva
    (1, '000000000006', 90.00, 1),
    -- Aceitunas Verdes
    (1, '7791234560165', 100.00, 1),
    -- Hellmanns Mayonesa 500g
    (1, '7791234560172', 105.00, 1),
    -- Danica Ketchup 300g
    (1, '7791234560189', 110.00, 1),
    -- Mostaza Natura 250g
    (1, '7791234560196', 115.00, 1),
    -- Salsa Golf Hellmanns 350g
    (1, '000000000008', 130.00, 1),
    -- Arroz largo No se pasa
    (1, '000000000009', 85.00, 1),
    -- Caldo de Pollo
    (1, '7791234560202', 145.00, 1),
    -- La Virginia Cafe Molido 500g
    (1, '7791234560219', 150.00, 1),
    -- Recetas de la Abuela 200g
    (1, '7791234560226', 155.00, 1),
    -- Bagley Galletitas Saladas 150g
    (1, '7791234560233', 160.00, 1),
    -- Sancor Leche en Polvo 400g
    (1, '7791234560240', 165.00, 1),
    -- Taragui Yerba Mate 1Kg
    (1, '000000000011', 70.00, 1),
    -- Chocolate con Leche
    (1, '000000000012', 75.00, 1),
    -- Polenta
    (1, '000000000013', 80.00, 1),
    -- Pan Lactal
    (1, '000000000014', 85.00, 1),
    -- Preparado para Tortas
    (1, '000000000015', 90.00, 1),
    -- Fideos Espagueti
    (1, '000000000016', 95.00, 1),
    -- Sal Fina
    (1, '000000000017', 100.00, 1),
    -- Nachos
    (1, '000000000018', 105.00, 1),
    -- Dulce de Leche
    (1, '000000000019', 120.50, 1),
    -- Leche Larga Vida
    (1, '000000000020', 200.75, 1),
    -- Crema de Leche
    (1, '000000000021', 85.90, 1),
    -- Yogur Natural
    (1, '000000000022', 250.00, 1),
    -- Manteca
    (1, '000000000023', 350.50, 1),
    -- Queso Finlandia Clasico
    (1, '000000000024', 450.75, 1),
    -- Jamón Cocido
    (1, '000000000025', 1200.00, 1),
    -- Carne de Res
    (1, '000000000026', 850.50, 1),
    -- Carne de Cerdo
    (1, '000000000027', 720.25, 1),
    -- Pollo Entero
    (1, '000000000028', 650.00, 1),
    -- Filete de Merluza
    (1, '000000000029', 180.90, 1),
    -- Manzanas
    (1, '000000000030', 250.30, 1),
    -- Verduras
    (1, '000000000031', 350.00, 1),
    -- Huevos
    (1, '000000000032', 550.90, 1),
    -- Frutillas Congeladas
    (1, '000000000033', 400.70, 1),
    -- Verduras Mixtas Congeladas
    (1, '000000000034', 450.00, 1),
    -- Papas Fritas
    (1, '000000000035', 500.50, 1),
    -- Helado de Chocolate
    (1, '000000000036', 1100.00, 1),
    -- Asado de Tira
    (1, '000000000037', 750.50, 1),
    -- Hamburguesa de Carne
    (1, '000000000038', 320.25, 1),
    -- Shampoo
    (1, '000000000039', 150.75, 1),
    -- Pasta Dental
    (1, '000000000040', 210.30, 1),
    -- Desodorante Mujer
    (1, '000000000041', 600.40, 1),
    -- Crema Hidratante
    (1, '000000000042', 300.80, 1),
    -- Toallas Higiénicas
    (1, '000000000043', 550.60, 1),
    -- Protección para Adultos
    (1, '000000000044', 70.50, 1),
    -- Esponjas
    (1, '000000000045', 180.25, 1),
    -- Detergente Líquido
    (1, '000000000046', 230.70, 1);
-- Desinfectante


-- Sucursal 2 - Jugos
INSERT INTO productos_sucursales
    (nro_sucursal, cod_barra, precio, vigente)
VALUES
    (2, '7791234560011', 120.00, 1),
    -- Coca-Cola Original 500ml
    (2, '7791234560028', 115.00, 1),
    -- Pepsi 500ml
    (2, '7791234560035', 110.00, 1),
    -- Fanta Naranja 500ml
    (2, '7791234560042', 130.00, 1),
    -- Schweppes Pomelo 500ml
    (2, '7791234560059', 120.00, 1),
    -- Sprite Limon 500ml
    (2, '7791234560066', 135.00, 1),
    -- Schweppes Tonica 500ml
    (2, '7791234560073', 150.00, 1),
    -- Cepita Naranja 1L
    (2, '7791234560080', 155.00, 1),
    -- Baggio Multifruta 1L
    (2, '7791234560097', 160.00, 1),
    -- Baggio Durazno 1L
    (2, '7791234560103', 165.00, 1),
    -- Cepita Multifruta 1L
    (2, '7791234560110', 170.00, 1),
    -- Villa del Sur con Gas 500ml
    (2, '7791234560127', 175.00, 1),
    -- Eco de los Andes sin Gas 1L
    (2, '7791234560134', 180.00, 1),
    -- Bon Aqua Pomelo saborizada 1L
    (2, '7791234560141', 185.00, 1),
    -- Bon Aqua Pera saborizada 1L
    (2, '7791234560158', 190.00, 1),
    -- Bon Aqua Manzana saborizada 1L
    (2, '000000000004', 110.00, 1),
    -- Cerveza Quilmes 1L
    (2, '000000000005', 200.00, 1),
    -- Aceite de Oliva
    (2, '000000000006', 90.00, 1),
    -- Aceitunas Verdes
    (2, '7791234560165', 100.00, 1),
    -- Hellmanns Mayonesa 500g
    (2, '7791234560172', 105.00, 1),
    -- Danica Ketchup 300g
    (2, '7791234560189', 110.00, 1),
    -- Mostaza Natura 250g
    (2, '7791234560196', 115.00, 1),
    -- Salsa Golf Hellmanns 350g
    (2, '000000000008', 130.00, 1),
    -- Arroz largo No se pasa
    (2, '000000000009', 85.00, 1),
    -- Caldo de Pollo
    (2, '7791234560202', 145.00, 1),
    -- La Virginia Cafe Molido 500g
    (2, '7791234560219', 150.00, 1),
    -- Recetas de la Abuela 200g
    (2, '7791234560226', 155.00, 1),
    -- Bagley Galletitas Saladas 150g
    (2, '7791234560233', 160.00, 1),
    -- Sancor Leche en Polvo 400g
    (2, '7791234560240', 165.00, 1),
    -- Taragui Yerba Mate 1Kg
    (2, '000000000011', 70.00, 1),
    -- Chocolate con Leche
    (2, '000000000012', 75.00, 1),
    -- Polenta
    (2, '000000000013', 80.00, 1),
    -- Pan Lactal
    (2, '000000000014', 85.00, 1),
    -- Preparado para Tortas
    (2, '000000000015', 90.00, 1),
    -- Fideos Espagueti
    (2, '000000000016', 95.00, 1),
    -- Sal Fina
    (2, '000000000017', 100.00, 1),
    -- Nachos
    (2, '000000000018', 105.00, 1),
    -- Dulce de Leche
    (2, '000000000019', 120.50, 1),
    -- Leche Larga Vida
    (2, '000000000020', 200.75, 1),
    -- Crema de Leche
    (2, '000000000021', 85.90, 1),
    -- Yogur Natural
    (2, '000000000022', 250.00, 1),
    -- Manteca
    (2, '000000000023', 350.50, 1),
    -- Queso Finlandia Clasico
    (2, '000000000024', 450.75, 1),
    -- Jamón Cocido
    (2, '000000000025', 1200.00, 1),
    -- Carne de Res
    (2, '000000000026', 850.50, 1),
    -- Carne de Cerdo
    (2, '000000000027', 720.25, 1),
    -- Pollo Entero
    (2, '000000000028', 650.00, 1),
    -- Filete de Merluza
    (2, '000000000029', 180.90, 1),
    -- Manzanas
    (2, '000000000030', 250.30, 1),
    -- Verduras
    (2, '000000000031', 350.00, 1),
    -- Huevos
    (2, '000000000032', 550.90, 1),
    -- Frutillas Congeladas
    (2, '000000000033', 400.70, 1),
    -- Verduras Mixtas Congeladas
    (2, '000000000034', 450.00, 1),
    -- Papas Fritas
    (2, '000000000035', 500.50, 1),
    -- Helado de Chocolate
    (2, '000000000036', 1100.00, 1),
    -- Asado de Tira
    (2, '000000000037', 750.50, 1),
    -- Hamburguesa de Carne
    (2, '000000000038', 320.25, 1),
    -- Shampoo
    (2, '000000000039', 150.75, 1),
    -- Pasta Dental
    (2, '000000000040', 210.30, 1),
    -- Desodorante Mujer
    (2, '000000000041', 600.40, 1),
    -- Crema Hidratante
    (2, '000000000042', 300.80, 1),
    -- Toallas Higiénicas
    (2, '000000000043', 550.60, 1),
    -- Protección para Adultos
    (2, '000000000044', 70.50, 1),
    -- Esponjas
    (2, '000000000045', 180.25, 1),
    -- Detergente Líquido
    (2, '000000000046', 230.70, 1);
-- Desinfectante

-- Sucursal 3 - Aguas
INSERT INTO productos_sucursales
    (nro_sucursal, cod_barra, precio, vigente)
VALUES
    (3, '7791234560011', 120.00, 1),
    -- Coca-Cola Original 500ml
    (3, '7791234560028', 115.00, 1),
    -- Pepsi 500ml
    (3, '7791234560035', 110.00, 1),
    -- Fanta Naranja 500ml
    (3, '7791234560042', 130.00, 1),
    -- Schweppes Pomelo 500ml
    (3, '7791234560059', 120.00, 1),
    -- Sprite Limon 500ml
    (3, '7791234560066', 135.00, 1),
    -- Schweppes Tonica 500ml
    (3, '7791234560073', 150.00, 1),
    -- Cepita Naranja 1L
    (3, '7791234560080', 155.00, 1),
    -- Baggio Multifruta 1L
    (3, '7791234560097', 160.00, 1),
    -- Baggio Durazno 1L
    (3, '7791234560103', 165.00, 1),
    -- Cepita Multifruta 1L
    (3, '7791234560110', 170.00, 1),
    -- Villa del Sur con Gas 500ml
    (3, '7791234560127', 175.00, 1),
    -- Eco de los Andes sin Gas 1L
    (3, '7791234560134', 180.00, 1),
    -- Bon Aqua Pomelo saborizada 1L
    (3, '7791234560141', 185.00, 1),
    -- Bon Aqua Pera saborizada 1L
    (3, '7791234560158', 190.00, 1),
    -- Bon Aqua Manzana saborizada 1L
    (3, '000000000004', 110.00, 1),
    -- Cerveza Quilmes 1L
    (3, '000000000005', 200.00, 1),
    -- Aceite de Oliva
    (3, '000000000006', 90.00, 1),
    -- Aceitunas Verdes
    (3, '7791234560165', 100.00, 1),
    -- Hellmanns Mayonesa 500g
    (3, '7791234560172', 105.00, 1),
    -- Danica Ketchup 300g
    (3, '7791234560189', 110.00, 1),
    -- Mostaza Natura 250g
    (3, '7791234560196', 115.00, 1),
    -- Salsa Golf Hellmanns 350g
    (3, '000000000008', 130.00, 1),
    -- Arroz largo No se pasa
    (3, '000000000009', 85.00, 1),
    -- Caldo de Pollo
    (3, '7791234560202', 145.00, 1),
    -- La Virginia Cafe Molido 500g
    (3, '7791234560219', 150.00, 1),
    -- Recetas de la Abuela 200g
    (3, '7791234560226', 155.00, 1),
    -- Bagley Galletitas Saladas 150g
    (3, '7791234560233', 160.00, 1),
    -- Sancor Leche en Polvo 400g
    (3, '7791234560240', 165.00, 1),
    -- Taragui Yerba Mate 1Kg
    (3, '000000000011', 70.00, 1),
    -- Chocolate con Leche
    (3, '000000000012', 75.00, 1),
    -- Polenta
    (3, '000000000013', 80.00, 1),
    -- Pan Lactal
    (3, '000000000014', 85.00, 1),
    -- Preparado para Tortas
    (3, '000000000015', 90.00, 1),
    -- Fideos Espagueti
    (3, '000000000016', 95.00, 1),
    -- Sal Fina
    (3, '000000000017', 100.00, 1),
    -- Nachos
    (3, '000000000018', 105.00, 1),
    -- Dulce de Leche
    (3, '000000000019', 120.50, 1),
    -- Leche Larga Vida
    (3, '000000000020', 200.75, 1),
    -- Crema de Leche
    (3, '000000000021', 85.90, 1),
    -- Yogur Natural
    (3, '000000000022', 250.00, 1),
    -- Manteca
    (3, '000000000023', 350.50, 1),
    -- Queso Finlandia Clasico
    (3, '000000000024', 450.75, 1),
    -- Jamón Cocido
    (3, '000000000025', 1200.00, 1),
    -- Carne de Res
    (3, '000000000026', 850.50, 1),
    -- Carne de Cerdo
    (3, '000000000027', 720.25, 1),
    -- Pollo Entero
    (3, '000000000028', 650.00, 1),
    -- Filete de Merluza
    (3, '000000000029', 180.90, 1),
    -- Manzanas
    (3, '000000000030', 250.30, 1),
    -- Verduras
    (3, '000000000031', 350.00, 1),
    -- Huevos
    (3, '000000000032', 550.90, 1),
    -- Frutillas Congeladas
    (3, '000000000033', 400.70, 1),
    -- Verduras Mixtas Congeladas
    (3, '000000000034', 450.00, 1),
    -- Papas Fritas
    (3, '000000000035', 500.50, 1),
    -- Helado de Chocolate
    (3, '000000000036', 1100.00, 1),
    -- Asado de Tira
    (3, '000000000037', 750.50, 1),
    -- Hamburguesa de Carne
    (3, '000000000038', 320.25, 1),
    -- Shampoo
    (3, '000000000039', 150.75, 1),
    -- Pasta Dental
    (3, '000000000040', 210.30, 1),
    -- Desodorante Mujer
    (3, '000000000041', 600.40, 1),
    -- Crema Hidratante
    (3, '000000000042', 300.80, 1),
    -- Toallas Higiénicas
    (3, '000000000043', 550.60, 1),
    -- Protección para Adultos
    (3, '000000000044', 70.50, 1),
    -- Esponjas
    (3, '000000000045', 180.25, 1),
    -- Detergente Líquido
    (3, '000000000046', 230.70, 1);
-- Desinfectante


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
    ('Estacionamiento gratuito');

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
    (3, 7, 1);

/* -------------------------------------
   Tabla: empresas_externas
   ------------------------------------- */
INSERT INTO dbo.empresas_externas
    (razon_social, cuit_empresa, token_servicio)
VALUES
    ('INDEC - Instituto Nacional de Estadística y Censos', '30521015339', '0123456456789');

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
    ('20426924820', 'Supermercado REST A', 'Av. Libertador', '4500', '3518507761');