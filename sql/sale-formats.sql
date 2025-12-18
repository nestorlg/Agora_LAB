SET NOCOUNT ON;

DECLARE @idFormato INT;

DECLARE @idProducto INT;
DECLARE @idTraduccion INT;
DECLARE @SQL_QUERY NVARCHAR(MAX);
DECLARE @contenido VARBINARY(MAX);
SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'DON PERIGNON';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'DON PERIGNON', @idProducto, NULL, 0, 0, 1, 1, 1, 'DON PERIGNON', 'DON PERIGNON', 2, 1, 'DON PERIG.', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'DON PERIGNON'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'DON PERIGNON', 'DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'DON PERIGNON', 'DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'DON PERIGNON', 'DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'DON PERIGNON', 'DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'DON PERIGNON', 'DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'DON PERIGNON', 'DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'DON PERIGNON', 'DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'DON PERIGNON', 'DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'DON PERIGNON', 'DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'DON PERIGNON', 'DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'DON PERIGNON';

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'DON PERIGNON';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'COPA DON PERIGNON', @idProducto, NULL, 1, 0, 0.2, 0, 1, 'COPA DON PERIGNON', 'COPA DON PERIGNON', 2, 1, 'COPA', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'COPA DON PERIGNON'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'COPA DON PERIGNON', 'COPA DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'COPA DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'COPA DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'COPA DON PERIGNON', 'COPA DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'COPA DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'COPA DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'COPA DON PERIGNON', 'COPA DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'COPA DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'COPA DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'COPA DON PERIGNON', 'COPA DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'COPA DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'COPA DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'COPA DON PERIGNON', 'COPA DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'COPA DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'COPA DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'COPA DON PERIGNON', 'COPA DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'COPA DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'COPA DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'COPA DON PERIGNON', 'COPA DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'COPA DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'COPA DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'COPA DON PERIGNON', 'COPA DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'COPA DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'COPA DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'COPA DON PERIGNON', 'COPA DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'COPA DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'COPA DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'COPA DON PERIGNON', 'COPA DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'COPA DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'COPA DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'COPA DON PERIGNON';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\cavas\copa.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 15, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'DON PERIGNON';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'BOTELLA DON PERIGNON', @idProducto, NULL, 1, 0, 1, 0, 1, 'BOT DON PERIGNON', 'BOT DON PERIGNON', 2, 1, 'BOTELLA', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'BOTELLA DON PERIGNON'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'BOTELLA DON PERIGNON', 'BOTELLA DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'BOTELLA DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'BOTELLA DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'BOTELLA DON PERIGNON', 'BOTELLA DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'BOTELLA DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'BOTELLA DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'BOTELLA DON PERIGNON', 'BOTELLA DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'BOTELLA DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'BOTELLA DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'BOTELLA DON PERIGNON', 'BOTELLA DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'BOTELLA DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'BOTELLA DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'BOTELLA DON PERIGNON', 'GARRAFA DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'BOTELLA DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'BOTELLA DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'BOTELLA DON PERIGNON', 'BOTELLA DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'BOTELLA DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'BOTELLA DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'BOTELLA DON PERIGNON', 'BOTELLA DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'BOTELLA DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'BOTELLA DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'BOTELLA DON PERIGNON', 'BOTELLA DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'BOTELLA DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'BOTELLA DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'BOTELLA DON PERIGNON', 'BOTELLA DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'BOTELLA DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'BOTELLA DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'BOTELLA DON PERIGNON', 'BOTELLA DON PERIGNON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'BOTELLA DON PERIGNON'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'BOTELLA DON PERIGNON';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'BOTELLA DON PERIGNON';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\cavas\botella.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 70, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'FREIXENET BRUT', @idProducto, NULL, 0, 0, 1, 1, 1, 'FREIXENET BRUT', 'FREIXENET BRUT', 2, 1, 'FR. BRUT', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'FREIXENET BRUT'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'FREIXENET BRUT', 'FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'FREIXENET BRUT', 'FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'FREIXENET BRUT', 'FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'FREIXENET BRUT', 'FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'FREIXENET BRUT', 'FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'FREIXENET BRUT', 'FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'FREIXENET BRUT', 'FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'FREIXENET BRUT', 'FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'FREIXENET BRUT', 'FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'FREIXENET BRUT', 'FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'FREIXENET BRUT';

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'COPA FREIXENET BRUT', @idProducto, NULL, 1, 0, 0.2, 0, 1, 'COPA FREIXENET BRUT', 'COPA FREIXENET BRUT', 2, 1, 'COPA', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'COPA FREIXENET BRUT'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'COPA FREIXENET BRUT', 'COPA FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'COPA FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'COPA FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'COPA FREIXENET BRUT', 'COPA FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'COPA FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'COPA FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'COPA FREIXENET BRUT', 'COPA FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'COPA FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'COPA FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'COPA FREIXENET BRUT', 'COPA FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'COPA FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'COPA FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'COPA FREIXENET BRUT', 'COPA FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'COPA FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'COPA FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'COPA FREIXENET BRUT', 'COPA FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'COPA FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'COPA FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'COPA FREIXENET BRUT', 'COPA FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'COPA FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'COPA FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'COPA FREIXENET BRUT', 'COPA FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'COPA FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'COPA FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'COPA FREIXENET BRUT', 'COPA FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'COPA FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'COPA FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'COPA FREIXENET BRUT', 'COPA FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'COPA FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'COPA FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'COPA FREIXENET BRUT';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\cavas\copa.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 8, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'BOTELLA FREIXENET BRUT', @idProducto, NULL, 1, 0, 1, 0, 1, 'BOT FREIXENET BRUT', 'BOT FREIXENET BRUT', 2, 1, 'BOTELLA', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'BOTELLA FREIXENET BRUT'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'BOTELLA FREIXENET BRUT', 'BOTELLA FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'BOTELLA FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'BOTELLA FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'BOTELLA FREIXENET BRUT', 'BOTELLA FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'BOTELLA FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'BOTELLA FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'BOTELLA FREIXENET BRUT', 'BOTELLA FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'BOTELLA FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'BOTELLA FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'BOTELLA FREIXENET BRUT', 'BOTELLA FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'BOTELLA FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'BOTELLA FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'BOTELLA FREIXENET BRUT', 'BOTELLA FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'BOTELLA FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'BOTELLA FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'BOTELLA FREIXENET BRUT', 'BOTELLA FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'BOTELLA FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'BOTELLA FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'BOTELLA FREIXENET BRUT', 'BOTELLA FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'BOTELLA FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'BOTELLA FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'BOTELLA FREIXENET BRUT', 'BOTELLA FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'BOTELLA FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'BOTELLA FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'BOTELLA FREIXENET BRUT', 'BOTELLA FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'BOTELLA FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'BOTELLA FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'BOTELLA FREIXENET BRUT', 'BOTELLA FREIXENET BRUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'BOTELLA FREIXENET BRUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'BOTELLA FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'BOTELLA FREIXENET BRUT';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\cavas\botella.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 35, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'FREIXENET ROSÈ', @idProducto, NULL, 0, 0, 1, 1, 1, 'FREIXENET ROSÈ', 'FREIXENET ROSÈ', 2, 1, 'FR. ROSÈ', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'FREIXENET ROSÈ'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'FREIXENET ROSÈ', 'FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'FREIXENET ROSÈ', 'FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'FREIXENET ROSÈ', 'FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'FREIXENET ROSÈ', 'FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'FREIXENET ROSÈ', 'FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'FREIXENET ROSÈ', 'FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'FREIXENET ROSÈ', 'FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'FREIXENET ROSÈ', 'FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'FREIXENET ROSÈ', 'FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'FREIXENET ROSÈ', 'FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'FREIXENET ROSÈ';

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'COPA FREIXENET ROSÈ', @idProducto, NULL, 1, 0, 0.2, 0, 1, 'COPA FREIXENET ROSÈ', 'COPA FREIXENET ROSÈ', 2, 1, 'COPA', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'COPA FREIXENET ROSÈ'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'COPA FREIXENET ROSÈ', 'COPA FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'COPA FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'COPA FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'COPA FREIXENET ROSÈ', 'COPA FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'COPA FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'COPA FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'COPA FREIXENET ROSÈ', 'COPA FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'COPA FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'COPA FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'COPA FREIXENET ROSÈ', 'COPA FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'COPA FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'COPA FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'COPA FREIXENET ROSÈ', 'COPA FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'COPA FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'COPA FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'COPA FREIXENET ROSÈ', 'COPA FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'COPA FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'COPA FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'COPA FREIXENET ROSÈ', 'COPA FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'COPA FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'COPA FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'COPA FREIXENET ROSÈ', 'COPA FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'COPA FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'COPA FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'COPA FREIXENET ROSÈ', 'COPA FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'COPA FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'COPA FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'COPA FREIXENET ROSÈ', 'COPA FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'COPA FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'COPA FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'COPA FREIXENET ROSÈ';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\cavas\copa.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 8, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'BOTELLA FREIXENET ROSÈ', @idProducto, NULL, 1, 0, 1, 0, 1, 'BOT FREIXENET ROSÈ', 'BOT FREIXENET ROSÈ', 2, 1, 'BOTELLA', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'BOTELLA FREIXENET ROSÈ'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'BOTELLA FREIXENET ROSÈ', 'BOTELLA FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'BOTELLA FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'BOTELLA FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'BOTELLA FREIXENET ROSÈ', 'BOTELLA FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'BOTELLA FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'BOTELLA FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'BOTELLA FREIXENET ROSÈ', 'BOTELLA FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'BOTELLA FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'BOTELLA FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'BOTELLA FREIXENET ROSÈ', 'BOTELLA FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'BOTELLA FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'BOTELLA FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'BOTELLA FREIXENET ROSÈ', 'BOTELLA FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'BOTELLA FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'BOTELLA FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'BOTELLA FREIXENET ROSÈ', 'BOTELLA FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'BOTELLA FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'BOTELLA FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'BOTELLA FREIXENET ROSÈ', 'BOTELLA FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'BOTELLA FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'BOTELLA FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'BOTELLA FREIXENET ROSÈ', 'BOTELLA FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'BOTELLA FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'BOTELLA FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'BOTELLA FREIXENET ROSÈ', 'BOTELLA FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'BOTELLA FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'BOTELLA FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'BOTELLA FREIXENET ROSÈ', 'BOTELLA FREIXENET ROSE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'BOTELLA FREIXENET ROSÈ'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'BOTELLA FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'BOTELLA FREIXENET ROSÈ';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\cavas\botella.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 35, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'FOCACCIA';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'FOCACCIA', @idProducto, NULL, 1, 0, 1, 1, 1, 'FOCACCIA', 'FOCACCIA', 2, 1, 'FOCACCIA', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'FOCACCIA'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'FOCACCIA', 'FOCACCIA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'FOCACCIA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'FOCACCIA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'FOCACCIA', 'FOCACCIA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'FOCACCIA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'FOCACCIA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'FOCACCIA', 'FOCACCIA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'FOCACCIA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'FOCACCIA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'FOCACCIA', 'FOCACCIA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'FOCACCIA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'FOCACCIA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'FOCACCIA', 'FOCACCIA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'FOCACCIA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'FOCACCIA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'FOCACCIA', 'FOCACCIA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'FOCACCIA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'FOCACCIA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'FOCACCIA', 'FOCACCIA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'FOCACCIA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'FOCACCIA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'FOCACCIA', 'FOCACCIA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'FOCACCIA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'FOCACCIA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'FOCACCIA', 'FOCACCIA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'FOCACCIA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'FOCACCIA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'FOCACCIA', 'FOCACCIA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'FOCACCIA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'FOCACCIA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'FOCACCIA';

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 12.5, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'PIZZA DE JAMÓN';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'PIZZA DE JAMÓN', @idProducto, NULL, 1, 0, 1, 1, 1, 'PIZZA DE JAMÓN', 'PIZZA DE JAMÓN', 2, 1, 'PIZZA DE JAMÓN', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'PIZZA DE JAMÓN'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'PIZZA DE JAMÓN', 'HAM PIZZA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'PIZZA DE JAMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'PIZZA DE JAMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'PIZZA DE JAMÓN', 'PIZZA AU JAMBON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'PIZZA DE JAMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'PIZZA DE JAMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'PIZZA DE JAMÓN', 'SCHINKEN PIZZA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'PIZZA DE JAMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'PIZZA DE JAMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'PIZZA DE JAMÓN', 'PIZZA AL RISO'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'PIZZA DE JAMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'PIZZA DE JAMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'PIZZA DE JAMÓN', 'PIZZA DE PRESUNTO'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'PIZZA DE JAMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'PIZZA DE JAMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'PIZZA DE JAMÓN', 'HAM PIZZA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'PIZZA DE JAMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'PIZZA DE JAMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'PIZZA DE JAMÓN', 'HAM PIZZA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'PIZZA DE JAMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'PIZZA DE JAMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'PIZZA DE JAMÓN', 'PIZZA Z SZYNKI'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'PIZZA DE JAMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'PIZZA DE JAMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'PIZZA DE JAMÓN', 'KINAPIZZA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'PIZZA DE JAMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'PIZZA DE JAMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'PIZZA DE JAMÓN', 'HAM PIZZA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'PIZZA DE JAMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'PIZZA DE JAMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'PIZZA DE JAMÓN';

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 11, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'PIZZA DE SALMÓN';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'PIZZA DE SALMÓN', @idProducto, NULL, 1, 0, 1, 1, 1, 'PIZZA DE SALMÓN', 'PIZZA DE SALMÓN', 2, 1, 'PIZZA DE SALMÓN', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'PIZZA DE SALMÓN'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'PIZZA DE SALMÓN', 'PIZZA DE SALMON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'PIZZA DE SALMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'PIZZA DE SALMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'PIZZA DE SALMÓN', 'PIZZA DE SALMON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'PIZZA DE SALMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'PIZZA DE SALMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'PIZZA DE SALMÓN', 'SALAMIPIZZA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'PIZZA DE SALMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'PIZZA DE SALMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'PIZZA DE SALMÓN', 'PIZZA DE SALMON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'PIZZA DE SALMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'PIZZA DE SALMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'PIZZA DE SALMÓN', 'PIZZA DE SALMAO'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'PIZZA DE SALMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'PIZZA DE SALMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'PIZZA DE SALMÓN', 'PIZZA DE SALMON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'PIZZA DE SALMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'PIZZA DE SALMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'PIZZA DE SALMÓN', 'PIZZA DE SALMON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'PIZZA DE SALMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'PIZZA DE SALMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'PIZZA DE SALMÓN', 'PIZZA DE SALMON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'PIZZA DE SALMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'PIZZA DE SALMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'PIZZA DE SALMÓN', 'PIZZA DE SALMON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'PIZZA DE SALMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'PIZZA DE SALMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'PIZZA DE SALMÓN', 'PIZZA DE SALMON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'PIZZA DE SALMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'PIZZA DE SALMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'PIZZA DE SALMÓN';

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 11, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'PIZZA MARGARITA';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'PIZZA MARGARITA', @idProducto, NULL, 1, 0, 1, 1, 1, 'PIZZA MARGRT', 'PIZZA MARGRT', 2, 1, 'PIZZA MARGRT', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'PIZZA MARGARITA'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'PIZZA MARGARITA', 'PIZZA MARGARITA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'PIZZA MARGARITA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'PIZZA MARGARITA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'PIZZA MARGARITA', 'PIZZA MARGARITA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'PIZZA MARGARITA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'PIZZA MARGARITA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'PIZZA MARGARITA', 'PIZZA MARGARITA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'PIZZA MARGARITA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'PIZZA MARGARITA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'PIZZA MARGARITA', 'PIZZA MARGARITA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'PIZZA MARGARITA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'PIZZA MARGARITA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'PIZZA MARGARITA', 'PIZZA MARGARITA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'PIZZA MARGARITA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'PIZZA MARGARITA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'PIZZA MARGARITA', 'PIZZA MARGARITA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'PIZZA MARGARITA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'PIZZA MARGARITA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'PIZZA MARGARITA', 'PIZZA MARGARITA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'PIZZA MARGARITA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'PIZZA MARGARITA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'PIZZA MARGARITA', 'PIZZA MARGARITA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'PIZZA MARGARITA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'PIZZA MARGARITA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'PIZZA MARGARITA', 'PIZZA MARGARITA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'PIZZA MARGARITA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'PIZZA MARGARITA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'PIZZA MARGARITA', 'PIZZA MARGARITA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'PIZZA MARGARITA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'PIZZA MARGARITA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'PIZZA MARGARITA';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\hamburgueseria\pizza-margarita.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 11, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'AGUA CON GAS';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'AGUA CON GAS', @idProducto, NULL, 1, 1, 1, 1, 1, 'AGUA CON GAS', 'AGUA CON GAS', 2, 1, 'CON GAS', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'AGUA CON GAS'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'AGUA CON GAS', 'SPARKLING WATER'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'AGUA CON GAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'AGUA CON GAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'AGUA CON GAS', 'GAZ EAU'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'AGUA CON GAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'AGUA CON GAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'AGUA CON GAS', 'GAS WASSER'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'AGUA CON GAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'AGUA CON GAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'AGUA CON GAS', 'GAS ACQUA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'AGUA CON GAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'AGUA CON GAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'AGUA CON GAS', 'GAS AGUA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'AGUA CON GAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'AGUA CON GAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'AGUA CON GAS', 'GAS VATTEN'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'AGUA CON GAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'AGUA CON GAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'AGUA CON GAS', 'GASS VANN'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'AGUA CON GAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'AGUA CON GAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'AGUA CON GAS', 'GAZ WODA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'AGUA CON GAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'AGUA CON GAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'AGUA CON GAS', 'KAASU VESI'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'AGUA CON GAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'AGUA CON GAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'AGUA CON GAS', 'GAS WATER'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'AGUA CON GAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'AGUA CON GAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'AGUA CON GAS';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\aguas\agua-con-gas.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 1.5, 1.5, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'COCA COLA';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'COCA COLA', @idProducto, NULL, 1, 1, 1, 1, 1, 'COCA COLA', 'COCA COLA', 2, 1, 'COCA COLA', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'COCA COLA'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'COCA COLA', 'COCA COLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'COCA COLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'COCA COLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'COCA COLA', 'COCA COLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'COCA COLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'COCA COLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'COCA COLA', 'COCA COLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'COCA COLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'COCA COLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'COCA COLA', 'COCA COLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'COCA COLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'COCA COLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'COCA COLA', 'COCA COLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'COCA COLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'COCA COLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'COCA COLA', 'COCA COLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'COCA COLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'COCA COLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'COCA COLA', 'COCA COLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'COCA COLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'COCA COLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'COCA COLA', 'COCA COLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'COCA COLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'COCA COLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'COCA COLA', 'COCA COLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'COCA COLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'COCA COLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'COCA COLA', 'COCA COLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'COCA COLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'COCA COLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'COCA COLA';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\refrescos\coca-cola-1.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 1.8, 1.5, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'COCA COLA ZERO';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'COCA COLA ZERO', @idProducto, NULL, 1, 1, 1, 1, 1, 'COCA COLA ZERO', 'COCA COLA ZERO', 2, 1, 'COLA ZERO', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'COCA COLA ZERO'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'COCA COLA ZERO', 'COCA COLA ZERO'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'COCA COLA ZERO'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'COCA COLA ZERO';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'COCA COLA ZERO', 'COCA COLA ZERO'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'COCA COLA ZERO'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'COCA COLA ZERO';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'COCA COLA ZERO', 'COCA COLA ZERO'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'COCA COLA ZERO'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'COCA COLA ZERO';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'COCA COLA ZERO', 'COCA COLA ZERO'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'COCA COLA ZERO'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'COCA COLA ZERO';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'COCA COLA ZERO', 'COCA COLA ZERO'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'COCA COLA ZERO'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'COCA COLA ZERO';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'COCA COLA ZERO', 'COCA COLA ZERO'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'COCA COLA ZERO'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'COCA COLA ZERO';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'COCA COLA ZERO', 'COCA COLA ZERO'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'COCA COLA ZERO'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'COCA COLA ZERO';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'COCA COLA ZERO', 'COCA COLA ZERO'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'COCA COLA ZERO'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'COCA COLA ZERO';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'COCA COLA ZERO', 'COCA COLA ZERO'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'COCA COLA ZERO'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'COCA COLA ZERO';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'COCA COLA ZERO', 'CHOCOLADEMELK ZERO'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'COCA COLA ZERO'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'COCA COLA ZERO';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'COCA COLA ZERO';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\refrescos\cola-zero.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 2, 1.5, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'FANTA LIMÓN';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'FANTA LIMÓN', @idProducto, NULL, 1, 1, 1, 1, 1, 'FANTA LIMÓN', 'FANTA LIMÓN', 2, 1, 'FANTA LIM', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'FANTA LIMÓN'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'FANTA LIMÓN', 'FANTA LIMON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'FANTA LIMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'FANTA LIMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'FANTA LIMÓN', 'FANTA LIMON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'FANTA LIMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'FANTA LIMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'FANTA LIMÓN', 'FANTA LIMON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'FANTA LIMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'FANTA LIMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'FANTA LIMÓN', 'FANTA LIMONE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'FANTA LIMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'FANTA LIMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'FANTA LIMÓN', 'FANTA LIMON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'FANTA LIMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'FANTA LIMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'FANTA LIMÓN', 'FANTA LIMON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'FANTA LIMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'FANTA LIMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'FANTA LIMÓN', 'FANTA LIMON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'FANTA LIMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'FANTA LIMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'FANTA LIMÓN', 'FANTA LIMON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'FANTA LIMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'FANTA LIMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'FANTA LIMÓN', 'FANTA LIMON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'FANTA LIMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'FANTA LIMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'FANTA LIMÓN', 'FANTA LIMON'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'FANTA LIMÓN'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'FANTA LIMÓN';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'FANTA LIMÓN';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\refrescos\fanta-limon.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 1.8, 1.5, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'FANTA NARANJA';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'FANTA NARANJA', @idProducto, NULL, 1, 1, 1, 1, 1, 'FANTA NARANJA', 'FANTA NARANJA', 2, 1, 'NARANJA', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'FANTA NARANJA'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'FANTA NARANJA', 'FANTA OF NARANJA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'FANTA NARANJA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'FANTA NARANJA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'FANTA NARANJA', 'FANTA DE NARANJA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'FANTA NARANJA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'FANTA NARANJA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'FANTA NARANJA', 'FANTA VON NARANJA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'FANTA NARANJA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'FANTA NARANJA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'FANTA NARANJA', 'FANTA DI NARANJA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'FANTA NARANJA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'FANTA NARANJA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'FANTA NARANJA', 'FANTA DE NARANJA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'FANTA NARANJA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'FANTA NARANJA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'FANTA NARANJA', 'FANTA AV NARANJA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'FANTA NARANJA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'FANTA NARANJA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'FANTA NARANJA', 'FANTA AV NARANJA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'FANTA NARANJA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'FANTA NARANJA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'FANTA NARANJA', 'FANTA NARANJA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'FANTA NARANJA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'FANTA NARANJA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'FANTA NARANJA', 'NARANJAN FANTA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'FANTA NARANJA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'FANTA NARANJA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'FANTA NARANJA', 'FANTA VAN NARANJA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'FANTA NARANJA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'FANTA NARANJA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'FANTA NARANJA';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\refrescos\fanta-naranja.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 1.8, 1.5, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'GINGER ALE';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'GINGER ALE', @idProducto, NULL, 1, 1, 1, 1, 1, 'GINGER ALE', 'GINGER ALE', 2, 1, 'GINGER ALE', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'GINGER ALE'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'GINGER ALE', 'GINGER ALE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'GINGER ALE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'GINGER ALE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'GINGER ALE', 'ALE DE GINGEMBRE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'GINGER ALE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'GINGER ALE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'GINGER ALE', 'GINGER-AL'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'GINGER ALE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'GINGER ALE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'GINGER ALE', 'MELANONE DI ZENZERO'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'GINGER ALE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'GINGER ALE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'GINGER ALE', 'GINGER ALE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'GINGER ALE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'GINGER ALE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'GINGER ALE', 'GINGER ALE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'GINGER ALE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'GINGER ALE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'GINGER ALE', 'GINGER ALE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'GINGER ALE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'GINGER ALE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'GINGER ALE', 'GINGER ALE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'GINGER ALE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'GINGER ALE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'GINGER ALE', 'GINGER ALE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'GINGER ALE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'GINGER ALE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'GINGER ALE', 'GINGER ALE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'GINGER ALE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'GINGER ALE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'GINGER ALE';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\refrescos\ginger-ale.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 2.5, 2, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'PEPSI';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'PEPSI', @idProducto, NULL, 1, 1, 1, 1, 1, 'PEPSI', 'PEPSI', 2, 1, 'PEPSI', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'PEPSI'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'PEPSI', 'PEPSI'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'PEPSI'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'PEPSI';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'PEPSI', 'PEPSI'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'PEPSI'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'PEPSI';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'PEPSI', 'PEPSI'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'PEPSI'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'PEPSI';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'PEPSI', 'PEPSI'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'PEPSI'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'PEPSI';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'PEPSI', 'PEPSI'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'PEPSI'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'PEPSI';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'PEPSI', 'PEPSI'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'PEPSI'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'PEPSI';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'PEPSI', 'PEPSI'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'PEPSI'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'PEPSI';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'PEPSI', 'PEPSI'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'PEPSI'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'PEPSI';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'PEPSI', 'PEPSI'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'PEPSI'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'PEPSI';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'PEPSI', 'PEPSI'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'PEPSI'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'PEPSI';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'PEPSI';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\refrescos\pepsi-normal.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 2, 1.5, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'RED BULL';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'RED BULL', @idProducto, NULL, 1, 1, 1, 1, 1, 'RED BULL', 'RED BULL', 2, 1, 'RED BULL', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'RED BULL'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'RED BULL', 'RED BULL'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'RED BULL'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'RED BULL';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'RED BULL', 'RED BULL'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'RED BULL'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'RED BULL';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'RED BULL', 'RED BULL'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'RED BULL'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'RED BULL';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'RED BULL', 'TORO ROSSO'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'RED BULL'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'RED BULL';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'RED BULL', 'RED BULL'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'RED BULL'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'RED BULL';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'RED BULL', 'RED BULL'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'RED BULL'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'RED BULL';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'RED BULL', 'RED BULL'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'RED BULL'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'RED BULL';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'RED BULL', 'RED BULL'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'RED BULL'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'RED BULL';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'RED BULL', 'RED BULL'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'RED BULL'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'RED BULL';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'RED BULL', 'RODE STIER'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'RED BULL'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'RED BULL';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'RED BULL';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\refrescos\redbull.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 2.5, 2, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'ABSOLUT';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'ABSOLUT', @idProducto, NULL, 0, 0, 1, 1, 1, 'ABSOLUT', 'ABSOLUT', 2, 1, 'ABSOLUT', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'ABSOLUT'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'ABSOLUT', 'ABSOLUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'ABSOLUT', 'ABSOLUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'ABSOLUT', 'ABSOLUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'ABSOLUT', 'ASSOLUTO'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'ABSOLUT', 'ABSOLUTO'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'ABSOLUT', 'ABSOLUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'ABSOLUT', 'ABSOLUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'ABSOLUT', 'ABSOLUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'ABSOLUT', 'ABSOLUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'ABSOLUT', 'ABSOLUUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'ABSOLUT';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\vodkas\absolut.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'ABSOLUT';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'CHUPITO ABSOLUT', @idProducto, NULL, 1, 0, 0.04, 0, 1, 'CHP ABSOLUT', 'CHP ABSOLUT', 2, 1, 'CHUPITO', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'CHUPITO ABSOLUT'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'CHUPITO ABSOLUT', 'CHUPITO ABSOLUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'CHUPITO ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'CHUPITO ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'CHUPITO ABSOLUT', 'CHUPITO ABSOLUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'CHUPITO ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'CHUPITO ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'CHUPITO ABSOLUT', 'CHUPITO ABSOLUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'CHUPITO ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'CHUPITO ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'CHUPITO ABSOLUT', 'CHUPITO ABSOLUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'CHUPITO ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'CHUPITO ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'CHUPITO ABSOLUT', 'CHUPITO ABSOLUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'CHUPITO ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'CHUPITO ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'CHUPITO ABSOLUT', 'CHUPITO ABSOLUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'CHUPITO ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'CHUPITO ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'CHUPITO ABSOLUT', 'CHUPITO ABSOLUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'CHUPITO ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'CHUPITO ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'CHUPITO ABSOLUT', 'ABSOLUT CHUPITO'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'CHUPITO ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'CHUPITO ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'CHUPITO ABSOLUT', 'CHUPITO ABSOLUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'CHUPITO ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'CHUPITO ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'CHUPITO ABSOLUT', 'CHUPITO ABSOLUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'CHUPITO ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'CHUPITO ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'CHUPITO ABSOLUT';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\vodkas\chupito.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 3, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'ABSOLUT';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'COPA ABSOLUT', @idProducto, NULL, 1, 0, 0.2, 0, 1, 'COPA ABSOLUT', 'COPA ABSOLUT', 2, 1, 'COPA', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'COPA ABSOLUT'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'COPA ABSOLUT', 'ABSOLUT CUP'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'COPA ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'COPA ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'COPA ABSOLUT', 'ABSOLUT CUP'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'COPA ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'COPA ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'COPA ABSOLUT', 'ABSOLUT CUP'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'COPA ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'COPA ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'COPA ABSOLUT', 'COPPA ASSOLUTA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'COPA ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'COPA ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'COPA ABSOLUT', 'COPO ABSOLUT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'COPA ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'COPA ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'COPA ABSOLUT', 'ABSOLUT CUP'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'COPA ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'COPA ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'COPA ABSOLUT', 'ABSOLUT CUP'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'COPA ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'COPA ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'COPA ABSOLUT', 'ABSOLUT CUP'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'COPA ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'COPA ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'COPA ABSOLUT', 'ABSOLUT CUP'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'COPA ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'COPA ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'COPA ABSOLUT', 'ABSOLUUT CUP'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'COPA ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'COPA ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'COPA ABSOLUT';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\vodkas\copa.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 6.5, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'ABSOLUT';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'BOTELLA ABSOLUT', @idProducto, NULL, 1, 0, 1, 0, 1, 'BOT ABSOLUT', 'BOT ABSOLUT', 2, 1, 'BOTELLA', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'BOTELLA ABSOLUT'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'BOTELLA ABSOLUT', 'ABSOLUTE BOTTLE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'BOTELLA ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'BOTELLA ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'BOTELLA ABSOLUT', 'BOUTEILLE ABSOLUE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'BOTELLA ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'BOTELLA ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'BOTELLA ABSOLUT', 'ABSOLUTFLASCHE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'BOTELLA ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'BOTELLA ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'BOTELLA ABSOLUT', 'BOTTIGLIA ASSOLUTA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'BOTELLA ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'BOTELLA ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'BOTELLA ABSOLUT', 'GARRAFA ABSOLUTA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'BOTELLA ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'BOTELLA ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'BOTELLA ABSOLUT', 'ABSOLUT FLASKA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'BOTELLA ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'BOTELLA ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'BOTELLA ABSOLUT', 'ABSOLUTT FLASKE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'BOTELLA ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'BOTELLA ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'BOTELLA ABSOLUT', 'BUTELKA ABSOLUTNA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'BOTELLA ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'BOTELLA ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'BOTELLA ABSOLUT', 'ABSOLUUTTINEN PULLO'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'BOTELLA ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'BOTELLA ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'BOTELLA ABSOLUT', 'ABSOLUTE FLES'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'BOTELLA ABSOLUT'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'BOTELLA ABSOLUT';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'BOTELLA ABSOLUT';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\vodkas\botella.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 22, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'BELUGA';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'BELUGA', @idProducto, NULL, 0, 0, 1, 1, 1, 'BELUGA', 'BELUGA', 2, 1, 'BELUGA', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'BELUGA'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'BELUGA', 'BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'BELUGA', 'BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'BELUGA', 'BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'BELUGA', 'BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'BELUGA', 'BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'BELUGA', 'BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'BELUGA', 'BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'BELUGA', 'BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'BELUGA', 'BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'BELUGA', 'BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'BELUGA';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\vodkas\beluga.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'BELUGA';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'CHUPITO BELUGA', @idProducto, NULL, 1, 0, 0.04, 0, 1, 'CHP BELUGA', 'CHP BELUGA', 2, 1, 'CHUPITO', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'CHUPITO BELUGA'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'CHUPITO BELUGA', 'CHUPITO BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'CHUPITO BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'CHUPITO BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'CHUPITO BELUGA', 'CHUPITO BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'CHUPITO BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'CHUPITO BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'CHUPITO BELUGA', 'CHUPITO BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'CHUPITO BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'CHUPITO BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'CHUPITO BELUGA', 'CHUPITO BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'CHUPITO BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'CHUPITO BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'CHUPITO BELUGA', 'CHUPITO BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'CHUPITO BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'CHUPITO BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'CHUPITO BELUGA', 'CHUPITO BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'CHUPITO BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'CHUPITO BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'CHUPITO BELUGA', 'CHUPITO BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'CHUPITO BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'CHUPITO BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'CHUPITO BELUGA', 'CHUPITO BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'CHUPITO BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'CHUPITO BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'CHUPITO BELUGA', 'CHUPITO BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'CHUPITO BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'CHUPITO BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'CHUPITO BELUGA', 'CHUPITO BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'CHUPITO BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'CHUPITO BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'CHUPITO BELUGA';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\vodkas\chupito.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 3, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'BELUGA';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'COPA BELUGA', @idProducto, NULL, 1, 0, 0.2, 0, 1, 'COPA BELUGA', 'COPA BELUGA', 2, 1, 'COPA', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'COPA BELUGA'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'COPA BELUGA', 'COPA BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'COPA BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'COPA BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'COPA BELUGA', 'COPA BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'COPA BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'COPA BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'COPA BELUGA', 'COPA BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'COPA BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'COPA BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'COPA BELUGA', 'COPA BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'COPA BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'COPA BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'COPA BELUGA', 'COPA BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'COPA BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'COPA BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'COPA BELUGA', 'COPA BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'COPA BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'COPA BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'COPA BELUGA', 'COPA BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'COPA BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'COPA BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'COPA BELUGA', 'COPA BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'COPA BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'COPA BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'COPA BELUGA', 'COPA BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'COPA BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'COPA BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'COPA BELUGA', 'COPA BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'COPA BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'COPA BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'COPA BELUGA';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\vodkas\copa.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 6.5, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'BELUGA';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'BOTELLA BELUGA', @idProducto, NULL, 1, 0, 1, 0, 1, 'BOT BELUGA', 'BOT BELUGA', 2, 1, 'BOTELLA', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'BOTELLA BELUGA'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'BOTELLA BELUGA', 'BOTELLA BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'BOTELLA BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'BOTELLA BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'BOTELLA BELUGA', 'BOTELLA BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'BOTELLA BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'BOTELLA BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'BOTELLA BELUGA', 'BOTELLA BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'BOTELLA BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'BOTELLA BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'BOTELLA BELUGA', 'BOTELLA BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'BOTELLA BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'BOTELLA BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'BOTELLA BELUGA', 'BOTELLA BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'BOTELLA BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'BOTELLA BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'BOTELLA BELUGA', 'BOTELLA BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'BOTELLA BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'BOTELLA BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'BOTELLA BELUGA', 'BOTELLA BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'BOTELLA BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'BOTELLA BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'BOTELLA BELUGA', 'BOTELLA BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'BOTELLA BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'BOTELLA BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'BOTELLA BELUGA', 'BOTELLA BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'BOTELLA BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'BOTELLA BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'BOTELLA BELUGA', 'BOTELLA BELUGA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'BOTELLA BELUGA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'BOTELLA BELUGA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'BOTELLA BELUGA';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\vodkas\botella.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 22, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'BELVEDERE';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'BELVEDERE', @idProducto, NULL, 0, 0, 1, 1, 1, 'BELVEDERE', 'BELVEDERE', 2, 1, 'BELVEDERE', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'BELVEDERE'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'BELVEDERE', 'BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'BELVEDERE', 'BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'BELVEDERE', 'BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'BELVEDERE', 'BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'BELVEDERE', 'BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'BELVEDERE', 'BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'BELVEDERE', 'BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'BELVEDERE', 'BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'BELVEDERE', 'BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'BELVEDERE', 'BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'BELVEDERE';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\vodkas\belvedere.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'BELVEDERE';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'CHUPITO BELVEDERE', @idProducto, NULL, 1, 0, 0.04, 0, 1, 'CHP BELVEDERE', 'CHP BELVEDERE', 2, 1, 'CHUPITO', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'CHUPITO BELVEDERE'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'CHUPITO BELVEDERE', 'CHUPITO BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'CHUPITO BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'CHUPITO BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'CHUPITO BELVEDERE', 'CHUPITO BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'CHUPITO BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'CHUPITO BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'CHUPITO BELVEDERE', 'CHUPITO BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'CHUPITO BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'CHUPITO BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'CHUPITO BELVEDERE', 'CHUPITO BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'CHUPITO BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'CHUPITO BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'CHUPITO BELVEDERE', 'MIRADOURO DO CHUPITO'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'CHUPITO BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'CHUPITO BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'CHUPITO BELVEDERE', 'CHUPITO BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'CHUPITO BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'CHUPITO BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'CHUPITO BELVEDERE', 'CHUPITO BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'CHUPITO BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'CHUPITO BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'CHUPITO BELVEDERE', 'CHUPITO BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'CHUPITO BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'CHUPITO BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'CHUPITO BELVEDERE', 'CHUPITO BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'CHUPITO BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'CHUPITO BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'CHUPITO BELVEDERE', 'CHUPITO BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'CHUPITO BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'CHUPITO BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'CHUPITO BELVEDERE';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\vodkas\chupito.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 3, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'BELVEDERE';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'COPA BELVEDERE', @idProducto, NULL, 1, 0, 0.2, 0, 1, 'COPA BELVEDERE', 'COPA BELVEDERE', 2, 1, 'COPA', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'COPA BELVEDERE'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'COPA BELVEDERE', 'COPA BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'COPA BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'COPA BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'COPA BELVEDERE', 'COPA BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'COPA BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'COPA BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'COPA BELVEDERE', 'COPA BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'COPA BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'COPA BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'COPA BELVEDERE', 'COPA BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'COPA BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'COPA BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'COPA BELVEDERE', 'COPA BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'COPA BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'COPA BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'COPA BELVEDERE', 'COPA BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'COPA BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'COPA BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'COPA BELVEDERE', 'COPA BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'COPA BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'COPA BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'COPA BELVEDERE', 'COPA BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'COPA BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'COPA BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'COPA BELVEDERE', 'COPA BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'COPA BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'COPA BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'COPA BELVEDERE', 'COPA BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'COPA BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'COPA BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'COPA BELVEDERE';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\vodkas\copa.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 6.5, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'BELVEDERE';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'BOTELLA BELVEDERE', @idProducto, NULL, 1, 0, 1, 0, 1, 'BOT BELVEDERE', 'BOT BELVEDERE', 2, 1, 'BOTELLA', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'BOTELLA BELVEDERE'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'BOTELLA BELVEDERE', 'BELVEDERE CASK'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'BOTELLA BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'BOTELLA BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'BOTELLA BELVEDERE', 'CASK BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'BOTELLA BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'BOTELLA BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'BOTELLA BELVEDERE', 'BELVEDERE CASK'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'BOTELLA BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'BOTELLA BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'BOTELLA BELVEDERE', 'BOTELLA BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'BOTELLA BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'BOTELLA BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'BOTELLA BELVEDERE', 'CASCO BELVEDERE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'BOTELLA BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'BOTELLA BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'BOTELLA BELVEDERE', 'BELVEDERE CASK'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'BOTELLA BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'BOTELLA BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'BOTELLA BELVEDERE', 'BELVEDERE CASK'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'BOTELLA BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'BOTELLA BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'BOTELLA BELVEDERE', 'BELVEDERE CASK'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'BOTELLA BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'BOTELLA BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'BOTELLA BELVEDERE', 'BELVEDERE CASK'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'BOTELLA BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'BOTELLA BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'BOTELLA BELVEDERE', 'BELVEDERE CASK'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'BOTELLA BELVEDERE'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'BOTELLA BELVEDERE';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'BOTELLA BELVEDERE';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\vodkas\botella.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 22, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'CIROC';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'CIROC', @idProducto, NULL, 0, 0, 1, 1, 1, 'CIROC', 'CIROC', 2, 1, 'CIROC', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'CIROC'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'CIROC', 'CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'CIROC', 'CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'CIROC', 'CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'CIROC', 'CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'CIROC', 'CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'CIROC', 'CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'CIROC', 'CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'CIROC', 'CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'CIROC', 'CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'CIROC', 'CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'CIROC';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\vodkas\ciroc.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'CIROC';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'CHUPITO CIROC', @idProducto, NULL, 1, 0, 0.04, 0, 1, 'CHP CIROC', 'CHP CIROC', 2, 1, 'CHUPITO', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'CHUPITO CIROC'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'CHUPITO CIROC', 'CHUPITO CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'CHUPITO CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'CHUPITO CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'CHUPITO CIROC', 'CHUPITO CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'CHUPITO CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'CHUPITO CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'CHUPITO CIROC', 'CHUPITO CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'CHUPITO CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'CHUPITO CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'CHUPITO CIROC', 'CHUPITO CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'CHUPITO CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'CHUPITO CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'CHUPITO CIROC', 'CHUPITO CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'CHUPITO CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'CHUPITO CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'CHUPITO CIROC', 'CHUPITO CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'CHUPITO CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'CHUPITO CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'CHUPITO CIROC', 'CHUPITO CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'CHUPITO CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'CHUPITO CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'CHUPITO CIROC', 'CHUPITO CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'CHUPITO CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'CHUPITO CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'CHUPITO CIROC', 'CHUPITO CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'CHUPITO CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'CHUPITO CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'CHUPITO CIROC', 'CHUPITO CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'CHUPITO CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'CHUPITO CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'CHUPITO CIROC';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\vodkas\chupito.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 3, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'CIROC';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'COPA CIROC', @idProducto, NULL, 1, 0, 0.2, 0, 1, 'COPA CIROC', 'COPA CIROC', 2, 1, 'COPA', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'COPA CIROC'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'COPA CIROC', 'COPA CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'COPA CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'COPA CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'COPA CIROC', 'COPA CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'COPA CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'COPA CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'COPA CIROC', 'COPA CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'COPA CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'COPA CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'COPA CIROC', 'COPA CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'COPA CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'COPA CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'COPA CIROC', 'COPA CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'COPA CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'COPA CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'COPA CIROC', 'COPA CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'COPA CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'COPA CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'COPA CIROC', 'COPA CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'COPA CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'COPA CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'COPA CIROC', 'COPA CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'COPA CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'COPA CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'COPA CIROC', 'COPA CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'COPA CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'COPA CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'COPA CIROC', 'COPA CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'COPA CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'COPA CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'COPA CIROC';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\vodkas\copa.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 6.5, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'CIROC';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'BOTELLA CIROC', @idProducto, NULL, 1, 0, 1, 0, 1, 'BOT CIROC', 'BOT CIROC', 2, 1, 'BOTELLA', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'BOTELLA CIROC'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'BOTELLA CIROC', 'BOTELLA CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'BOTELLA CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'BOTELLA CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'BOTELLA CIROC', 'BOTELLA CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'BOTELLA CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'BOTELLA CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'BOTELLA CIROC', 'BOTELLA CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'BOTELLA CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'BOTELLA CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'BOTELLA CIROC', 'BOTELLA CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'BOTELLA CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'BOTELLA CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'BOTELLA CIROC', 'BOTELLA CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'BOTELLA CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'BOTELLA CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'BOTELLA CIROC', 'BOTELLA CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'BOTELLA CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'BOTELLA CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'BOTELLA CIROC', 'BOTELLA CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'BOTELLA CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'BOTELLA CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'BOTELLA CIROC', 'BOTELLA CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'BOTELLA CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'BOTELLA CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'BOTELLA CIROC', 'BOTELLA CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'BOTELLA CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'BOTELLA CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'BOTELLA CIROC', 'BOTELLA CIROC'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'BOTELLA CIROC'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'BOTELLA CIROC';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'BOTELLA CIROC';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\vodkas\botella.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 22, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'SMIRNOFF';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'SMIRNOFF', @idProducto, NULL, 0, 0, 1, 1, 1, 'SMIRNOFF', 'SMIRNOFF', 2, 1, 'SMIRNOFF', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'SMIRNOFF'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'SMIRNOFF', 'SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'SMIRNOFF', 'SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'SMIRNOFF', 'SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'SMIRNOFF', 'SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'SMIRNOFF', 'SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'SMIRNOFF', 'SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'SMIRNOFF', 'SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'SMIRNOFF', 'SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'SMIRNOFF', 'SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'SMIRNOFF', 'SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'SMIRNOFF';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\vodkas\smirnoff-red-vodka.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'SMIRNOFF';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'CHUPITO SMIRNOFF', @idProducto, NULL, 1, 0, 0.04, 0, 1, 'CHP SMIRNOFF', 'CHP SMIRNOFF', 2, 1, 'CHUPITO', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'CHUPITO SMIRNOFF'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'CHUPITO SMIRNOFF', 'CHUPITO SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'CHUPITO SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'CHUPITO SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'CHUPITO SMIRNOFF', 'CHUPITO SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'CHUPITO SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'CHUPITO SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'CHUPITO SMIRNOFF', 'CHUPITO SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'CHUPITO SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'CHUPITO SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'CHUPITO SMIRNOFF', 'CHUPITO SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'CHUPITO SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'CHUPITO SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'CHUPITO SMIRNOFF', 'CHUPITO SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'CHUPITO SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'CHUPITO SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'CHUPITO SMIRNOFF', 'CHUPITO SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'CHUPITO SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'CHUPITO SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'CHUPITO SMIRNOFF', 'CHUPITO SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'CHUPITO SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'CHUPITO SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'CHUPITO SMIRNOFF', 'CHUPITO SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'CHUPITO SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'CHUPITO SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'CHUPITO SMIRNOFF', 'CHUPITO SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'CHUPITO SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'CHUPITO SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'CHUPITO SMIRNOFF', 'CHUPITO SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'CHUPITO SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'CHUPITO SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'CHUPITO SMIRNOFF';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\vodkas\chupito.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 3, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'SMIRNOFF';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'COPA SMIRNOFF', @idProducto, NULL, 1, 0, 0.2, 0, 1, 'COPA SMIRNOFF', 'COPA SMIRNOFF', 2, 1, 'COPA', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'COPA SMIRNOFF'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'COPA SMIRNOFF', 'COPA SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'COPA SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'COPA SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'COPA SMIRNOFF', 'COPA SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'COPA SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'COPA SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'COPA SMIRNOFF', 'COPA SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'COPA SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'COPA SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'COPA SMIRNOFF', 'COPA SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'COPA SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'COPA SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'COPA SMIRNOFF', 'COPA SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'COPA SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'COPA SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'COPA SMIRNOFF', 'COPA SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'COPA SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'COPA SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'COPA SMIRNOFF', 'COPA SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'COPA SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'COPA SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'COPA SMIRNOFF', 'COPA SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'COPA SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'COPA SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'COPA SMIRNOFF', 'COPA SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'COPA SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'COPA SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'COPA SMIRNOFF', 'COPA SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'COPA SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'COPA SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'COPA SMIRNOFF';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\vodkas\copa.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 6.5, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE [Name] = 'SMIRNOFF';

