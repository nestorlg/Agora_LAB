DECLARE @SQL_QUERY NVARCHAR(MAX);
DECLARE @contenido VARBINARY(MAX);
DECLARE @noteId INT;
DECLARE @categoryId INT;
SET NOCOUNT ON;

INSERT INTO [igtpos].[dbo].PredefinedNote
SELECT NULL, 'CON HIELO', 0, 0, 1, 0, 'c/HIELO', '#BACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].PredefinedNote
	WHERE [Text] = 'CON HIELO'
	AND DeletionDate IS NULL
);

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\Nest\Desktop\infogral\dist-maker (local)\en-desarrollo\imagenesAgora\notas\con-hielo.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT',@contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE	[igtpos].[dbo].PredefinedNote
SET [StyleImageId] = 
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE [Text] = 'CON HIELO';

SET @noteId = (
	SELECT Id
	FROM [igtpos].[dbo].PredefinedNote
	WHERE [Text] = 'CON HIELO'
	AND DeletionDate IS NULL
);

SET @categoryId = (
	SELECT Id
	FROM [igtpos].[dbo].Category
	WHERE [Name] = 'REFRESCOS'
);

INSERT INTO [igtpos].[dbo].PredefinedNotesGroups
SELECT @noteId, 'Category', @categoryId
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].PredefinedNotesGroups
	WHERE PredefinedNoteId = @noteId
	AND ProductGroupId = @categoryId
);

SET @categoryId = (
	SELECT Id
	FROM [igtpos].[dbo].Category
	WHERE [Name] = 'VODKAS'
);

INSERT INTO [igtpos].[dbo].PredefinedNotesGroups
SELECT @noteId, 'Category', @categoryId
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].PredefinedNotesGroups
	WHERE PredefinedNoteId = @noteId
	AND ProductGroupId = @categoryId
);

INSERT INTO [igtpos].[dbo].PredefinedNote
SELECT NULL, 'SIN HIELO', 0, 0, 1, 0, 's/HIELO', '#BACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].PredefinedNote
	WHERE [Text] = 'SIN HIELO'
	AND DeletionDate IS NULL
);

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\Nest\Desktop\infogral\dist-maker (local)\en-desarrollo\imagenesAgora\notas\sin-hielo.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT',@contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE	[igtpos].[dbo].PredefinedNote
SET [StyleImageId] = 
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE [Text] = 'SIN HIELO';

SET @noteId = (
	SELECT Id
	FROM [igtpos].[dbo].PredefinedNote
	WHERE [Text] = 'SIN HIELO'
	AND DeletionDate IS NULL
);

SET @categoryId = (
	SELECT Id
	FROM [igtpos].[dbo].Category
	WHERE [Name] = 'REFRESCOS'
);

INSERT INTO [igtpos].[dbo].PredefinedNotesGroups
SELECT @noteId, 'Category', @categoryId
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].PredefinedNotesGroups
	WHERE PredefinedNoteId = @noteId
	AND ProductGroupId = @categoryId
);

SET @categoryId = (
	SELECT Id
	FROM [igtpos].[dbo].Category
	WHERE [Name] = 'VODKAS'
);

INSERT INTO [igtpos].[dbo].PredefinedNotesGroups
SELECT @noteId, 'Category', @categoryId
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].PredefinedNotesGroups
	WHERE PredefinedNoteId = @noteId
	AND ProductGroupId = @categoryId
);

INSERT INTO [igtpos].[dbo].PredefinedNote
SELECT NULL, 'CON LIMÓN', 0, 0, 1, 0, 'c/LIMÓN', '#BACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].PredefinedNote
	WHERE [Text] = 'CON LIMÓN'
	AND DeletionDate IS NULL
);

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\Nest\Desktop\infogral\dist-maker (local)\en-desarrollo\imagenesAgora\notas\con-limon.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT',@contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE	[igtpos].[dbo].PredefinedNote
SET [StyleImageId] = 
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE [Text] = 'CON LIMÓN';

SET @noteId = (
	SELECT Id
	FROM [igtpos].[dbo].PredefinedNote
	WHERE [Text] = 'CON LIMÓN'
	AND DeletionDate IS NULL
);

SET @categoryId = (
	SELECT Id
	FROM [igtpos].[dbo].Category
	WHERE [Name] = 'REFRESCOS'
);

INSERT INTO [igtpos].[dbo].PredefinedNotesGroups
SELECT @noteId, 'Category', @categoryId
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].PredefinedNotesGroups
	WHERE PredefinedNoteId = @noteId
	AND ProductGroupId = @categoryId
);

SET @categoryId = (
	SELECT Id
	FROM [igtpos].[dbo].Category
	WHERE [Name] = 'VODKAS'
);

INSERT INTO [igtpos].[dbo].PredefinedNotesGroups
SELECT @noteId, 'Category', @categoryId
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].PredefinedNotesGroups
	WHERE PredefinedNoteId = @noteId
	AND ProductGroupId = @categoryId
);

INSERT INTO [igtpos].[dbo].PredefinedNote
SELECT NULL, 'SIN LIMÓN', 0, 0, 1, 0, 's/LIMÓN', '#BACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].PredefinedNote
	WHERE [Text] = 'SIN LIMÓN'
	AND DeletionDate IS NULL
);

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\Nest\Desktop\infogral\dist-maker (local)\en-desarrollo\imagenesAgora\notas\sin-limon.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT',@contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE	[igtpos].[dbo].PredefinedNote
SET [StyleImageId] = 
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE [Text] = 'SIN LIMÓN';

SET @noteId = (
	SELECT Id
	FROM [igtpos].[dbo].PredefinedNote
	WHERE [Text] = 'SIN LIMÓN'
	AND DeletionDate IS NULL
);

SET @categoryId = (
	SELECT Id
	FROM [igtpos].[dbo].Category
	WHERE [Name] = 'REFRESCOS'
);

INSERT INTO [igtpos].[dbo].PredefinedNotesGroups
SELECT @noteId, 'Category', @categoryId
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].PredefinedNotesGroups
	WHERE PredefinedNoteId = @noteId
	AND ProductGroupId = @categoryId
);

SET @categoryId = (
	SELECT Id
	FROM [igtpos].[dbo].Category
	WHERE [Name] = 'VODKAS'
);

INSERT INTO [igtpos].[dbo].PredefinedNotesGroups
SELECT @noteId, 'Category', @categoryId
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].PredefinedNotesGroups
	WHERE PredefinedNoteId = @noteId
	AND ProductGroupId = @categoryId
);

