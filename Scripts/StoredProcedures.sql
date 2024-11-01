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
CREATE PROCEDURE sp_obtener_supermercados_por_cuit
    @Cuit VARCHAR(30)
AS
BEGIN
    SELECT *
    FROM supermercado
    WHERE cuit LIKE CONCAT('%', @Cuit, '%');
END;

-- REST
-- EXEC sp_obtener_supermercados_por_cuit '12';
-- SOAP
-- EXEC sp_obtener_supermercados_por_cuit '42';