INSERT INTO [igtpos].[dbo].SaleFormat
SELECT 'BOTELLA SMIRNOFF', @idProducto, NULL, 1, 0, 1, 0, 1, 'BOT SMIRNOFF', 'BOT SMIRNOFF', 2, 1, 'BOTELLA', '0xFFBACDE2', 0x0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormat
	WHERE [Name] = 'BOTELLA SMIRNOFF'
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'BOTELLA SMIRNOFF', 'SMIRNOFF CASK'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'BOTELLA SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'BOTELLA SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'BOTELLA SMIRNOFF', 'SMIRNOFF CASK'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'BOTELLA SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'BOTELLA SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'BOTELLA SMIRNOFF', 'SMIRNOFF CASK'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'BOTELLA SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'BOTELLA SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'BOTELLA SMIRNOFF', 'BOTELLA SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'BOTELLA SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'BOTELLA SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'BOTELLA SMIRNOFF', 'CAIXA SMIRNOFF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'BOTELLA SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'BOTELLA SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'BOTELLA SMIRNOFF', 'SMIRNOFF CASK'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'BOTELLA SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'BOTELLA SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'BOTELLA SMIRNOFF', 'SMIRNOFF CASK'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'BOTELLA SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'BOTELLA SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'BOTELLA SMIRNOFF', 'SMIRNOFF CASK'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'BOTELLA SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'BOTELLA SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'BOTELLA SMIRNOFF', 'SMIRNOFF CASK'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'BOTELLA SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'BOTELLA SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'BOTELLA SMIRNOFF', 'SMIRNOFF CASK'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'BOTELLA SMIRNOFF'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'BOTELLA SMIRNOFF';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SELECT @idFormato = Id
FROM [igtpos].[dbo].SaleFormat
WHERE [Name] = 'BOTELLA SMIRNOFF';

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\vodkas\botella.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].SaleFormat
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFormato;

INSERT INTO [igtpos].[dbo].SaleFormatPrice
SELECT 1, 22, NULL, NULL, 0, SYSDATETIME(), NULL, @idFormato
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleFormatPrice
	WHERE SaleFormatId = @idFormato
);

