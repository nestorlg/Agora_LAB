SET NOCOUNT ON;

DECLARE @SQL_QUERY NVARCHAR(MAX);
DECLARE @contenido VARBINARY(MAX);
DECLARE @idPerfil INT;
SET NOCOUNT ON;

INSERT INTO [igtpos].[dbo].UserProfile
SELECT 'Custom', NULL, 'Administrador', 1000004, 1000003
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].UserProfile
	WHERE [Name] = 'Administrador'
	AND DeletionDate IS NULL
);

SELECT @idPerfil = Id
FROM [igtpos].[dbo].UserProfile
WHERE [Name] = 'Administrador';

INSERT INTO [igtpos].[dbo].[User]
SELECT NULL, 'Infogral', '6624', '6624', ':R=OArVo9Y', '', '', NULL, '0', '0', 0, '', '', '', '', 0, 0, 0, '', '', '', NULL,'', '', '', 0, '', '', '', '', @idPerfil, 'Infogral', '#FFFFFF', 0x0, 1
WHERE NOT EXISTS (
	SELECT 1
	FROM [igtpos].[dbo].[User]
	WHERE [Name] = 'Infogral'
	AND DeletionDate IS NULL
);

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\Nest\Desktop\infogral\dist-maker (local)\en-desarrollo\imagenesAgora\usuarios\Usuario-Infogral.png'', SINGLE_BLOB) AS ImagenBinaria
WHERE BulkColumn IS NOT NULL;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].[Image]
SELECT NEWID(), @contenido;

UPDATE [igtpos].[dbo].[User]
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE [Name] = 'Infogral' AND DeletionDate IS NULL;

INSERT INTO [igtpos].[dbo].UserProfile
SELECT 'Custom', NULL, 'Administrador', 1000004, 1000003
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].UserProfile
	WHERE [Name] = 'Administrador'
	AND DeletionDate IS NULL
);

SELECT @idPerfil = Id
FROM [igtpos].[dbo].UserProfile
WHERE [Name] = 'Administrador';

INSERT INTO [igtpos].[dbo].[User]
SELECT NULL, 'Miguel', '1271', '5259', 'Vt|nXe1[Aavq', '', '', NULL, '1', '1', 0, '', '', '', '', 0, 0, 0, '', '', '', NULL,'', '', '', 0, '', '', '', '', @idPerfil, 'Miguel', '#FFFFFF', 0x0, 1
WHERE NOT EXISTS (
	SELECT 1
	FROM [igtpos].[dbo].[User]
	WHERE [Name] = 'Miguel'
	AND DeletionDate IS NULL
);

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\Nest\Desktop\infogral\dist-maker (local)\en-desarrollo\imagenesAgora\usuarios\Administrador.jpg'', SINGLE_BLOB) AS ImagenBinaria
WHERE BulkColumn IS NOT NULL;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].[Image]
SELECT NEWID(), @contenido;

UPDATE [igtpos].[dbo].[User]
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE [Name] = 'Miguel' AND DeletionDate IS NULL;

INSERT INTO [igtpos].[dbo].UserProfile
SELECT 'Custom', NULL, 'Encargado', 1000004, 1000003
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].UserProfile
	WHERE [Name] = 'Encargado'
	AND DeletionDate IS NULL
);

SELECT @idPerfil = Id
FROM [igtpos].[dbo].UserProfile
WHERE [Name] = 'Encargado';

INSERT INTO [igtpos].[dbo].[User]
SELECT NULL, 'Néstor', '6892', '0131', 'nEstOr-265', '', '', NULL, '1', '1', 0, '', '', '', '', 0, 0, 0, '', '', '', NULL,'', '', '', 0, '', '', '', '', @idPerfil, 'Néstor', '#FFFFFF', 0x0, 1
WHERE NOT EXISTS (
	SELECT 1
	FROM [igtpos].[dbo].[User]
	WHERE [Name] = 'Néstor'
	AND DeletionDate IS NULL
);

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\Nest\Desktop\infogral\dist-maker (local)\en-desarrollo\imagenesAgora\usuarios\Encargado.jpg'', SINGLE_BLOB) AS ImagenBinaria
WHERE BulkColumn IS NOT NULL;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].[Image]
SELECT NEWID(), @contenido;

