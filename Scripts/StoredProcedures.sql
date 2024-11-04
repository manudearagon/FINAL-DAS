--  Generar sp para obtener todos los supermercados
-- supermercado (
--     cuit VARCHAR(20) PRIMARY KEY,
--     razon_social VARCHAR(100) NOT NULL,
--     calle VARCHAR(100) NOT NULL,
--     nro_calle INT NOT NULL,
--     telefonos VARCHAR(100) NOT NULL
-- );

-- CREATE PROCEDURE sp_obtener_supermercados AS
-- BEGIN
--     SELECT * FROM supermercado;
-- END;

-- EXEC sp_obtener_supermercados;


-- Generar sp para obtener todos los supermercados que su cuil contenga el valor que envio como parametro
-- CREATE PROCEDURE sp_obtener_supermercados_por_cuit
--     @Cuit VARCHAR(30)
-- AS
-- BEGIN
--     SELECT *
--     FROM supermercado
--     WHERE cuit LIKE CONCAT('%', @Cuit, '%');
-- END;

-- CREATE PROCEDURE sp_obtener_supermercados
--     @Cuit VARCHAR(30)
-- AS
-- BEGIN
--     SELECT *
--     FROM supermercado
--     WHERE cuit LIKE CONCAT('%', @Cuit, '%');
-- END;

-- REST
-- EXEC sp_obtener_supermercados_por_cuit '12';
-- EXEC sp_obtener_supermercados '12';
-- SOAP
-- EXEC sp_obtener_supermercados_por_cuit '42';

--  --------------------------------------------------------------------------------
--  --------------------------------------------------------------------------------
--  --------------------------------------------------------------------------------

-- Generar sp para obtener todas las sucursales
-- CREATE PROCEDURE sp_obtener_sucursales AS
-- BEGIN
--     SELECT * FROM sucursales;
-- END;

-- EXEC sp_obtener_sucursales;

-- Generar sp para obtener todos los productos
-- CREATE PROCEDURE sp_obtener_productos AS
-- BEGIN
--     SELECT * FROM productos;
-- END;

-- EXEC sp_obtener_productos;

-- Generar sp para obtener productos_sucursales con un join para obtener el nombre del producto y poder filtrar por nombre
-- CREATE PROCEDURE sp_obtener_productos_sucursales
--     @NombreProducto VARCHAR(100)
-- AS
-- BEGIN
--     SELECT ps.*, p.nom_producto
--     FROM productos_sucursales ps
--     JOIN productos p ON ps.cod_barra = p.cod_barra
--     WHERE p.nom_producto LIKE CONCAT('%', @NombreProducto, '%');
-- END;

-- EXEC sp_obtener_productos_sucursales 'Cola';