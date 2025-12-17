SET NOCOUNT ON;

DECLARE @idTipoPreparacion INT;
DECLARE @idOrdenPreparacion INT;

INSERT INTO [igtpos].[dbo].PreparationType
SELECT NULL, 'Barra'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].PreparationType
	WHERE [Name] = 'Barra'
);

INSERT INTO [igtpos].[dbo].PreparationType
SELECT NULL, 'Cocina'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].PreparationType
	WHERE [Name] = 'Cocina'
);

INSERT INTO [igtpos].[dbo].PreparationOrder
SELECT NULL, 'Bebidas', 0, 1, 0, 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].PreparationOrder
	WHERE [Name] = 'Bebidas'
);

INSERT INTO [igtpos].[dbo].PreparationOrder
SELECT NULL, 'Primeros', 0, 1, 0, 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].PreparationOrder
	WHERE [Name] = 'Primeros'
);

