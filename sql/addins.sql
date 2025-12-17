DECLARE @SQL_QUERY NVARCHAR(MAX);
DECLARE @contenido VARBINARY(MAX);
DECLARE @addinRoleId INT;
DECLARE @addinId INT;
DECLARE @addinIndex INT;
DECLARE @idTraduccion INT;
SET NOCOUNT ON;

INSERT INTO [igtpos].[dbo].AddinRole
SELECT 'REFRESCO-COPA', 1, 0, 0, 0, 'REFRESCO', '0xFFBACDE2', 0x0, (SELECT Id FROM [igtpos].[dbo].SaleFormat WHERE Name = 'COPA SMIRNOFF'), 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId = (
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA SMIRNOFF'
	)
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'REFRESCO-COPA', 'REFUGE COPA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'REFRESCO-COPA', 'RIFUGIO COPA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'REFRESCO-COPA', 'REFRESCO-COPA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'REFRESCO-COPA', 'COPA VERBLIJF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].AddinRole
SELECT 'REFRESCO-COPA', 1, 0, 0, 0, 'REFRESCO', '0xFFBACDE2', 0x0, (SELECT Id FROM [igtpos].[dbo].SaleFormat WHERE Name = 'COPA CIROC'), 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId = (
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA CIROC'
	)
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'REFRESCO-COPA', 'REFUGE COPA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'REFRESCO-COPA', 'RIFUGIO COPA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'REFRESCO-COPA', 'REFRESCO-COPA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'REFRESCO-COPA', 'COPA VERBLIJF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].AddinRole
SELECT 'REFRESCO-COPA', 1, 0, 0, 0, 'REFRESCO', '0xFFBACDE2', 0x0, (SELECT Id FROM [igtpos].[dbo].SaleFormat WHERE Name = 'COPA BELVEDERE'), 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId = (
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA BELVEDERE'
	)
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'REFRESCO-COPA', 'REFUGE COPA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'REFRESCO-COPA', 'RIFUGIO COPA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'REFRESCO-COPA', 'REFRESCO-COPA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'REFRESCO-COPA', 'COPA VERBLIJF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].AddinRole
SELECT 'REFRESCO-COPA', 1, 0, 0, 0, 'REFRESCO', '0xFFBACDE2', 0x0, (SELECT Id FROM [igtpos].[dbo].SaleFormat WHERE Name = 'COPA BELUGA'), 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId = (
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA BELUGA'
	)
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'REFRESCO-COPA', 'REFUGE COPA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'REFRESCO-COPA', 'RIFUGIO COPA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'REFRESCO-COPA', 'REFRESCO-COPA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'REFRESCO-COPA', 'COPA VERBLIJF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].AddinRole
SELECT 'REFRESCO-COPA', 1, 0, 0, 0, 'REFRESCO', '0xFFBACDE2', 0x0, (SELECT Id FROM [igtpos].[dbo].SaleFormat WHERE Name = 'COPA ABSOLUT'), 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId = (
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA ABSOLUT'
	)
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'REFRESCO-COPA', 'REFUGE COPA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'REFRESCO-COPA', 'RIFUGIO COPA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'REFRESCO-COPA', 'REFRESCO-COPA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'REFRESCO-COPA', 'COPA REFUGE'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'REFRESCO-COPA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'REFRESCO-COPA', 'COPA VERBLIJF'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'REFRESCO-COPA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'REFRESCO-COPA';

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
FROM OPENROWSET(BULK ''C:\Users\Nest\Desktop\infogral\dist-maker (local)\en-desarrollo\imagenesAgora\categorias-carta-digital\refrescos.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].AddinRole
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Name = 'REFRESCO-COPA';

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA SMIRNOFF'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'COCA COLA'
);

SET @addinIndex = str(0);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA SMIRNOFF'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'COCA COLA ZERO'
);

SET @addinIndex = str(1);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA SMIRNOFF'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'FANTA NARANJA'
);

SET @addinIndex = str(2);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA SMIRNOFF'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'FANTA LIMÓN'
);

SET @addinIndex = str(3);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA SMIRNOFF'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'PEPSI'
);

SET @addinIndex = str(4);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA SMIRNOFF'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'RED BULL'
);

SET @addinIndex = str(5);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA SMIRNOFF'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'GINGER ALE'
);

SET @addinIndex = str(6);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA SMIRNOFF'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'AGUA CON GAS'
);

SET @addinIndex = str(7);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA CIROC'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'COCA COLA'
);

SET @addinIndex = str(0);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA CIROC'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'COCA COLA ZERO'
);

SET @addinIndex = str(1);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA CIROC'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'FANTA NARANJA'
);

SET @addinIndex = str(2);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA CIROC'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'FANTA LIMÓN'
);

