SET NOCOUNT ON;

DECLARE @familia NVARCHAR(255);
DECLARE @categoria NVARCHAR(255);
DECLARE @idFamilia INT;
DECLARE @idTraduccion INT;
DECLARE @idCategoria INT;

DECLARE @rutaImagen VARCHAR(255);
DECLARE @textoBoton VARCHAR(10);
DECLARE @SQL_QUERY NVARCHAR(MAX);
DECLARE @contenido VARBINARY(MAX);
DECLARE @saleableProducts INT;

INSERT INTO [igtpos].[dbo].[IndexedGroup]
SELECT 'ProductGroups_1'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].[IndexedGroup]
	WHERE KeyName = 'ProductGroups_1'
);

SET @familia = 'CAVAS Y CHAMPAGNES';
SET @categoria = @familia;
SET @rutaImagen = 'C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\categorias-carta-digital\cavas-y-champagnes.jpg';
SET @textoBoton = 'C&C';
SET @saleableProducts = 0;

INSERT INTO [igtpos].[dbo].Family
SELECT NULL, 'CAVAS Y CHAMPAGNES', 0, 0, 0, NULL, 'C&C', '0xFFBACDE2', 0x0, NULL, 1
WHERE NOT EXISTS
	(
	SELECT 1
	FROM [igtpos].[dbo].Family
	WHERE [Name] = 'CAVAS Y CHAMPAGNES'
);

INSERT INTO [igtpos].[dbo].Category
SELECT NULL, 'CAVAS Y CHAMPAGNES', 'C&C', '0xFFBACDE2', 0x0, NULL, 1, 1, 1, 1
WHERE NOT EXISTS
	(
	SELECT 1
	FROM [igtpos].[dbo].Category
	WHERE [Name] = 'CAVAS Y CHAMPAGNES'
);

SET @idFamilia =
(
	SELECT Id
	FROM [igtpos].[dbo].Family
	WHERE Name = @familia
);
SET @idCategoria = @idFamilia;

INSERT INTO [igtpos].[dbo].[IndexedGroup]
SELECT 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria)
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].[IndexedGroup]
	WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria)
);

SET @idFamilia = (SELECT Id FROM [igtpos].[dbo].Family WHERE [Name] = 'CAVAS Y CHAMPAGNES');
SET @idCategoria = @idFamilia;

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'CAVAS Y CHAMPAGNES', 'CAVAS AND CHAMPAGNES'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'CAVAS Y CHAMPAGNES'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'CAVAS Y CHAMPAGNES';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'CAVAS Y CHAMPAGNES', 'CAVAS ET CHAMPAGNES'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'CAVAS Y CHAMPAGNES'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'CAVAS Y CHAMPAGNES';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'CAVAS Y CHAMPAGNES', 'CAVAS UND CHAMPAGNER'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'CAVAS Y CHAMPAGNES'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'CAVAS Y CHAMPAGNES';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'CAVAS Y CHAMPAGNES', 'CAVAS E CHAMPAGNE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'CAVAS Y CHAMPAGNES'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'CAVAS Y CHAMPAGNES';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'CAVAS Y CHAMPAGNES', 'CAVAS E CHAMPANHES'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'CAVAS Y CHAMPAGNES'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'CAVAS Y CHAMPAGNES';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'CAVAS Y CHAMPAGNES', 'CAVAS OCH CHAMPAGNER'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'CAVAS Y CHAMPAGNES'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'CAVAS Y CHAMPAGNES';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'CAVAS Y CHAMPAGNES', 'CAVAER OG CHAMPAGNER'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'CAVAS Y CHAMPAGNES'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'CAVAS Y CHAMPAGNES';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'CAVAS Y CHAMPAGNES', 'KAWY I SZAMPANY'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'CAVAS Y CHAMPAGNES'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'CAVAS Y CHAMPAGNES';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'CAVAS Y CHAMPAGNES', 'CAVAS JA SAMPPANJAT'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'CAVAS Y CHAMPAGNES'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'CAVAS Y CHAMPAGNES';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'CAVAS Y CHAMPAGNES', 'CAVA''S EN CHAMPAGNES'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'CAVAS Y CHAMPAGNES'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'CAVAS Y CHAMPAGNES';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\categorias-carta-digital\cavas-y-champagnes.jpg'', SINGLE_BLOB) AS ImagenBinaria
WHERE BulkColumn IS NOT NULL;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido;

UPDATE [igtpos].[dbo].Family
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFamilia AND DeletionDate IS NULL;

UPDATE [igtpos].[dbo].Category
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idCategoria AND DeletionDate IS NULL;

IF NOT EXISTS (SELECT 1 FROM [igtpos].[dbo].[IndexItem] WHERE IndexedGroupId = 1 AND EntityTypeName = 'Category' AND EntityId = @idCategoria)
BEGIN
	INSERT INTO [igtpos].[dbo].[IndexItem]
	VALUES (1, 'Category', @idCategoria, 2);
END
ELSE
BEGIN
	UPDATE [igtpos].[dbo].[IndexItem]
	SET IndexedItemIndex = 2
	WHERE IndexedGroupId = 1
	AND EntityTypeName = 'Category'
	AND EntityId = @idCategoria;
