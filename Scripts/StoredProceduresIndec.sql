-- Procedimiento almacenado para obtener todas las provincias en base a nombre
-- CREATE PROCEDURE sp_obtener_provincias
--     @NomProvincia VARCHAR(50)
-- AS
-- BEGIN
--     SELECT *
--     FROM provincias
--     WHERE nom_provincia LIKE '%' + @NomProvincia + '%';
-- END;

-- EXEC sp_obtener_provincias 'Buenos';

-- Procedimiento almacenado para obtener todas las localidades por cod_provincia
-- DROP PROCEDURE IF EXISTS sp_obtener_localidades_por_provincia;
-- CREATE PROCEDURE sp_obtener_localidades_por_provincia
--     @CodProvincia INT
-- AS
-- BEGIN
--     SELECT *
--     FROM localidades
--     WHERE cod_provincia = @CodProvincia;
-- END;

-- EXEC sp_obtener_localidades_por_provincia 2;

-- Procedimiento almacenado para obtener todos los datos de una sucural por nro_sucursal
-- DROP PROCEDURE IF EXISTS sp_obtener_datos_sucursal;
CREATE PROCEDURE sp_obtener_datos_sucursal
    @NroSucursal INT
AS
BEGIN
    SELECT *
    FROM sucursales
    WHERE nro_sucursal = @NroSucursal
END;


-- EXEC sp_obtener_datos_sucursal 2;

-- Procedimiento almacenado para obtener todas las sucursales de un supermercado por nro_supermercado y localidad por nro_localidad
-- DROP PROCEDURE IF EXISTS sp_obtener_sucursales_por_supermercado_y_localidad;
CREATE PROCEDURE sp_obtener_sucursales_por_supermercado_y_localidad
    @NroSupermercado INT,
    @NroLocalidad INT
AS
BEGIN
    SELECT *
    FROM sucursales
    WHERE nro_supermercado = @NroSupermercado AND nro_localidad = @NroLocalidad;
END;


-- EXEC sp_obtener_sucursales_por_supermercado_y_localidad 1, 1;