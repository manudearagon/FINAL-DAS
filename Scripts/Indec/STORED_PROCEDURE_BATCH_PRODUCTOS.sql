-- CREATE PROCEDURE InsertOrUpdateProductosSupermercados_JSON
--     @ProductosJSON NVARCHAR(MAX)
-- -- Recibe un JSON con la lista de productos
-- AS
-- BEGIN
--     SET NOCOUNT ON;

--     -- Parsear el JSON a una tabla temporal
--     DECLARE @ProductosSucursal TABLE (
--         nro_supermercado INT,
--         nro_sucursal INT,
--         cod_barra VARCHAR(50),
--         precio DECIMAL(10, 2),
--         vigente BIT
--     );

--     INSERT INTO @ProductosSucursal
--         (nro_supermercado, nro_sucursal, cod_barra, precio, vigente)
--     SELECT
--         JSON_VALUE(value, '$.nro_supermercado') AS nro_supermercado,
--         JSON_VALUE(value, '$.nro_sucursal') AS nro_sucursal,
--         JSON_VALUE(value, '$.cod_barra') AS cod_barra,
--         CAST(JSON_VALUE(value, '$.precio') AS DECIMAL(10, 2)) AS precio,
--         CAST(JSON_VALUE(value, '$.vigente') AS BIT) AS vigente
--     FROM OPENJSON(@ProductosJSON);

--     -- Procesar los datos con MERGE
--     MERGE INTO productos_supermercados AS target
--     USING @ProductosSucursal AS source
--     ON target.nro_supermercado = source.nro_supermercado
--         AND target.nro_sucursal = source.nro_sucursal
--         AND target.cod_barra = source.cod_barra
--     WHEN MATCHED THEN
--         UPDATE SET
--             target.precio = source.precio,
--             target.fecha_ult_actualizacion = GETDATE()
--     WHEN NOT MATCHED THEN
--         INSERT (nro_supermercado, nro_sucursal, cod_barra, precio, fecha_ult_actualizacion)
--         VALUES (source.nro_supermercado, source.nro_sucursal, source.cod_barra, source.precio, GETDATE());
-- END;

-- DECLARE @JsonInput NVARCHAR(MAX) = N'
-- [
--     {"nro_supermercado": 1, "nro_sucursal": 1, "cod_barra": "000000000004", "precio": 25.50, "vigente": 1},
--     {"nro_supermercado": 1, "nro_sucursal": 1, "cod_barra": "000000000005", "precio": 15.75, "vigente": 1},
--     {"nro_supermercado": 1, "nro_sucursal": 1, "cod_barra": "000000000014", "precio": 10.99, "vigente": 1}
-- ]';

-- EXEC InsertOrUpdateProductosSupermercados_JSON @JsonInput;