SET @addinIndex = str(3);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA CIROC'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'PEPSI'
);

SET @addinIndex = str(4);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA CIROC'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'RED BULL'
);

SET @addinIndex = str(5);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA CIROC'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'GINGER ALE'
);

SET @addinIndex = str(6);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA CIROC'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'AGUA CON GAS'
);

SET @addinIndex = str(7);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA BELVEDERE'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'COCA COLA'
);

SET @addinIndex = str(0);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA BELVEDERE'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'COCA COLA ZERO'
);

SET @addinIndex = str(1);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA BELVEDERE'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'FANTA NARANJA'
);

SET @addinIndex = str(2);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA BELVEDERE'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'FANTA LIMÓN'
);

SET @addinIndex = str(3);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA BELVEDERE'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'PEPSI'
);

SET @addinIndex = str(4);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA BELVEDERE'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'RED BULL'
);

SET @addinIndex = str(5);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA BELVEDERE'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'GINGER ALE'
);

SET @addinIndex = str(6);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA BELVEDERE'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'AGUA CON GAS'
);

SET @addinIndex = str(7);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA BELUGA'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'COCA COLA'
);

SET @addinIndex = str(0);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA BELUGA'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'COCA COLA ZERO'
);

SET @addinIndex = str(1);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA BELUGA'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'FANTA NARANJA'
);

SET @addinIndex = str(2);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA BELUGA'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'FANTA LIMÓN'
);

SET @addinIndex = str(3);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA BELUGA'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'PEPSI'
);

SET @addinIndex = str(4);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA BELUGA'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'RED BULL'
);

SET @addinIndex = str(5);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA BELUGA'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'GINGER ALE'
);

SET @addinIndex = str(6);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA BELUGA'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'AGUA CON GAS'
);

SET @addinIndex = str(7);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA ABSOLUT'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'COCA COLA'
);

SET @addinIndex = str(0);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA ABSOLUT'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'COCA COLA ZERO'
);

SET @addinIndex = str(1);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA ABSOLUT'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'FANTA NARANJA'
);

SET @addinIndex = str(2);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA ABSOLUT'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'FANTA LIMÓN'
);

SET @addinIndex = str(3);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA ABSOLUT'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'PEPSI'
);

SET @addinIndex = str(4);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA ABSOLUT'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'RED BULL'
);

SET @addinIndex = str(5);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA ABSOLUT'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'GINGER ALE'
);

SET @addinIndex = str(6);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-COPA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'COPA ABSOLUT'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'AGUA CON GAS'
);

SET @addinIndex = str(7);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

INSERT INTO [igtpos].[dbo].AddinRole
SELECT 'REFRESCO-BOTELLA', 12, 0, 0, 0, 'REFRESCO', '0xFFBACDE2', 0x0, (SELECT Id FROM [igtpos].[dbo].SaleFormat WHERE Name = 'BOTELLA SMIRNOFF'), 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId = (
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA SMIRNOFF'
	)
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].AddinRole
SELECT 'REFRESCO-BOTELLA', 12, 0, 0, 0, 'REFRESCO', '0xFFBACDE2', 0x0, (SELECT Id FROM [igtpos].[dbo].SaleFormat WHERE Name = 'BOTELLA CIROC'), 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId = (
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA CIROC'
	)
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].AddinRole
SELECT 'REFRESCO-BOTELLA', 12, 0, 0, 0, 'REFRESCO', '0xFFBACDE2', 0x0, (SELECT Id FROM [igtpos].[dbo].SaleFormat WHERE Name = 'BOTELLA BELVEDERE'), 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId = (
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA BELVEDERE'
	)
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].AddinRole
SELECT 'REFRESCO-BOTELLA', 12, 0, 0, 0, 'REFRESCO', '0xFFBACDE2', 0x0, (SELECT Id FROM [igtpos].[dbo].SaleFormat WHERE Name = 'BOTELLA BELUGA'), 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId = (
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA BELUGA'
	)
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].AddinRole
SELECT 'REFRESCO-BOTELLA', 12, 0, 0, 0, 'REFRESCO', '0xFFBACDE2', 0x0, (SELECT Id FROM [igtpos].[dbo].SaleFormat WHERE Name = 'BOTELLA ABSOLUT'), 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId = (
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA ABSOLUT'
	)
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'REFRESCO-BOTELLA';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'REFRESCO-BOTELLA', 'REFRESCO-BOTELLA'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'REFRESCO-BOTELLA'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'REFRESCO-BOTELLA';

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
FROM OPENROWSET(BULK ''C:\Users\Nest\Desktop\infogral\dist-maker (local)\en-desarrollo\imagenesAgora\categorias-carta-digital\refrescos.jpg'', SINGLE_BLOB) AS ImagenBinaria;';

EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;

INSERT INTO [igtpos].[dbo].Image
SELECT NEWID(), @contenido
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
);

UPDATE [igtpos].[dbo].AddinRole
SET StyleImageId =
(
	SELECT MIN(Id)
	FROM [igtpos].[dbo].Image
	WHERE Content = @contenido
)
WHERE Name = 'REFRESCO-BOTELLA';

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA SMIRNOFF'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'COCA COLA'
);

SET @addinIndex = str(0);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA SMIRNOFF'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'COCA COLA ZERO'
);

SET @addinIndex = str(1);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA SMIRNOFF'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'FANTA NARANJA'
);

SET @addinIndex = str(2);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA SMIRNOFF'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'FANTA LIMÓN'
);

SET @addinIndex = str(3);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA SMIRNOFF'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'PEPSI'
);

SET @addinIndex = str(4);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA SMIRNOFF'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'RED BULL'
);

SET @addinIndex = str(5);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA SMIRNOFF'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'GINGER ALE'
);

SET @addinIndex = str(6);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA SMIRNOFF'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'AGUA CON GAS'
);

SET @addinIndex = str(7);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA CIROC'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'COCA COLA'
);

SET @addinIndex = str(0);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA CIROC'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'COCA COLA ZERO'
);

SET @addinIndex = str(1);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA CIROC'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'FANTA NARANJA'
);

SET @addinIndex = str(2);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA CIROC'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'FANTA LIMÓN'
);

SET @addinIndex = str(3);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA CIROC'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'PEPSI'
);

SET @addinIndex = str(4);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA CIROC'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'RED BULL'
);

SET @addinIndex = str(5);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA CIROC'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'GINGER ALE'
);

SET @addinIndex = str(6);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA CIROC'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'AGUA CON GAS'
);

SET @addinIndex = str(7);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA BELVEDERE'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'COCA COLA'
);

SET @addinIndex = str(0);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA BELVEDERE'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'COCA COLA ZERO'
);

SET @addinIndex = str(1);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA BELVEDERE'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'FANTA NARANJA'
);

SET @addinIndex = str(2);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA BELVEDERE'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'FANTA LIMÓN'
);

SET @addinIndex = str(3);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA BELVEDERE'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'PEPSI'
);

SET @addinIndex = str(4);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA BELVEDERE'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'RED BULL'
);

SET @addinIndex = str(5);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA BELVEDERE'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'GINGER ALE'
);

SET @addinIndex = str(6);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA BELVEDERE'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'AGUA CON GAS'
);

SET @addinIndex = str(7);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA BELUGA'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'COCA COLA'
);

SET @addinIndex = str(0);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA BELUGA'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'COCA COLA ZERO'
);

SET @addinIndex = str(1);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA BELUGA'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'FANTA NARANJA'
);

SET @addinIndex = str(2);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA BELUGA'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'FANTA LIMÓN'
);

SET @addinIndex = str(3);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA BELUGA'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'PEPSI'
);

SET @addinIndex = str(4);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA BELUGA'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'RED BULL'
);

SET @addinIndex = str(5);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA BELUGA'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'GINGER ALE'
);

SET @addinIndex = str(6);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA BELUGA'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'AGUA CON GAS'
);

SET @addinIndex = str(7);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA ABSOLUT'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'COCA COLA'
);

SET @addinIndex = str(0);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA ABSOLUT'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'COCA COLA ZERO'
);

SET @addinIndex = str(1);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA ABSOLUT'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'FANTA NARANJA'
);

SET @addinIndex = str(2);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA ABSOLUT'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'FANTA LIMÓN'
);

SET @addinIndex = str(3);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA ABSOLUT'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'PEPSI'
);

SET @addinIndex = str(4);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA ABSOLUT'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'RED BULL'
);

SET @addinIndex = str(5);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA ABSOLUT'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'GINGER ALE'
);

SET @addinIndex = str(6);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

SET @addinRoleId =
(
	SELECT Id
	FROM [igtpos].[dbo].AddinRole
	WHERE Name = 'REFRESCO-BOTELLA'
	AND SaleFormatId =
	(
		SELECT Id
		FROM [igtpos].[dbo].SaleFormat
		WHERE Name = 'BOTELLA ABSOLUT'
	)
);

SET @addinId = 
(
	SELECT Id
	FROM [igtpos].[dbo].SaleFormat
	WHERE Name = 'AGUA CON GAS'
);

SET @addinIndex = str(7);

INSERT INTO [igtpos].[dbo].AddinRoleAddin
SELECT @addinRoleId, @addinId, @addinIndex
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].AddinRoleAddin
	WHERE addinRoleId = @addinRoleId
	AND addinIndex = @addinIndex
);

