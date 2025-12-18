DECLARE @idTipoPreparacion INT;
DECLARE @idOrdenPreparacion INT;
DECLARE @idCentroVenta INT;
SET NOCOUNT ON;

INSERT INTO [igtpos].[dbo].KitchenDisplay
SELECT 'Cocina1', NULL, 1, 1, 0, 0, 0, 3, 1, 0, '[]', 'Cocina', 0, 1, 1, 1, 1
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].KitchenDisplay
	WHERE [Name] = 'Cocina1'
);

INSERT INTO [igtpos].[dbo].KitchenDisplayMainLineStatus
SELECT 1, 2
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].KitchenDisplayMainLineStatus
	WHERE KitchenDisplayId = 1
	AND Status = 2);

INSERT INTO [igtpos].[dbo].KitchenDisplaySecondaryLineStatus
SELECT 1, 1
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].KitchenDisplaySecondaryLineStatus
	WHERE KitchenDisplayId = 1
	AND Status = 1);

SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE [Name] = 'Cocina';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenDisplayPreparationType
	SELECT 1, @idTipoPreparacion
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenDisplayPreparationType
		WHERE KitchenDisplayId = 1
		AND PreparationTypeId = @idTipoPreparacion
	);

SET @idOrdenPreparacion = NULL;
SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE [Name] = 'Marche y pase';

IF @idOrdenPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenDisplayPreparationOrder
	SELECT 1, @idOrdenPreparacion
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenDisplayPreparationOrder
		WHERE KitchenDisplayId = 1
		AND PreparationOrderId = @idOrdenPreparacion
	);

SET @idOrdenPreparacion = NULL;
SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE [Name] = 'Primeros';

IF @idOrdenPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenDisplayPreparationOrder
	SELECT 1, @idOrdenPreparacion
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenDisplayPreparationOrder
		WHERE KitchenDisplayId = 1
		AND PreparationOrderId = @idOrdenPreparacion
	);

SET @idOrdenPreparacion = NULL;
SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE [Name] = 'Segundos';

IF @idOrdenPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenDisplayPreparationOrder
	SELECT 1, @idOrdenPreparacion
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenDisplayPreparationOrder
		WHERE KitchenDisplayId = 1
		AND PreparationOrderId = @idOrdenPreparacion
	);

SET @idOrdenPreparacion = NULL;
SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE [Name] = 'Postres';

IF @idOrdenPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenDisplayPreparationOrder
	SELECT 1, @idOrdenPreparacion
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenDisplayPreparationOrder
		WHERE KitchenDisplayId = 1
		AND PreparationOrderId = @idOrdenPreparacion
	);

SET @idCentroVenta = NULL;
SELECT @idCentroVenta = Id
FROM [igtpos].[dbo].SaleCenter
WHERE [Name] = 'Barra';

IF @idCentroVenta IS NOT NULL
	
INSERT INTO [igtpos].[dbo].KitchenDisplaySaleCenter
	
SELECT 1, @idCentroVenta
	
WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenDisplaySaleCenter
		WHERE KitchenDisplayId = 1
		AND SaleCenterId = @idCentroVenta
	);

SET @idCentroVenta = NULL;
SELECT @idCentroVenta = Id
FROM [igtpos].[dbo].SaleCenter
WHERE [Name] = 'Salón';

IF @idCentroVenta IS NOT NULL
	
INSERT INTO [igtpos].[dbo].KitchenDisplaySaleCenter
	
SELECT 1, @idCentroVenta
	
WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenDisplaySaleCenter
		WHERE KitchenDisplayId = 1
		AND SaleCenterId = @idCentroVenta
	);

SET @idCentroVenta = NULL;
SELECT @idCentroVenta = Id
FROM [igtpos].[dbo].SaleCenter
WHERE [Name] = 'Terraza';

IF @idCentroVenta IS NOT NULL
	
INSERT INTO [igtpos].[dbo].KitchenDisplaySaleCenter
	
SELECT 1, @idCentroVenta
	
WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenDisplaySaleCenter
		WHERE KitchenDisplayId = 1
		AND SaleCenterId = @idCentroVenta
	);

INSERT INTO [igtpos].[dbo].KitchenDisplay
SELECT 'Cocina2', NULL, 1, 1, 0, 0, 0, 3, 1, 0, '[]', 'Cocina', 0, 1, 1, 1, 1
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].KitchenDisplay
	WHERE [Name] = 'Cocina2'
);

INSERT INTO [igtpos].[dbo].KitchenDisplayMainLineStatus
SELECT 2, 2
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].KitchenDisplayMainLineStatus
	WHERE KitchenDisplayId = 2
	AND Status = 2);

INSERT INTO [igtpos].[dbo].KitchenDisplaySecondaryLineStatus
SELECT 2, 1
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].KitchenDisplaySecondaryLineStatus
	WHERE KitchenDisplayId = 2
	AND Status = 1);

SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE [Name] = 'Cocina';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenDisplayPreparationType
	SELECT 2, @idTipoPreparacion
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenDisplayPreparationType
		WHERE KitchenDisplayId = 1
		AND PreparationTypeId = @idTipoPreparacion
	);

SET @idOrdenPreparacion = NULL;
SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE [Name] = 'Marche y pase';

IF @idOrdenPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenDisplayPreparationOrder
	SELECT 2, @idOrdenPreparacion
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenDisplayPreparationOrder
		WHERE KitchenDisplayId = 1
		AND PreparationOrderId = @idOrdenPreparacion
	);

SET @idOrdenPreparacion = NULL;
SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE [Name] = 'Primeros';

IF @idOrdenPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenDisplayPreparationOrder
	SELECT 2, @idOrdenPreparacion
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenDisplayPreparationOrder
		WHERE KitchenDisplayId = 1
		AND PreparationOrderId = @idOrdenPreparacion
	);

SET @idOrdenPreparacion = NULL;
SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE [Name] = 'Segundos';

IF @idOrdenPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenDisplayPreparationOrder
	SELECT 2, @idOrdenPreparacion
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenDisplayPreparationOrder
		WHERE KitchenDisplayId = 1
		AND PreparationOrderId = @idOrdenPreparacion
	);

SET @idOrdenPreparacion = NULL;
SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE [Name] = 'Postres';

IF @idOrdenPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenDisplayPreparationOrder
	SELECT 2, @idOrdenPreparacion
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenDisplayPreparationOrder
		WHERE KitchenDisplayId = 1
		AND PreparationOrderId = @idOrdenPreparacion
	);

SET @idCentroVenta = NULL;
SELECT @idCentroVenta = Id
FROM [igtpos].[dbo].SaleCenter
WHERE [Name] = 'Barra';

IF @idCentroVenta IS NOT NULL
	
INSERT INTO [igtpos].[dbo].KitchenDisplaySaleCenter
	
SELECT 2, @idCentroVenta
	
WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenDisplaySaleCenter
		WHERE KitchenDisplayId = 2
		AND SaleCenterId = @idCentroVenta
	);

SET @idCentroVenta = NULL;
SELECT @idCentroVenta = Id
FROM [igtpos].[dbo].SaleCenter
WHERE [Name] = 'Salón';

IF @idCentroVenta IS NOT NULL
	
INSERT INTO [igtpos].[dbo].KitchenDisplaySaleCenter
	
SELECT 2, @idCentroVenta
	
WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenDisplaySaleCenter
		WHERE KitchenDisplayId = 2
		AND SaleCenterId = @idCentroVenta
	);

SET @idCentroVenta = NULL;
SELECT @idCentroVenta = Id
FROM [igtpos].[dbo].SaleCenter
WHERE [Name] = 'Terraza';

IF @idCentroVenta IS NOT NULL
	
INSERT INTO [igtpos].[dbo].KitchenDisplaySaleCenter
	
SELECT 2, @idCentroVenta
	
WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenDisplaySaleCenter
		WHERE KitchenDisplayId = 2
		AND SaleCenterId = @idCentroVenta
	);

