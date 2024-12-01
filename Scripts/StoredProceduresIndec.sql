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
-- CREATE PROCEDURE sp_obtener_datos_sucursal
--     @NroSucursal INT
-- AS
-- BEGIN
--     SELECT *
--     FROM sucursales
--     WHERE nro_sucursal = @NroSucursal
-- END;


-- EXEC sp_obtener_datos_sucursal 2;

-- Procedimiento almacenado para obtener todas las sucursales de un supermercado por nro_supermercado y localidad por nro_localidad
-- DROP PROCEDURE IF EXISTS sp_obtener_sucursales_por_supermercado_y_localidad;
-- CREATE PROCEDURE sp_obtener_sucursales_por_supermercado_y_localidad
--     @NroSupermercado INT,
--     @NroLocalidad INT
-- AS
-- BEGIN
--     SELECT *
--     FROM sucursales
--     WHERE nro_supermercado = @NroSupermercado AND nro_localidad = @NroLocalidad;
-- END;


-- EXEC sp_obtener_sucursales_por_supermercado_y_localidad 1, 1;

-- Procedimiento almacenado para obtener todos los servicios de servicios_supermercados
-- DROP PROCEDURE IF EXISTS sp_obtener_servicios_supermercados;
-- CREATE PROCEDURE sp_obtener_servicios_supermercados
-- AS
-- BEGIN
--     SELECT *
--     FROM servicios_supermercados;
-- END;



-- EXEC sp_obtener_servicios_supermercados;

-- SELECT * FROM sucursales;
-- ELIMINAR SP
-- DROP PROCEDURE IF EXISTS sp_actualizar_sucursal;
-- CREATE PROCEDURE sp_actualizar_sucursal
--     @nro_supermercado INT,
--     @nro_sucursal INT,
--     @nom_sucursal VARCHAR(100),
--     @calle VARCHAR(100),
--     @nro_calle INT,
--     @telefonos VARCHAR(100),
--     @coord_latitud DECIMAL(9,6),
--     @coord_longitud DECIMAL(9,6),
--     @nro_localidad INT,
--     @habilitada BIT
-- AS
-- BEGIN
--     SET NOCOUNT ON;

--     -- Verificar si la sucursal ya existe en la base de datos de INDEC
--     IF EXISTS (
--         SELECT 1
--     FROM sucursales
--     WHERE nro_supermercado = @nro_supermercado
--         AND nro_sucursal = @nro_sucursal
--     )
--     BEGIN
--         -- Solo actualizar los registros si alguno de los datos ha cambiado
--         UPDATE sucursales
--         SET
--             nom_sucursal = CASE WHEN nom_sucursal <> @nom_sucursal THEN @nom_sucursal ELSE nom_sucursal END,
--             calle = CASE WHEN calle <> @calle THEN @calle ELSE calle END,
--             nro_calle = CASE WHEN nro_calle <> @nro_calle THEN @nro_calle ELSE nro_calle END,
--             telefonos = CASE WHEN telefonos <> @telefonos THEN @telefonos ELSE telefonos END,
--             coord_latitud = CASE WHEN coord_latitud <> @coord_latitud THEN @coord_latitud ELSE coord_latitud END,
--             coord_longitud = CASE WHEN coord_longitud <> @coord_longitud THEN @coord_longitud ELSE coord_longitud END,
--             nro_localidad = CASE WHEN nro_localidad <> @nro_localidad THEN @nro_localidad ELSE nro_localidad END,
--             habilitada = CASE WHEN habilitada <> @habilitada THEN @habilitada ELSE habilitada END
--         WHERE
--             nro_supermercado = @nro_supermercado
--             AND nro_sucursal = @nro_sucursal;
--     END
--     ELSE
--     BEGIN
--         -- Obtener un nuevo nro_sucursal único para el nro_supermercado
--         DECLARE @nuevo_nro_sucursal INT;
--         SELECT @nuevo_nro_sucursal = ISNULL(MAX(nro_sucursal), 0) + 1
--         FROM sucursales
--         WHERE nro_supermercado = @nro_supermercado;

--         -- Insertar el nuevo registro con el nuevo nro_sucursal
--         INSERT INTO sucursales
--             (
--             nro_supermercado, nro_sucursal, nom_sucursal, calle, nro_calle,
--             telefonos, coord_latitud, coord_longitud, nro_localidad, habilitada
--             )
--         VALUES
--             (
--                 @nro_supermercado, @nuevo_nro_sucursal, @nom_sucursal, @calle, @nro_calle,
--                 @telefonos, @coord_latitud, @coord_longitud, @nro_localidad, @habilitada
--         );
--     END
-- END;


-- Generar sp para obtener las sucursales agregando el razon_social del supermercado como columna
-- DROP PROCEDURE IF EXISTS sp_obtener_sucursales_con_supermercado;
-- CREATE PROCEDURE sp_obtener_sucursales_con_supermercado
-- AS
-- BEGIN
--     SELECT s.*, razon_social
--     FROM sucursales s
--         JOIN supermercados sm ON s.nro_supermercado = sm.nro_supermercado;
-- END;

-- -------------------------------------------------------------------------------------------
-- Generar sp para insertar una sucursal en la base de datos, si hay una sucursal con el mismo nombre_sucursal y nro_supermercado, actualizarla
-- El nro_sucursal es autoincremental
-- DROP PROCEDURE IF EXISTS sp_insertar_actualizar_sucursal;
-- CREATE PROCEDURE sp_insertar_actualizar_sucursal
--     @nro_supermercado INT,
--     @nom_sucursal VARCHAR(100),
--     @calle VARCHAR(100),
--     @nro_calle INT,
--     @telefonos VARCHAR(100),
--     @coord_latitud DECIMAL(9,6),
--     @coord_longitud DECIMAL(9,6),
--     @nro_localidad INT,
--     @habilitada BIT
-- AS
-- BEGIN
--     SET NOCOUNT ON;

