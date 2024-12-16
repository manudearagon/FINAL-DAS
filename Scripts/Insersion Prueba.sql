-- Estoy utilizando la db supermercado_rest_A para estas pruebas
INSERT INTO dbo.productos_sucursales
    (nro_sucursal, cod_barra, precio, vigente)
VALUES
    (1, '0123456789012', 120.00, 1),
    -- Pollo
    (1, '1234509876543', 115.00, 1),
    -- Carne
    (2, '1234567890123', 135.00, 1),
    -- Arroz
    (2, '2345609876543', 150.00, 1),
    -- Tomate
    (3, '2345678901234', 155.00, 1),
    -- Fideos
    (3, '3456709876543', 160.00, 1)
-- Manzana

SELECT *
FROM dbo.sucursales;
SELECT *
FROM dbo.productos_sucursales;

DROP TABLE dbo.productos_sucursales;

-- Esto es para pruebas con supermercado_soap
INSERT INTO dbo.productos_sucursales
    (nro_sucursal, cod_barra, precio, vigente)
VALUES
    (4, '3456789012345', 112.00, 1),
    -- Aceite
    (4, '4567809876543', 116.00, 1),
    -- Papas
    (5, '4567890123456', 190.00, 1),
    -- Leche
    (5, '5678901234567', 187.00, 1),
    -- Pan
    (6, '5678909876543', 192.00, 1),
    -- Zanahoria
    (6, '6789012345678', 160.00, 1)
-- Azucar


-- Crear stored procedure para devolver todos los productos de la tabla producto_sucursales
-- CREATE PROCEDURE sp_get_all_products
-- AS
-- BEGIN
--     SELECT *
--     FROM productos_sucursales;
-- END;

-- EXEC sp_get_all_products;