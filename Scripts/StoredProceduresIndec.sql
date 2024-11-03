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