END

SET @familia = 'PIZZAS';
SET @categoria = @familia;
SET @rutaImagen = 'C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\categorias-carta-digital\pizzas.jpg';
SET @textoBoton = 'PIZZAS';
SET @saleableProducts = 0;

INSERT INTO [igtpos].[dbo].Family
SELECT NULL, 'PIZZAS', 0, 0, 0, NULL, 'PIZZAS', '0xFFBACDE2', 0x0, NULL, 1
WHERE NOT EXISTS
	(
	SELECT 1
	FROM [igtpos].[dbo].Family
	WHERE [Name] = 'PIZZAS'
);

INSERT INTO [igtpos].[dbo].Category
SELECT NULL, 'PIZZAS', 'PIZZAS', '0xFFBACDE2', 0x0, NULL, 1, 1, 1, 1
WHERE NOT EXISTS
	(
	SELECT 1
	FROM [igtpos].[dbo].Category
	WHERE [Name] = 'PIZZAS'
);

SET @idFamilia =
(
	SELECT Id
	FROM [igtpos].[dbo].Family
	WHERE Name = @familia
);
SET @idCategoria = @idFamilia;

INSERT INTO [igtpos].[dbo].[IndexedGroup]
SELECT 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria)
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].[IndexedGroup]
	WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria)
);

SET @idFamilia = (SELECT Id FROM [igtpos].[dbo].Family WHERE [Name] = 'PIZZAS');
SET @idCategoria = @idFamilia;

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'PIZZAS', 'PIZZAS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'PIZZAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'PIZZAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'PIZZAS', 'PIZZAS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'PIZZAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'PIZZAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'PIZZAS', 'PIZZAS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'PIZZAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'PIZZAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'PIZZAS', 'PIZZAS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'PIZZAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'PIZZAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'PIZZAS', 'PIZZAS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'PIZZAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'PIZZAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'PIZZAS', 'PIZZAS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'PIZZAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'PIZZAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'PIZZAS', 'PIZZAS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'PIZZAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'PIZZAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'PIZZAS', 'PIZZA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'PIZZAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'PIZZAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'PIZZAS', 'PIZZAS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'PIZZAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'PIZZAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'PIZZAS', 'PIZZAS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'PIZZAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'PIZZAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\categorias-carta-digital\pizzas.jpg'', SINGLE_BLOB) AS ImagenBinaria
WHERE BulkColumn IS NOT NULL;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido;

UPDATE [igtpos].[dbo].Family
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFamilia AND DeletionDate IS NULL;

UPDATE [igtpos].[dbo].Category
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idCategoria AND DeletionDate IS NULL;

IF NOT EXISTS (SELECT 1 FROM [igtpos].[dbo].[IndexItem] WHERE IndexedGroupId = 1 AND EntityTypeName = 'Category' AND EntityId = @idCategoria)
BEGIN
	INSERT INTO [igtpos].[dbo].[IndexItem]
	VALUES (1, 'Category', @idCategoria, 3);
END
ELSE
BEGIN
	UPDATE [igtpos].[dbo].[IndexItem]
	SET IndexedItemIndex = 3
	WHERE IndexedGroupId = 1
	AND EntityTypeName = 'Category'
	AND EntityId = @idCategoria;
END

SET @familia = 'REFRESCOS';
SET @categoria = @familia;
SET @rutaImagen = 'C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\categorias-carta-digital\refrescos.jpg';
SET @textoBoton = 'REFRESCOS';
SET @saleableProducts = 0;

INSERT INTO [igtpos].[dbo].Family
SELECT NULL, 'REFRESCOS', 0, 0, 0, NULL, 'REFRESCOS', '0xFFBACDE2', 0x0, NULL, 1
WHERE NOT EXISTS
	(
	SELECT 1
	FROM [igtpos].[dbo].Family
	WHERE [Name] = 'REFRESCOS'
);

INSERT INTO [igtpos].[dbo].Category
SELECT NULL, 'REFRESCOS', 'REFRESCOS', '0xFFBACDE2', 0x0, NULL, 1, 1, 1, 1
WHERE NOT EXISTS
	(
	SELECT 1
	FROM [igtpos].[dbo].Category
	WHERE [Name] = 'REFRESCOS'
);

SET @idFamilia =
(
	SELECT Id
	FROM [igtpos].[dbo].Family
	WHERE Name = @familia
);
SET @idCategoria = @idFamilia;

INSERT INTO [igtpos].[dbo].[IndexedGroup]
SELECT 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria)
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].[IndexedGroup]
	WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria)
);

