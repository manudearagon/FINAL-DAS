-- CREATE PROCEDURE comparar_precios
--     @InputJson NVARCHAR(MAX)
-- -- JSON de entrada con la estructura especificada
-- AS
-- BEGIN
--     -- Parsear el JSON de entrada para obtener los códigos de barra
--     CREATE TABLE #CodigosBarra
--     (
--         CodBarra VARCHAR(50)
--     );

--     INSERT INTO #CodigosBarra
--         (CodBarra)
--     SELECT value
--     FROM OPENJSON(@InputJson, '$.productsId');

--     -- Obtener los productos y sus precios en los supermercados
--     CREATE TABLE #PreciosProductos
--     (
--         CodBarra VARCHAR(13),
--         NroSupermercado INT,
--         NomSupermercado VARCHAR(255),
--         Precio DECIMAL(18, 2),
--         Vigente BIT
--     );

--     INSERT INTO #PreciosProductos
--     SELECT
--         ps.cod_barra,
--         ps.nro_supermercado,
--         s.razon_social AS NomSupermercado,
--         ps.precio,
--         CASE 
--             WHEN ps.fecha_ult_actualizacion >= DATEADD(MONTH, -6, GETDATE()) THEN 1
--             ELSE 0
--         END AS Vigente
--     FROM productos_supermercados ps
--         INNER JOIN sucursales su ON ps.nro_supermercado = su.nro_supermercado AND ps.nro_sucursal = su.nro_sucursal
--         INNER JOIN supermercados s ON ps.nro_supermercado = s.nro_supermercado
--     WHERE ps.cod_barra IN (SELECT CodBarra
--         FROM #CodigosBarra)
--         AND su.habilitada = 1;

--     -- Determinar los mejores precios para cada producto
--     CREATE TABLE #MejorPrecio
--     (
--         CodBarra VARCHAR(13),
--         NroSupermercado INT,
--         MejorPrecio BIT
--     );

--     INSERT INTO #MejorPrecio
--     SELECT
--         CodBarra,
--         NroSupermercado,
--         CASE WHEN Precio = MIN(Precio) OVER (PARTITION BY CodBarra) THEN 1 ELSE 0 END AS MejorPrecio
--     FROM #PreciosProductos;

--     -- Obtener el supermercado con el menor costo acumulado
--     CREATE TABLE #SupermercadoResumen
--     (
--         NroSupermercado INT,
--         NomSupermercado VARCHAR(255),
--         TotalProductos INT,
--         TotalPrecio DECIMAL(18, 2)
--     );

--     INSERT INTO #SupermercadoResumen
--     SELECT
--         pp.NroSupermercado,
--         pp.NomSupermercado,
--         COUNT(DISTINCT pp.CodBarra) AS TotalProductos,
--         SUM(pp.Precio) AS TotalPrecio
--     FROM #PreciosProductos pp
--     WHERE pp.CodBarra IN (SELECT CodBarra
--     FROM #MejorPrecio
--     WHERE MejorPrecio = 1)
--     GROUP BY pp.NroSupermercado, pp.NomSupermercado;

--     -- Seleccionar el supermercado recomendado
--     SELECT TOP 1
--         NomSupermercado,
--         TotalProductos,
--         TotalPrecio
--     INTO #SupermercadoRecomendado
--     FROM #SupermercadoResumen
--     ORDER BY TotalPrecio ASC;

--     -- Generar la respuesta JSON
--     SELECT
--         p.cod_barra AS CodBarra,
--         p.nom_producto AS Nombre,
--         p.desc_producto AS Descripcion,
--         CAST(NULL AS VARCHAR(MAX)) AS Imagen, -- Imagen omitida por ser VARBINARY(MAX)
--         (
--             SELECT
--             pp.NroSupermercado AS nroSupermercado,
--             pp.NomSupermercado AS nomSupermercado,
--             pp.Precio AS precio,
--             mp.MejorPrecio AS mejorPrecio,
--             pp.Vigente AS vigente
--         FROM #PreciosProductos pp
--             INNER JOIN #MejorPrecio mp
--             ON pp.CodBarra = mp.CodBarra AND pp.NroSupermercado = mp.NroSupermercado
--         WHERE pp.CodBarra = p.cod_barra
--         FOR JSON PATH
--         ) AS Precios
--     FROM productos p
--     WHERE p.cod_barra IN (SELECT CodBarra
--     FROM #CodigosBarra)
--     FOR JSON PATH;

--         -- Limpiar tablas temporales
--         DROP TABLE #CodigosBarra;
--         DROP TABLE #PreciosProductos;
--         DROP TABLE #MejorPrecio;
--         DROP TABLE #SupermercadoResumen;
--         DROP TABLE #SupermercadoRecomendado;
--     END;

-- V2
-- DROP PROCEDURE IF EXISTS ComparadorPrecios;
-- CREATE PROCEDURE ComparadorPrecios
--     @CodigosBarra NVARCHAR(MAX)
-- -- Códigos de barra separados por comas
-- AS
-- BEGIN
--     -- Dividir el array en elementos individuales
--     CREATE TABLE #CodigosBarra
--     (
--         CodBarra VARCHAR(50)
--     );

--     INSERT INTO #CodigosBarra
--         (CodBarra)
--     SELECT value
--     FROM STRING_SPLIT(@CodigosBarra, ',');

--     -- Obtener los productos y sus precios en los supermercados
--     CREATE TABLE #PreciosProductos
--     (
--         CodBarra VARCHAR(50),
--         NroSupermercado INT,
--         NomSupermercado VARCHAR(255),
--         Precio DECIMAL(18, 2),
--         Vigente BIT
--     );

--     INSERT INTO #PreciosProductos
--     SELECT
--         ps.cod_barra,
--         ps.nro_supermercado,
--         s.razon_social AS NomSupermercado,
--         ps.precio,
--         CASE 
--             WHEN ps.fecha_ult_actualizacion >= DATEADD(MONTH, -6, GETDATE()) THEN 1
--             ELSE 0
--         END AS Vigente
--     FROM productos_supermercados ps
--         INNER JOIN sucursales su ON ps.nro_supermercado = su.nro_supermercado AND ps.nro_sucursal = su.nro_sucursal
--         INNER JOIN supermercados s ON ps.nro_supermercado = s.nro_supermercado
--     WHERE ps.cod_barra IN (SELECT CodBarra
--         FROM #CodigosBarra)
--         AND su.habilitada = 1;

--     -- Determinar los mejores precios para cada producto
--     CREATE TABLE #MejorPrecio
--     (
--         CodBarra VARCHAR(50),
--         NroSupermercado INT,
--         MejorPrecio BIT
--     );

--     INSERT INTO #MejorPrecio
--     SELECT
--         CodBarra,
--         NroSupermercado,
--         CASE WHEN Precio = MIN(Precio) OVER (PARTITION BY CodBarra) THEN 1 ELSE 0 END AS MejorPrecio
--     FROM #PreciosProductos;

--     -- Obtener el supermercado con el menor costo acumulado
--     CREATE TABLE #SupermercadoResumen
--     (
--         NroSupermercado INT,
--         NomSupermercado VARCHAR(255),
--         TotalProductos INT,
--         TotalPrecio DECIMAL(18, 2)
--     );

--     INSERT INTO #SupermercadoResumen
--     SELECT
--         pp.NroSupermercado,
--         pp.NomSupermercado,
--         COUNT(DISTINCT pp.CodBarra) AS TotalProductos,
--         SUM(pp.Precio) AS TotalPrecio
--     FROM #PreciosProductos pp
--     WHERE pp.CodBarra IN (SELECT CodBarra
--     FROM #MejorPrecio
--     WHERE MejorPrecio = 1)
--     GROUP BY pp.NroSupermercado, pp.NomSupermercado;

--     -- Seleccionar el supermercado recomendado
--     SELECT TOP 1
--         NomSupermercado,
--         TotalProductos,
--         TotalPrecio
--     INTO #SupermercadoRecomendado
--     FROM #SupermercadoResumen
--     ORDER BY TotalPrecio ASC;

--     -- Generar la respuesta JSON
--     SELECT
--         p.cod_barra AS CodBarra,
--         p.nom_producto AS Nombre,
--         p.desc_producto AS Descripcion,
--         CAST(NULL AS VARCHAR(MAX)) AS Imagen,
--         (
--             SELECT
--             pp.NroSupermercado AS nroSupermercado,
--             pp.NomSupermercado AS nomSupermercado,
--             pp.Precio AS precio,
--             mp.MejorPrecio AS mejorPrecio,
--             pp.Vigente AS vigente
--         FROM #PreciosProductos pp
--             INNER JOIN #MejorPrecio mp
--             ON pp.CodBarra = mp.CodBarra AND pp.NroSupermercado = mp.NroSupermercado
--         WHERE pp.CodBarra = p.cod_barra
--         FOR JSON PATH
--         ) AS Precios
--     FROM productos p
--     WHERE p.cod_barra IN (SELECT CodBarra
--     FROM #CodigosBarra)
--     FOR JSON PATH;
--         -- Limpiar tablas temporales
--         DROP TABLE #CodigosBarra;
--         DROP TABLE #PreciosProductos;
--         DROP TABLE #MejorPrecio;
--         DROP TABLE #SupermercadoResumen;
--         DROP TABLE #SupermercadoRecomendado;
--     END;
-- --------------------------------------------------------------------------------------------------
-- V3
-- CREATE PROCEDURE ComparadorPrecios
--     @CodigosBarra NVARCHAR(MAX)
-- -- Códigos de barra separados por comas
-- AS
-- BEGIN
--     -- Dividir el array en elementos individuales
--     CREATE TABLE #CodigosBarra
--     (
--         CodBarra VARCHAR(50)
--     );

--     INSERT INTO #CodigosBarra
--         (CodBarra)
--     SELECT value
--     FROM STRING_SPLIT(@CodigosBarra, ',');

--     -- Obtener los productos y sus precios en los supermercados
--     CREATE TABLE #PreciosProductos
--     (
--         CodBarra VARCHAR(50),
--         NroSupermercado INT,
--         NomSupermercado VARCHAR(255),
--         Precio DECIMAL(18, 2),
--         Vigente BIT
--     );

--     INSERT INTO #PreciosProductos
--     SELECT
--         ps.cod_barra,
--         ps.nro_supermercado,
--         s.razon_social AS NomSupermercado,
--         ps.precio,
--         CASE 
--             WHEN ps.fecha_ult_actualizacion >= DATEADD(MONTH, -6, GETDATE()) THEN 1
--             ELSE 0
--         END AS Vigente
--     FROM productos_supermercados ps
--         INNER JOIN sucursales su ON ps.nro_supermercado = su.nro_supermercado AND ps.nro_sucursal = su.nro_sucursal
--         INNER JOIN supermercados s ON ps.nro_supermercado = s.nro_supermercado
--     WHERE ps.cod_barra IN (SELECT CodBarra
--         FROM #CodigosBarra)
--         AND su.habilitada = 1;

--     -- Determinar los mejores precios para cada producto
--     CREATE TABLE #MejorPrecio
--     (
--         CodBarra VARCHAR(50),
--         NroSupermercado INT,
--         MejorPrecio BIT
--     );

--     INSERT INTO #MejorPrecio
--     SELECT
--         CodBarra,
--         NroSupermercado,
--         CASE WHEN Precio = MIN(Precio) OVER (PARTITION BY CodBarra) THEN 1 ELSE 0 END AS MejorPrecio
--     FROM #PreciosProductos;

--     -- Obtener el supermercado con el menor costo acumulado
--     CREATE TABLE #SupermercadoResumen
--     (
--         NroSupermercado INT,
--         NomSupermercado VARCHAR(255),
--         TotalProductos INT,
--         TotalPrecio DECIMAL(18, 2)
--     );

--     INSERT INTO #SupermercadoResumen
--     SELECT
--         pp.NroSupermercado,
--         pp.NomSupermercado,
--         COUNT(DISTINCT pp.CodBarra) AS TotalProductos,
--         SUM(pp.Precio) AS TotalPrecio
--     FROM #PreciosProductos pp
--     WHERE pp.CodBarra IN (SELECT CodBarra
--     FROM #MejorPrecio
--     WHERE MejorPrecio = 1)
--     GROUP BY pp.NroSupermercado, pp.NomSupermercado;

--     -- Seleccionar el supermercado recomendado
--     SELECT TOP 1
--         NomSupermercado,
--         TotalProductos,
--         TotalPrecio
--     INTO #SupermercadoRecomendado
--     FROM #SupermercadoResumen
--     ORDER BY TotalPrecio ASC;

--     SELECT
--         p.cod_barra AS CodBarra,
--         p.nom_producto AS Nombre,
--         p.desc_producto AS Descripcion,
--         CAST(NULL AS VARCHAR(MAX)) AS Imagen,
--         (
--                     SELECT
--             pp.NroSupermercado AS nroSupermercado,
--             pp.NomSupermercado AS nomSupermercado,
--             pp.Precio AS precio,
--             mp.MejorPrecio AS mejorPrecio,
--             pp.Vigente AS vigente
--         FROM #PreciosProductos pp
--             INNER JOIN #MejorPrecio mp
--             ON pp.CodBarra = mp.CodBarra AND pp.NroSupermercado = mp.NroSupermercado
--         WHERE pp.CodBarra = p.cod_barra
--         FOR JSON PATH
--                 ) AS Precios
--     FROM productos p
--     WHERE p.cod_barra IN (SELECT CodBarra
--     FROM #CodigosBarra)
--     FOR JSON PATH

--     -- Limpiar tablas temporales
--     DROP TABLE #CodigosBarra;
--     DROP TABLE #PreciosProductos;
--     DROP TABLE #MejorPrecio;
--     DROP TABLE #SupermercadoResumen;
--     DROP TABLE #SupermercadoRecomendado;
--     END;

-- EXEC ComparadorPrecios
-- @CodigosBarra = '7791234560011,7791234560028,7791234560035';

-----------------------------------------------------------------------
-- V4 ---> Esta es la versión que se está utilizando POR AHORA

-- EXEC ComparadorPrecios
-- @CodigosBarra = '7791234560011,7791234560028,7791234560035';

CREATE PROCEDURE ComparadorPreciosV1
    @CodigosBarra NVARCHAR(MAX)
AS
BEGIN
    -- Crear tablas temporales y procesar datos
    CREATE TABLE #CodigosBarra
    (
        CodBarra VARCHAR(50)
    );
    INSERT INTO #CodigosBarra
        (CodBarra)
    SELECT value
    FROM STRING_SPLIT(@CodigosBarra, ',');

    CREATE TABLE #PreciosProductos
    (
        CodBarra VARCHAR(50),
        NroSupermercado INT,
        NomSupermercado VARCHAR(255),
        Precio DECIMAL(18, 2),
        Vigente BIT
    );

    INSERT INTO #PreciosProductos
    SELECT
        ps.cod_barra,
        ps.nro_supermercado,
        s.razon_social AS NomSupermercado,
        ps.precio,
        CASE 
            WHEN ps.fecha_ult_actualizacion >= DATEADD(MONTH, -6, GETDATE()) THEN 1
            ELSE 0
        END AS Vigente
    FROM productos_supermercados ps
        INNER JOIN sucursales su ON ps.nro_supermercado = su.nro_supermercado AND ps.nro_sucursal = su.nro_sucursal
        INNER JOIN supermercados s ON ps.nro_supermercado = s.nro_supermercado
    WHERE ps.cod_barra IN (SELECT CodBarra
        FROM #CodigosBarra) AND su.habilitada = 1;

    CREATE TABLE #MejorPrecio
    (
        CodBarra VARCHAR(50),
        NroSupermercado INT,
        MejorPrecio BIT
    );

    INSERT INTO #MejorPrecio
    SELECT CodBarra, NroSupermercado,
        CASE WHEN Precio = MIN(Precio) OVER (PARTITION BY CodBarra) THEN 1 ELSE 0 END AS MejorPrecio
    FROM #PreciosProductos;

    CREATE TABLE #SupermercadoResumen
    (
        NroSupermercado INT,
        NomSupermercado VARCHAR(255),
        TotalProductos INT,
        TotalPrecio DECIMAL(18, 2)
    );

    INSERT INTO #SupermercadoResumen
    SELECT
        pp.NroSupermercado,
        pp.NomSupermercado,
        COUNT(DISTINCT pp.CodBarra) AS TotalProductos,
        SUM(pp.Precio) AS TotalPrecio
    FROM #PreciosProductos pp
    WHERE pp.CodBarra IN (SELECT CodBarra
    FROM #MejorPrecio
    WHERE MejorPrecio = 1)
    GROUP BY pp.NroSupermercado, pp.NomSupermercado;

    -- Generar JSON directamente como resultado final
    SELECT
        p.cod_barra AS CodBarra,
        p.nom_producto AS Nombre,
        p.desc_producto AS Descripcion,
        CAST(NULL AS VARCHAR(MAX)) AS Imagen,
        (
            SELECT
            pp.NroSupermercado AS nroSupermercado,
            pp.NomSupermercado AS nomSupermercado,
            pp.Precio AS precio,
            mp.MejorPrecio AS mejorPrecio,
            pp.Vigente AS vigente
        FROM #PreciosProductos pp
            INNER JOIN #MejorPrecio mp
            ON pp.CodBarra = mp.CodBarra AND pp.NroSupermercado = mp.NroSupermercado
        WHERE pp.CodBarra = p.cod_barra
        FOR JSON PATH
        ) AS Precios
    FROM productos p
    WHERE p.cod_barra IN (SELECT CodBarra
    FROM #CodigosBarra)
    FOR JSON PATH;

        -- Limpiar tablas temporales
        DROP TABLE #CodigosBarra;
        DROP TABLE #PreciosProductos;
        DROP TABLE #MejorPrecio;
        DROP TABLE #SupermercadoResumen;
    END;



-- DROP PROCEDURE IF EXISTS ComparadorPreciosV1;

-- EXEC ComparadorPreciosV1 @CodigosBarra = '7791234560011,7791234560028,7791234560035';