--     -- Verificar si la sucursal ya existe en la base de datos de INDEC
--     IF EXISTS (
--         SELECT 1
--     FROM sucursales
--     WHERE nro_supermercado = @nro_supermercado
--         AND nom_sucursal = @nom_sucursal
--     )
--     BEGIN
--         -- Solo actualizar los registros si alguno de los datos ha cambiado
--         UPDATE sucursales
--         SET
--             calle = CASE WHEN calle <> @calle THEN @calle ELSE calle END,
--             nro_calle = CASE WHEN nro_calle <> @nro_calle THEN @nro_calle ELSE nro_calle END,
--             telefonos = CASE WHEN telefonos <> @telefonos THEN @telefonos ELSE telefonos END,
--             coord_latitud = CASE WHEN coord_latitud <> @coord_latitud THEN @coord_latitud ELSE coord_latitud END,
--             coord_longitud = CASE WHEN coord_longitud <> @coord_longitud THEN @coord_longitud ELSE coord_longitud END,
--             nro_localidad = CASE WHEN nro_localidad <> @nro_localidad THEN @nro_localidad ELSE nro_localidad END,
--             habilitada = CASE WHEN habilitada <> @habilitada THEN @habilitada ELSE habilitada END
--         WHERE
--             nro_supermercado = @nro_supermercado
--             AND nom_sucursal = @nom_sucursal;
--     END
--     ELSE
--     BEGIN
--         -- Obtener un nuevo nro_sucursal único para el nro_supermercado
--         DECLARE @nuevo_nro_sucursal INT;
--         SELECT @nuevo_nro_sucursal = ISNULL(MAX(nro_sucursal), 0) + 1
--         FROM sucursales
--         WHERE nro_supermercado = @nro_supermercado;

--         -- Insertar el nuevo registro con el nuevo nro_sucursal
--         INSERT INTO sucursales
--             (
--             nro_supermercado, nro_sucursal, nom_sucursal, calle, nro_calle,
--             telefonos, coord_latitud, coord_longitud, nro_localidad, habilitada
--             )
--         VALUES
--             (
--                 @nro_supermercado, @nuevo_nro_sucursal, @nom_sucursal, @calle, @nro_calle,
--                 @telefonos, @coord_latitud, @coord_longitud, @nro_localidad, @habilitada
--         );
--     END
-- END;


-- ------------- Version 2 ----------------
CREATE PROCEDURE sp_insertar_actualizar_sucursal
    @nro_supermercado INT,
    @nom_sucursal VARCHAR(100),
    @calle VARCHAR(100),
    @nro_calle INT,
    @telefonos VARCHAR(100),
    @coord_latitud DECIMAL(9,6),
    @coord_longitud DECIMAL(9,6),
    @nro_localidad INT,
    @habilitada BIT
AS
BEGIN
    SET NOCOUNT ON;

    -- Verificar si la sucursal ya existe en la base de datos
    IF EXISTS (
        SELECT 1
    FROM sucursales
    WHERE nro_supermercado = @nro_supermercado
        AND nom_sucursal = @nom_sucursal
    )
    BEGIN
        -- Solo actualizar los registros si alguno de los datos ha cambiado
        UPDATE sucursales
        SET
            calle = CASE WHEN calle <> @calle THEN @calle ELSE calle END,
            nro_calle = CASE WHEN nro_calle <> @nro_calle THEN @nro_calle ELSE nro_calle END,
            telefonos = CASE WHEN telefonos <> @telefonos THEN @telefonos ELSE telefonos END,
            coord_latitud = CASE WHEN coord_latitud <> @coord_latitud THEN @coord_latitud ELSE coord_latitud END,
            coord_longitud = CASE WHEN coord_longitud <> @coord_longitud THEN @coord_longitud ELSE coord_longitud END,
            nro_localidad = CASE WHEN nro_localidad <> @nro_localidad THEN @nro_localidad ELSE nro_localidad END,
            habilitada = CASE WHEN habilitada <> @habilitada THEN @habilitada ELSE habilitada END
        WHERE
            nro_supermercado = @nro_supermercado
            AND nom_sucursal = @nom_sucursal;
    END
    ELSE
    BEGIN
        -- Obtener un nuevo nro_sucursal único en toda la tabla
        DECLARE @nuevo_nro_sucursal INT;
        SELECT @nuevo_nro_sucursal = ISNULL(MAX(nro_sucursal), 0) + 1
        FROM sucursales;

        -- Insertar el nuevo registro con el nuevo nro_sucursal único
        INSERT INTO sucursales
            (
            nro_supermercado, nro_sucursal, nom_sucursal, calle, nro_calle,
            telefonos, coord_latitud, coord_longitud, nro_localidad, habilitada
            )
        VALUES
            (
                @nro_supermercado, @nuevo_nro_sucursal, @nom_sucursal, @calle, @nro_calle,
                @telefonos, @coord_latitud, @coord_longitud, @nro_localidad, @habilitada
        );
    END
END;


-- DELETE FROM sucursales; 
-- SELECT * FROM sucursales;
-- EXEC sp_insertar_actualizar_sucursal 1010, 'Sucursal Centro', 'Calle 1', 123, '123456', -34.123456, -58.123456, 1, 1;