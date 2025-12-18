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
SELECT NULL, 'Infogral', '8594', '8594', '5DoJ4D?Iu-', '', '', NULL, '0', '0', 0, '', '', '', '', 0, 0, 0, '', '', '', NULL,'', '', '', 0, '', '', '', '', @idPerfil, 'Infogral', '#FFFFFF', 0x0, 1
WHERE NOT EXISTS (
	SELECT 1
	FROM [igtpos].[dbo].[User]
	WHERE [Name] = 'Infogral'
	AND DeletionDate IS NULL
);

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\usuarios\Usuario-Infogral.png'', SINGLE_BLOB) AS ImagenBinaria
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
SELECT NULL, 'Miguel', '7618', '8881', 'Yy1>0N}R', '', '', NULL, '1', '1', 0, '', '', '', '', 0, 0, 0, '', '', '', NULL,'', '', '', 0, '', '', '', '', @idPerfil, 'Miguel', '#FFFFFF', 0x0, 1
WHERE NOT EXISTS (
	SELECT 1
	FROM [igtpos].[dbo].[User]
	WHERE [Name] = 'Miguel'
	AND DeletionDate IS NULL
);

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\usuarios\Administrador.jpg'', SINGLE_BLOB) AS ImagenBinaria
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
SELECT NULL, 'Néstor', '2577', '8774', 'nEstOr-265', '', '', NULL, '1', '1', 0, '', '', '', '', 0, 0, 0, '', '', '', NULL,'', '', '', 0, '', '', '', '', @idPerfil, 'Néstor', '#FFFFFF', 0x0, 1
WHERE NOT EXISTS (
	SELECT 1
	FROM [igtpos].[dbo].[User]
	WHERE [Name] = 'Néstor'
	AND DeletionDate IS NULL
);

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\usuarios\Encargado.jpg'', SINGLE_BLOB) AS ImagenBinaria
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
SELECT NULL, 'Lidia', '4850', '0208', '', '', '', NULL, '1', '1', 0, '', '', '', '', 0, 0, 0, '', '', '', NULL,'', '', '', 0, '', '', '', '', @idPerfil, 'Lidia', '#FFFFFF', 0x0, 1
WHERE NOT EXISTS (
	SELECT 1
	FROM [igtpos].[dbo].[User]
	WHERE [Name] = 'Lidia'
	AND DeletionDate IS NULL
);

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\usuarios\Camarero.jpg'', SINGLE_BLOB) AS ImagenBinaria
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
SELECT NULL, 'Pablo', '4460', '4319', '', '', '', NULL, '1', '1', 0, '', '', '', '', 0, 0, 0, '', '', '', NULL,'', '', '', 0, '', '', '', '', @idPerfil, 'Pablo', '#FFFFFF', 0x0, 1
WHERE NOT EXISTS (
	SELECT 1
	FROM [igtpos].[dbo].[User]
	WHERE [Name] = 'Pablo'
	AND DeletionDate IS NULL
);

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\usuarios\Camarero.jpg'', SINGLE_BLOB) AS ImagenBinaria
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
SELECT NULL, 'Pepe', '1479', '4666', '', '', '', NULL, '1', '1', 0, '', '', '', '', 0, 0, 0, '', '', '', NULL,'', '', '', 0, '', '', '', '', @idPerfil, 'Pepe', '#FFFFFF', 0x0, 1
WHERE NOT EXISTS (
	SELECT 1
	FROM [igtpos].[dbo].[User]
	WHERE [Name] = 'Pepe'
	AND DeletionDate IS NULL
);

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\usuarios\Cocinero.jpg'', SINGLE_BLOB) AS ImagenBinaria
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