UPDATE [igtpos].[dbo].[User]
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE [Name] = 'Néstor' AND DeletionDate IS NULL;

INSERT INTO [igtpos].[dbo].UserProfile
SELECT 'Custom', NULL, 'Camarero', 1000004, 1000003
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].UserProfile
	WHERE [Name] = 'Camarero'
	AND DeletionDate IS NULL
);

SELECT @idPerfil = Id
FROM [igtpos].[dbo].UserProfile
WHERE [Name] = 'Camarero';

INSERT INTO [igtpos].[dbo].[User]
SELECT NULL, 'Lidia', '5001', '1403', '', '', '', NULL, '1', '1', 0, '', '', '', '', 0, 0, 0, '', '', '', NULL,'', '', '', 0, '', '', '', '', @idPerfil, 'Lidia', '#FFFFFF', 0x0, 1
WHERE NOT EXISTS (
	SELECT 1
	FROM [igtpos].[dbo].[User]
	WHERE [Name] = 'Lidia'
	AND DeletionDate IS NULL
);

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\Nest\Desktop\infogral\dist-maker (local)\en-desarrollo\imagenesAgora\usuarios\Camarero.jpg'', SINGLE_BLOB) AS ImagenBinaria
WHERE BulkColumn IS NOT NULL;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].[Image]
SELECT NEWID(), @contenido;

UPDATE [igtpos].[dbo].[User]
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE [Name] = 'Lidia' AND DeletionDate IS NULL;

INSERT INTO [igtpos].[dbo].UserProfile
SELECT 'Custom', NULL, 'Camarero', 1000004, 1000003
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].UserProfile
	WHERE [Name] = 'Camarero'
	AND DeletionDate IS NULL
);

SELECT @idPerfil = Id
FROM [igtpos].[dbo].UserProfile
WHERE [Name] = 'Camarero';

INSERT INTO [igtpos].[dbo].[User]
SELECT NULL, 'Pablo', '0480', '5814', '', '', '', NULL, '1', '1', 0, '', '', '', '', 0, 0, 0, '', '', '', NULL,'', '', '', 0, '', '', '', '', @idPerfil, 'Pablo', '#FFFFFF', 0x0, 1
WHERE NOT EXISTS (
	SELECT 1
	FROM [igtpos].[dbo].[User]
	WHERE [Name] = 'Pablo'
	AND DeletionDate IS NULL
);

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\Nest\Desktop\infogral\dist-maker (local)\en-desarrollo\imagenesAgora\usuarios\Camarero.jpg'', SINGLE_BLOB) AS ImagenBinaria
WHERE BulkColumn IS NOT NULL;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].[Image]
SELECT NEWID(), @contenido;

UPDATE [igtpos].[dbo].[User]
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE [Name] = 'Pablo' AND DeletionDate IS NULL;

INSERT INTO [igtpos].[dbo].UserProfile
SELECT 'Custom', NULL, 'Cocinero', 1000004, 1000003
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].UserProfile
	WHERE [Name] = 'Cocinero'
	AND DeletionDate IS NULL
);

SELECT @idPerfil = Id
FROM [igtpos].[dbo].UserProfile
WHERE [Name] = 'Cocinero';

INSERT INTO [igtpos].[dbo].[User]
SELECT NULL, 'Pepe', '3095', '4976', '', '', '', NULL, '1', '1', 0, '', '', '', '', 0, 0, 0, '', '', '', NULL,'', '', '', 0, '', '', '', '', @idPerfil, 'Pepe', '#FFFFFF', 0x0, 1
WHERE NOT EXISTS (
	SELECT 1
	FROM [igtpos].[dbo].[User]
	WHERE [Name] = 'Pepe'
	AND DeletionDate IS NULL
);

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\Nest\Desktop\infogral\dist-maker (local)\en-desarrollo\imagenesAgora\usuarios\Cocinero.jpg'', SINGLE_BLOB) AS ImagenBinaria
WHERE BulkColumn IS NOT NULL;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].[Image]
SELECT NEWID(), @contenido;

UPDATE [igtpos].[dbo].[User]
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE [Name] = 'Pepe' AND DeletionDate IS NULL;

