DECLARE @idTraduccion INT;
SET NOCOUNT ON;

UPDATE [igtpos].[dbo].PriceList
SET Name = 'General'
WHERE Id = 1;

UPDATE [igtpos].[dbo].SaleCenter
SET CurrentPriceListId = 1, DefaultPriceListId = 1;

INSERT INTO [igtpos].[dbo].DigitalMenuResources SELECT 'en'
WHERE (SELECT COUNT(*) FROM [igtpos].[dbo].DigitalMenuResources WHERE ReferenceLanguageCode='en') = 0;

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'General', 'General'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'General'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'General';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResources SELECT 'fr'
WHERE (SELECT COUNT(*) FROM [igtpos].[dbo].DigitalMenuResources WHERE ReferenceLanguageCode='fr') = 0;

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'General', 'Général'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'General'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'General';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResources SELECT 'de'
WHERE (SELECT COUNT(*) FROM [igtpos].[dbo].DigitalMenuResources WHERE ReferenceLanguageCode='de') = 0;

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'General', 'Allgemein'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'General'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'General';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResources SELECT 'it';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'General', 'Generale'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'General'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'General';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResources SELECT 'pt'
WHERE (SELECT COUNT(*) FROM [igtpos].[dbo].DigitalMenuResources WHERE ReferenceLanguageCode='pt') = 0;

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'General', 'Em geral'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'General'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'General';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResources SELECT 'sv'
WHERE (SELECT COUNT(*) FROM [igtpos].[dbo].DigitalMenuResources WHERE ReferenceLanguageCode='sv') = 0;

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'General', 'Allmän'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'General'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'General';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResources SELECT 'no'
WHERE (SELECT COUNT(*) FROM [igtpos].[dbo].DigitalMenuResources WHERE ReferenceLanguageCode='no') = 0;

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'General', 'General'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'General'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'General';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResources SELECT 'pl'
WHERE (SELECT COUNT(*) FROM [igtpos].[dbo].DigitalMenuResources WHERE ReferenceLanguageCode='pl') = 0;

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'General', 'Ogólny'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'General'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'General';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResources SELECT 'fi'
WHERE (SELECT COUNT(*) FROM [igtpos].[dbo].DigitalMenuResources WHERE ReferenceLanguageCode='fi') = 0;

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'General', 'Kenraali'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'General'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'General';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResources SELECT 'nl'
WHERE (SELECT COUNT(*) FROM [igtpos].[dbo].DigitalMenuResources WHERE ReferenceLanguageCode='nl') = 0;

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'General', 'Algemeen'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'General'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'General';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);