SET @idFamilia = (SELECT Id FROM [igtpos].[dbo].Family WHERE [Name] = 'REFRESCOS');
SET @idCategoria = @idFamilia;

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'REFRESCOS', 'REFRESHMENTS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'REFRESCOS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'REFRESCOS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'REFRESCOS', 'REFRIGERATIONS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'REFRESCOS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'REFRESCOS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'REFRESCOS', 'ERFRISCHUNGEN'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'REFRESCOS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'REFRESCOS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'REFRESCOS', 'RINFRESCHI'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'REFRESCOS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'REFRESCOS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'REFRESCOS', 'REFRESCOS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'REFRESCOS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'REFRESCOS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'REFRESCOS', 'FORFRISKNINGAR'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'REFRESCOS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'REFRESCOS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'REFRESCOS', 'FORFRISKELSER'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'REFRESCOS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'REFRESCOS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'REFRESCOS', 'ODSWIEZENIE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'REFRESCOS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'REFRESCOS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'REFRESCOS', 'VIRKISTYKSET'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'REFRESCOS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'REFRESCOS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'REFRESCOS', 'VERFRISSINGEN'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'REFRESCOS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'REFRESCOS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\categorias-carta-digital\refrescos.jpg'', SINGLE_BLOB) AS ImagenBinaria
WHERE BulkColumn IS NOT NULL;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido;

UPDATE [igtpos].[dbo].Family
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFamilia AND DeletionDate IS NULL;

UPDATE [igtpos].[dbo].Category
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idCategoria AND DeletionDate IS NULL;

IF NOT EXISTS (SELECT 1 FROM [igtpos].[dbo].[IndexItem] WHERE IndexedGroupId = 1 AND EntityTypeName = 'Category' AND EntityId = @idCategoria)
BEGIN
	INSERT INTO [igtpos].[dbo].[IndexItem]
	VALUES (1, 'Category', @idCategoria, 0);
END
ELSE
BEGIN
	UPDATE [igtpos].[dbo].[IndexItem]
	SET IndexedItemIndex = 0
	WHERE IndexedGroupId = 1
	AND EntityTypeName = 'Category'
	AND EntityId = @idCategoria;
END

SET @familia = 'VODKAS';
SET @categoria = @familia;
SET @rutaImagen = 'C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\categorias-carta-digital\vodkas.jpg';
SET @textoBoton = 'VODKAS';
SET @saleableProducts = 0;

INSERT INTO [igtpos].[dbo].Family
SELECT NULL, 'VODKAS', 0, 0, 0, NULL, 'VODKAS', '0xFFBACDE2', 0x0, NULL, 1
WHERE NOT EXISTS
	(
	SELECT 1
	FROM [igtpos].[dbo].Family
	WHERE [Name] = 'VODKAS'
);

INSERT INTO [igtpos].[dbo].Category
SELECT NULL, 'VODKAS', 'VODKAS', '0xFFBACDE2', 0x0, NULL, 1, 1, 1, 1
WHERE NOT EXISTS
	(
	SELECT 1
	FROM [igtpos].[dbo].Category
	WHERE [Name] = 'VODKAS'
);

SET @idFamilia =
(
	SELECT Id
	FROM [igtpos].[dbo].Family
	WHERE Name = @familia
);
SET @idCategoria = @idFamilia;

INSERT INTO [igtpos].[dbo].[IndexedGroup]
SELECT 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria)
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].[IndexedGroup]
	WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria)
);

SET @idFamilia = (SELECT Id FROM [igtpos].[dbo].Family WHERE [Name] = 'VODKAS');
SET @idCategoria = @idFamilia;

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'VODKAS', 'VODKAS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'VODKAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'VODKAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'VODKAS', 'VODKAS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'VODKAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'VODKAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'VODKAS', 'VODKAS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'VODKAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'VODKAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'VODKAS', 'VODKAS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'VODKAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'VODKAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'VODKAS', 'VODKAS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'VODKAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'VODKAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'VODKAS', 'VODKAS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'VODKAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'VODKAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'VODKAS', 'VODKAS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'VODKAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'VODKAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'VODKAS', 'VODKAS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'VODKAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'VODKAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'VODKAS', 'VODKAS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'VODKAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'VODKAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'VODKAS', 'VODKAS'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'VODKAS'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'VODKAS';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

SET @SQL_QUERY = N'
SELECT @contenidoImagen = BulkColumn
FROM OPENROWSET(BULK ''C:\Users\nesto\Desktop\Agora_LAB\imagenesAgora\categorias-carta-digital\vodkas.jpg'', SINGLE_BLOB) AS ImagenBinaria
WHERE BulkColumn IS NOT NULL;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido;

UPDATE [igtpos].[dbo].Family
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idFamilia AND DeletionDate IS NULL;

UPDATE [igtpos].[dbo].Category
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Id = @idCategoria AND DeletionDate IS NULL;

IF NOT EXISTS (SELECT 1 FROM [igtpos].[dbo].[IndexItem] WHERE IndexedGroupId = 1 AND EntityTypeName = 'Category' AND EntityId = @idCategoria)
BEGIN
	INSERT INTO [igtpos].[dbo].[IndexItem]
	VALUES (1, 'Category', @idCategoria, 1);
END
ELSE
BEGIN
	UPDATE [igtpos].[dbo].[IndexItem]
	SET IndexedItemIndex = 1
	WHERE IndexedGroupId = 1
	AND EntityTypeName = 'Category'
	AND EntityId = @idCategoria;
END

