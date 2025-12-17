SET NOCOUNT ON;

DECLARE @idTipoPreparacion INT;
DECLARE @idOrdenPreparacion INT;
DECLARE @idFamilia INT;
DECLARE @idCategoria INT;
DECLARE @idAlergeno INT;
DECLARE @idProducto INT;
DECLARE @idGrupo INT;
DECLARE @SQL_QUERY NVARCHAR(MAX);
DECLARE @contenido VARBINARY(MAX);
DECLARE @idTraduccion INT;

SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE Name = 'Barra';

SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE Name = 'Bebidas';

SELECT @idFamilia = Id
FROM [igtpos].[dbo].Family
WHERE Name = 'CAVAS Y CHAMPAGNES';

SELECT @idCategoria = Id
FROM [igtpos].[dbo].Category
WHERE Name = 'CAVAS Y CHAMPAGNES';

INSERT INTO [igtpos].[dbo].Product
SELECT 'P', NULL, 'DON PERIGNON', '', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, @idTipoPreparacion, @idOrdenPreparacion, @idFamilia, 4, NULL, 0, '', 1, '', 'CAVAS Y CHAMPAGNES', '', NULL, NULL, 0, 0, 0, 0, '', 1, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Product
	WHERE [Name] = 'DON PERIGNON'
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE Name = 'DON PERIGNON';

INSERT INTO [igtpos].[dbo].ProductCategory
SELECT @idProducto, @idCategoria
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].ProductCategory
	WHERE CategoryId = @idCategoria
	AND ProductId = @idProducto
);

SELECT @idGrupo = Id
FROM[igtpos].[dbo].IndexedGroup
WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria);

INSERT INTO [igtpos].[dbo].IndexItem
SELECT @idGrupo, 'Product', @idProducto, 2
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].IndexItem
	WHERE IndexedGroupId = @idGrupo
	AND EntityTypeName = 'Product'
	AND EntityId = @idProducto
	AND IndexedItemIndex = 2
);

SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE Name = 'Barra';

SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE Name = 'Bebidas';

SELECT @idFamilia = Id
FROM [igtpos].[dbo].Family
WHERE Name = 'CAVAS Y CHAMPAGNES';

SELECT @idCategoria = Id
FROM [igtpos].[dbo].Category
WHERE Name = 'CAVAS Y CHAMPAGNES';

INSERT INTO [igtpos].[dbo].Product
SELECT 'P', NULL, 'FREIXENET BRUT', '', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, @idTipoPreparacion, @idOrdenPreparacion, @idFamilia, 4, NULL, 0, '', 1, '', 'CAVAS Y CHAMPAGNES', '', NULL, NULL, 0, 0, 0, 0, '', 1, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Product
	WHERE [Name] = 'FREIXENET BRUT'
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE Name = 'FREIXENET BRUT';

INSERT INTO [igtpos].[dbo].ProductCategory
SELECT @idProducto, @idCategoria
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].ProductCategory
	WHERE CategoryId = @idCategoria
	AND ProductId = @idProducto
);

SELECT @idGrupo = Id
FROM[igtpos].[dbo].IndexedGroup
WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria);

INSERT INTO [igtpos].[dbo].IndexItem
SELECT @idGrupo, 'Product', @idProducto, 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].IndexItem
	WHERE IndexedGroupId = @idGrupo
	AND EntityTypeName = 'Product'
	AND EntityId = @idProducto
	AND IndexedItemIndex = 0
);

SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE Name = 'Barra';

SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE Name = 'Bebidas';

SELECT @idFamilia = Id
FROM [igtpos].[dbo].Family
WHERE Name = 'CAVAS Y CHAMPAGNES';

SELECT @idCategoria = Id
FROM [igtpos].[dbo].Category
WHERE Name = 'CAVAS Y CHAMPAGNES';

INSERT INTO [igtpos].[dbo].Product
SELECT 'P', NULL, 'FREIXENET ROSÈ', '', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, @idTipoPreparacion, @idOrdenPreparacion, @idFamilia, 4, NULL, 0, '', 1, '', 'CAVAS Y CHAMPAGNES', '', NULL, NULL, 0, 0, 0, 0, '', 1, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Product
	WHERE [Name] = 'FREIXENET ROSÈ'
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE Name = 'FREIXENET ROSÈ';

INSERT INTO [igtpos].[dbo].ProductCategory
SELECT @idProducto, @idCategoria
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].ProductCategory
	WHERE CategoryId = @idCategoria
	AND ProductId = @idProducto
);

SELECT @idGrupo = Id
FROM[igtpos].[dbo].IndexedGroup
WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria);

INSERT INTO [igtpos].[dbo].IndexItem
SELECT @idGrupo, 'Product', @idProducto, 1
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].IndexItem
	WHERE IndexedGroupId = @idGrupo
	AND EntityTypeName = 'Product'
	AND EntityId = @idProducto
	AND IndexedItemIndex = 1
);

SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE Name = 'Cocina';

SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE Name = 'Primeros';

SELECT @idFamilia = Id
FROM [igtpos].[dbo].Family
WHERE Name = 'PIZZAS';

SELECT @idCategoria = Id
FROM [igtpos].[dbo].Category
WHERE Name = 'PIZZAS';

INSERT INTO [igtpos].[dbo].Product
SELECT 'P', NULL, 'FOCACCIA', '', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, @idTipoPreparacion, @idOrdenPreparacion, @idFamilia, 4, NULL, 0, '', 1, '', 'PIZZAS', '', NULL, NULL, 0, 0, 0, 0, '', 1, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Product
	WHERE [Name] = 'FOCACCIA'
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE Name = 'FOCACCIA';

INSERT INTO [igtpos].[dbo].ProductCategory
SELECT @idProducto, @idCategoria
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].ProductCategory
	WHERE CategoryId = @idCategoria
	AND ProductId = @idProducto
);

SELECT @idGrupo = Id
FROM[igtpos].[dbo].IndexedGroup
WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria);

INSERT INTO [igtpos].[dbo].IndexItem
SELECT @idGrupo, 'Product', @idProducto, 3
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].IndexItem
	WHERE IndexedGroupId = @idGrupo
	AND EntityTypeName = 'Product'
	AND EntityId = @idProducto
	AND IndexedItemIndex = 3
);

SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE Name = 'Cocina';

SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE Name = 'Primeros';

SELECT @idFamilia = Id
FROM [igtpos].[dbo].Family
WHERE Name = 'PIZZAS';

SELECT @idCategoria = Id
FROM [igtpos].[dbo].Category
WHERE Name = 'PIZZAS';

INSERT INTO [igtpos].[dbo].Product
SELECT 'P', NULL, 'PIZZA DE JAMÓN', '', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, @idTipoPreparacion, @idOrdenPreparacion, @idFamilia, 4, NULL, 0, '', 1, '', 'PIZZAS', '', NULL, NULL, 0, 0, 0, 0, '', 1, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Product
	WHERE [Name] = 'PIZZA DE JAMÓN'
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE Name = 'PIZZA DE JAMÓN';

INSERT INTO [igtpos].[dbo].ProductCategory
SELECT @idProducto, @idCategoria
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].ProductCategory
	WHERE CategoryId = @idCategoria
	AND ProductId = @idProducto
);

SELECT @idGrupo = Id
FROM[igtpos].[dbo].IndexedGroup
WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria);

INSERT INTO [igtpos].[dbo].IndexItem
SELECT @idGrupo, 'Product', @idProducto, 2
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].IndexItem
	WHERE IndexedGroupId = @idGrupo
	AND EntityTypeName = 'Product'
	AND EntityId = @idProducto
	AND IndexedItemIndex = 2
);

SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE Name = 'Cocina';

SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE Name = 'Primeros';

SELECT @idFamilia = Id
FROM [igtpos].[dbo].Family
WHERE Name = 'PIZZAS';

SELECT @idCategoria = Id
FROM [igtpos].[dbo].Category
WHERE Name = 'PIZZAS';

INSERT INTO [igtpos].[dbo].Product
SELECT 'P', NULL, 'PIZZA DE SALMÓN', '', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, @idTipoPreparacion, @idOrdenPreparacion, @idFamilia, 4, NULL, 0, '', 1, '', 'PIZZAS', '', NULL, NULL, 0, 0, 0, 0, '', 1, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Product
	WHERE [Name] = 'PIZZA DE SALMÓN'
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE Name = 'PIZZA DE SALMÓN';

INSERT INTO [igtpos].[dbo].ProductCategory
SELECT @idProducto, @idCategoria
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].ProductCategory
	WHERE CategoryId = @idCategoria
	AND ProductId = @idProducto
);

SELECT @idGrupo = Id
FROM[igtpos].[dbo].IndexedGroup
WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria);

INSERT INTO [igtpos].[dbo].IndexItem
SELECT @idGrupo, 'Product', @idProducto, 1
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].IndexItem
	WHERE IndexedGroupId = @idGrupo
	AND EntityTypeName = 'Product'
	AND EntityId = @idProducto
	AND IndexedItemIndex = 1
);

SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE Name = 'Cocina';

SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE Name = 'Primeros';

SELECT @idFamilia = Id
FROM [igtpos].[dbo].Family
WHERE Name = 'PIZZAS';

SELECT @idCategoria = Id
FROM [igtpos].[dbo].Category
WHERE Name = 'PIZZAS';

INSERT INTO [igtpos].[dbo].Product
SELECT 'P', NULL, 'PIZZA MARGARITA', '', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, @idTipoPreparacion, @idOrdenPreparacion, @idFamilia, 4, NULL, 0, '', 1, '', 'PIZZAS', '', NULL, NULL, 0, 0, 0, 0, '', 1, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Product
	WHERE [Name] = 'PIZZA MARGARITA'
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE Name = 'PIZZA MARGARITA';

INSERT INTO [igtpos].[dbo].ProductCategory
SELECT @idProducto, @idCategoria
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].ProductCategory
	WHERE CategoryId = @idCategoria
	AND ProductId = @idProducto
);

SELECT @idGrupo = Id
FROM[igtpos].[dbo].IndexedGroup
WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria);

INSERT INTO [igtpos].[dbo].IndexItem
SELECT @idGrupo, 'Product', @idProducto, 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].IndexItem
	WHERE IndexedGroupId = @idGrupo
	AND EntityTypeName = 'Product'
	AND EntityId = @idProducto
	AND IndexedItemIndex = 0
);

SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE Name = 'Barra';

SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE Name = 'Bebidas';

SELECT @idFamilia = Id
FROM [igtpos].[dbo].Family
WHERE Name = 'REFRESCOS';

SELECT @idCategoria = Id
FROM [igtpos].[dbo].Category
WHERE Name = 'REFRESCOS';

INSERT INTO [igtpos].[dbo].Product
SELECT 'P', NULL, 'AGUA CON GAS', '', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, @idTipoPreparacion, @idOrdenPreparacion, @idFamilia, 4, NULL, 0, '', 1, '', 'REFRESCOS', '', NULL, NULL, 0, 0, 0, 0, '', 1, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Product
	WHERE [Name] = 'AGUA CON GAS'
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE Name = 'AGUA CON GAS';

INSERT INTO [igtpos].[dbo].ProductCategory
SELECT @idProducto, @idCategoria
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].ProductCategory
	WHERE CategoryId = @idCategoria
	AND ProductId = @idProducto
);

SELECT @idGrupo = Id
FROM[igtpos].[dbo].IndexedGroup
WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria);

INSERT INTO [igtpos].[dbo].IndexItem
SELECT @idGrupo, 'Product', @idProducto, 7
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].IndexItem
	WHERE IndexedGroupId = @idGrupo
	AND EntityTypeName = 'Product'
	AND EntityId = @idProducto
	AND IndexedItemIndex = 7
);

SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE Name = 'Barra';

SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE Name = 'Bebidas';

SELECT @idFamilia = Id
FROM [igtpos].[dbo].Family
WHERE Name = 'REFRESCOS';

SELECT @idCategoria = Id
FROM [igtpos].[dbo].Category
WHERE Name = 'REFRESCOS';

INSERT INTO [igtpos].[dbo].Product
SELECT 'P', NULL, 'COCA COLA', '', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, @idTipoPreparacion, @idOrdenPreparacion, @idFamilia, 4, NULL, 0, '', 1, '', 'REFRESCOS', '', NULL, NULL, 0, 0, 0, 0, '', 1, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Product
	WHERE [Name] = 'COCA COLA'
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE Name = 'COCA COLA';

INSERT INTO [igtpos].[dbo].ProductCategory
SELECT @idProducto, @idCategoria
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].ProductCategory
	WHERE CategoryId = @idCategoria
	AND ProductId = @idProducto
);

SELECT @idGrupo = Id
FROM[igtpos].[dbo].IndexedGroup
WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria);

INSERT INTO [igtpos].[dbo].IndexItem
SELECT @idGrupo, 'Product', @idProducto, 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].IndexItem
	WHERE IndexedGroupId = @idGrupo
	AND EntityTypeName = 'Product'
	AND EntityId = @idProducto
	AND IndexedItemIndex = 0
);

SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE Name = 'Barra';

SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE Name = 'Bebidas';

SELECT @idFamilia = Id
FROM [igtpos].[dbo].Family
WHERE Name = 'REFRESCOS';

SELECT @idCategoria = Id
FROM [igtpos].[dbo].Category
WHERE Name = 'REFRESCOS';

INSERT INTO [igtpos].[dbo].Product
SELECT 'P', NULL, 'COCA COLA ZERO', '', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, @idTipoPreparacion, @idOrdenPreparacion, @idFamilia, 4, NULL, 0, '', 1, '', 'REFRESCOS', '', NULL, NULL, 0, 0, 0, 0, '', 1, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Product
	WHERE [Name] = 'COCA COLA ZERO'
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE Name = 'COCA COLA ZERO';

INSERT INTO [igtpos].[dbo].ProductCategory
SELECT @idProducto, @idCategoria
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].ProductCategory
	WHERE CategoryId = @idCategoria
	AND ProductId = @idProducto
);

SELECT @idGrupo = Id
FROM[igtpos].[dbo].IndexedGroup
WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria);

INSERT INTO [igtpos].[dbo].IndexItem
SELECT @idGrupo, 'Product', @idProducto, 1
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].IndexItem
	WHERE IndexedGroupId = @idGrupo
	AND EntityTypeName = 'Product'
	AND EntityId = @idProducto
	AND IndexedItemIndex = 1
);

SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE Name = 'Barra';

SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE Name = 'Bebidas';

SELECT @idFamilia = Id
FROM [igtpos].[dbo].Family
WHERE Name = 'REFRESCOS';

SELECT @idCategoria = Id
FROM [igtpos].[dbo].Category
WHERE Name = 'REFRESCOS';

INSERT INTO [igtpos].[dbo].Product
SELECT 'P', NULL, 'FANTA LIMÓN', '', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, @idTipoPreparacion, @idOrdenPreparacion, @idFamilia, 4, NULL, 0, '', 1, '', 'REFRESCOS', '', NULL, NULL, 0, 0, 0, 0, '', 1, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Product
	WHERE [Name] = 'FANTA LIMÓN'
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE Name = 'FANTA LIMÓN';

INSERT INTO [igtpos].[dbo].ProductCategory
SELECT @idProducto, @idCategoria
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].ProductCategory
	WHERE CategoryId = @idCategoria
	AND ProductId = @idProducto
);

SELECT @idGrupo = Id
FROM[igtpos].[dbo].IndexedGroup
WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria);

INSERT INTO [igtpos].[dbo].IndexItem
SELECT @idGrupo, 'Product', @idProducto, 3
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].IndexItem
	WHERE IndexedGroupId = @idGrupo
	AND EntityTypeName = 'Product'
	AND EntityId = @idProducto
	AND IndexedItemIndex = 3
);

SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE Name = 'Barra';

SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE Name = 'Bebidas';

SELECT @idFamilia = Id
FROM [igtpos].[dbo].Family
WHERE Name = 'REFRESCOS';

SELECT @idCategoria = Id
FROM [igtpos].[dbo].Category
WHERE Name = 'REFRESCOS';

INSERT INTO [igtpos].[dbo].Product
SELECT 'P', NULL, 'FANTA NARANJA', '', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, @idTipoPreparacion, @idOrdenPreparacion, @idFamilia, 4, NULL, 0, '', 1, '', 'REFRESCOS', '', NULL, NULL, 0, 0, 0, 0, '', 1, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Product
	WHERE [Name] = 'FANTA NARANJA'
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE Name = 'FANTA NARANJA';

INSERT INTO [igtpos].[dbo].ProductCategory
SELECT @idProducto, @idCategoria
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].ProductCategory
	WHERE CategoryId = @idCategoria
	AND ProductId = @idProducto
);

SELECT @idGrupo = Id
FROM[igtpos].[dbo].IndexedGroup
WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria);

INSERT INTO [igtpos].[dbo].IndexItem
SELECT @idGrupo, 'Product', @idProducto, 2
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].IndexItem
	WHERE IndexedGroupId = @idGrupo
	AND EntityTypeName = 'Product'
	AND EntityId = @idProducto
	AND IndexedItemIndex = 2
);

SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE Name = 'Barra';

SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE Name = 'Bebidas';

SELECT @idFamilia = Id
FROM [igtpos].[dbo].Family
WHERE Name = 'REFRESCOS';

SELECT @idCategoria = Id
FROM [igtpos].[dbo].Category
WHERE Name = 'REFRESCOS';

INSERT INTO [igtpos].[dbo].Product
SELECT 'P', NULL, 'GINGER ALE', '', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, @idTipoPreparacion, @idOrdenPreparacion, @idFamilia, 4, NULL, 0, '', 1, '', 'REFRESCOS', '', NULL, NULL, 0, 0, 0, 0, '', 1, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Product
	WHERE [Name] = 'GINGER ALE'
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE Name = 'GINGER ALE';

INSERT INTO [igtpos].[dbo].ProductCategory
SELECT @idProducto, @idCategoria
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].ProductCategory
	WHERE CategoryId = @idCategoria
	AND ProductId = @idProducto
);

SELECT @idGrupo = Id
FROM[igtpos].[dbo].IndexedGroup
WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria);

INSERT INTO [igtpos].[dbo].IndexItem
SELECT @idGrupo, 'Product', @idProducto, 6
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].IndexItem
	WHERE IndexedGroupId = @idGrupo
	AND EntityTypeName = 'Product'
	AND EntityId = @idProducto
	AND IndexedItemIndex = 6
);

SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE Name = 'Barra';

SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE Name = 'Bebidas';

SELECT @idFamilia = Id
FROM [igtpos].[dbo].Family
WHERE Name = 'REFRESCOS';

SELECT @idCategoria = Id
FROM [igtpos].[dbo].Category
WHERE Name = 'REFRESCOS';

INSERT INTO [igtpos].[dbo].Product
SELECT 'P', NULL, 'PEPSI', '', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, @idTipoPreparacion, @idOrdenPreparacion, @idFamilia, 4, NULL, 0, '', 1, '', 'REFRESCOS', '', NULL, NULL, 0, 0, 0, 0, '', 1, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Product
	WHERE [Name] = 'PEPSI'
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE Name = 'PEPSI';

INSERT INTO [igtpos].[dbo].ProductCategory
SELECT @idProducto, @idCategoria
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].ProductCategory
	WHERE CategoryId = @idCategoria
	AND ProductId = @idProducto
);

SELECT @idGrupo = Id
FROM[igtpos].[dbo].IndexedGroup
WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria);

INSERT INTO [igtpos].[dbo].IndexItem
SELECT @idGrupo, 'Product', @idProducto, 4
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].IndexItem
	WHERE IndexedGroupId = @idGrupo
	AND EntityTypeName = 'Product'
	AND EntityId = @idProducto
	AND IndexedItemIndex = 4
);

SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE Name = 'Barra';

SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE Name = 'Bebidas';

SELECT @idFamilia = Id
FROM [igtpos].[dbo].Family
WHERE Name = 'REFRESCOS';

SELECT @idCategoria = Id
FROM [igtpos].[dbo].Category
WHERE Name = 'REFRESCOS';

INSERT INTO [igtpos].[dbo].Product
SELECT 'P', NULL, 'RED BULL', '', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, @idTipoPreparacion, @idOrdenPreparacion, @idFamilia, 4, NULL, 0, '', 1, '', 'REFRESCOS', '', NULL, NULL, 0, 0, 0, 0, '', 1, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Product
	WHERE [Name] = 'RED BULL'
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE Name = 'RED BULL';

INSERT INTO [igtpos].[dbo].ProductCategory
SELECT @idProducto, @idCategoria
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].ProductCategory
	WHERE CategoryId = @idCategoria
	AND ProductId = @idProducto
);

SELECT @idGrupo = Id
FROM[igtpos].[dbo].IndexedGroup
WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria);

INSERT INTO [igtpos].[dbo].IndexItem
SELECT @idGrupo, 'Product', @idProducto, 5
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].IndexItem
	WHERE IndexedGroupId = @idGrupo
	AND EntityTypeName = 'Product'
	AND EntityId = @idProducto
	AND IndexedItemIndex = 5
);

SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE Name = 'Barra';

SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE Name = 'Bebidas';

SELECT @idFamilia = Id
FROM [igtpos].[dbo].Family
WHERE Name = 'VODKAS';

SELECT @idCategoria = Id
FROM [igtpos].[dbo].Category
WHERE Name = 'VODKAS';

INSERT INTO [igtpos].[dbo].Product
SELECT 'P', NULL, 'ABSOLUT', '', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, @idTipoPreparacion, @idOrdenPreparacion, @idFamilia, 4, NULL, 0, '', 1, '', 'VODKAS', '', NULL, NULL, 0, 0, 0, 0, '', 1, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Product
	WHERE [Name] = 'ABSOLUT'
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE Name = 'ABSOLUT';

INSERT INTO [igtpos].[dbo].ProductCategory
SELECT @idProducto, @idCategoria
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].ProductCategory
	WHERE CategoryId = @idCategoria
	AND ProductId = @idProducto
);

SELECT @idGrupo = Id
FROM[igtpos].[dbo].IndexedGroup
WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria);

INSERT INTO [igtpos].[dbo].IndexItem
SELECT @idGrupo, 'Product', @idProducto, 4
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].IndexItem
	WHERE IndexedGroupId = @idGrupo
	AND EntityTypeName = 'Product'
	AND EntityId = @idProducto
	AND IndexedItemIndex = 4
);

SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE Name = 'Barra';

SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE Name = 'Bebidas';

SELECT @idFamilia = Id
FROM [igtpos].[dbo].Family
WHERE Name = 'VODKAS';

SELECT @idCategoria = Id
FROM [igtpos].[dbo].Category
WHERE Name = 'VODKAS';

INSERT INTO [igtpos].[dbo].Product
SELECT 'P', NULL, 'BELUGA', '', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, @idTipoPreparacion, @idOrdenPreparacion, @idFamilia, 4, NULL, 0, '', 1, '', 'VODKAS', '', NULL, NULL, 0, 0, 0, 0, '', 1, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Product
	WHERE [Name] = 'BELUGA'
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE Name = 'BELUGA';

INSERT INTO [igtpos].[dbo].ProductCategory
SELECT @idProducto, @idCategoria
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].ProductCategory
	WHERE CategoryId = @idCategoria
	AND ProductId = @idProducto
);

SELECT @idGrupo = Id
FROM[igtpos].[dbo].IndexedGroup
WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria);

INSERT INTO [igtpos].[dbo].IndexItem
SELECT @idGrupo, 'Product', @idProducto, 3
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].IndexItem
	WHERE IndexedGroupId = @idGrupo
	AND EntityTypeName = 'Product'
	AND EntityId = @idProducto
	AND IndexedItemIndex = 3
);

SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE Name = 'Barra';

SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE Name = 'Bebidas';

SELECT @idFamilia = Id
FROM [igtpos].[dbo].Family
WHERE Name = 'VODKAS';

SELECT @idCategoria = Id
FROM [igtpos].[dbo].Category
WHERE Name = 'VODKAS';

INSERT INTO [igtpos].[dbo].Product
SELECT 'P', NULL, 'BELVEDERE', '', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, @idTipoPreparacion, @idOrdenPreparacion, @idFamilia, 4, NULL, 0, '', 1, '', 'VODKAS', '', NULL, NULL, 0, 0, 0, 0, '', 1, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Product
	WHERE [Name] = 'BELVEDERE'
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE Name = 'BELVEDERE';

INSERT INTO [igtpos].[dbo].ProductCategory
SELECT @idProducto, @idCategoria
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].ProductCategory
	WHERE CategoryId = @idCategoria
	AND ProductId = @idProducto
);

SELECT @idGrupo = Id
FROM[igtpos].[dbo].IndexedGroup
WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria);

INSERT INTO [igtpos].[dbo].IndexItem
SELECT @idGrupo, 'Product', @idProducto, 2
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].IndexItem
	WHERE IndexedGroupId = @idGrupo
	AND EntityTypeName = 'Product'
	AND EntityId = @idProducto
	AND IndexedItemIndex = 2
);

SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE Name = 'Barra';

SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE Name = 'Bebidas';

SELECT @idFamilia = Id
FROM [igtpos].[dbo].Family
WHERE Name = 'VODKAS';

SELECT @idCategoria = Id
FROM [igtpos].[dbo].Category
WHERE Name = 'VODKAS';

INSERT INTO [igtpos].[dbo].Product
SELECT 'P', NULL, 'CIROC', '', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, @idTipoPreparacion, @idOrdenPreparacion, @idFamilia, 4, NULL, 0, '', 1, '', 'VODKAS', '', NULL, NULL, 0, 0, 0, 0, '', 1, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Product
	WHERE [Name] = 'CIROC'
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE Name = 'CIROC';

INSERT INTO [igtpos].[dbo].ProductCategory
SELECT @idProducto, @idCategoria
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].ProductCategory
	WHERE CategoryId = @idCategoria
	AND ProductId = @idProducto
);

SELECT @idGrupo = Id
FROM[igtpos].[dbo].IndexedGroup
WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria);

INSERT INTO [igtpos].[dbo].IndexItem
SELECT @idGrupo, 'Product', @idProducto, 1
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].IndexItem
	WHERE IndexedGroupId = @idGrupo
	AND EntityTypeName = 'Product'
	AND EntityId = @idProducto
	AND IndexedItemIndex = 1
);

SELECT @idTipoPreparacion = Id
FROM [igtpos].[dbo].PreparationType
WHERE Name = 'Barra';

SELECT @idOrdenPreparacion = Id
FROM [igtpos].[dbo].PreparationOrder
WHERE Name = 'Bebidas';

SELECT @idFamilia = Id
FROM [igtpos].[dbo].Family
WHERE Name = 'VODKAS';

SELECT @idCategoria = Id
FROM [igtpos].[dbo].Category
WHERE Name = 'VODKAS';

INSERT INTO [igtpos].[dbo].Product
SELECT 'P', NULL, 'SMIRNOFF', '', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, NULL, NULL, @idTipoPreparacion, @idOrdenPreparacion, @idFamilia, 4, NULL, 0, '', 1, '', 'VODKAS', '', NULL, NULL, 0, 0, 0, 0, '', 1, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Product
	WHERE [Name] = 'SMIRNOFF'
);

SELECT @idProducto = Id
FROM [igtpos].[dbo].Product
WHERE Name = 'SMIRNOFF';

INSERT INTO [igtpos].[dbo].ProductCategory
SELECT @idProducto, @idCategoria
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].ProductCategory
	WHERE CategoryId = @idCategoria
	AND ProductId = @idProducto
);

SELECT @idGrupo = Id
FROM[igtpos].[dbo].IndexedGroup
WHERE KeyName = 'Category_' + CONVERT(NVARCHAR(MAX), @idCategoria);

INSERT INTO [igtpos].[dbo].IndexItem
SELECT @idGrupo, 'Product', @idProducto, 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].IndexItem
	WHERE IndexedGroupId = @idGrupo
	AND EntityTypeName = 'Product'
	AND EntityId = @idProducto
	AND IndexedItemIndex = 0
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'Gluten', 'Gluten'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'Gluten'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'Gluten';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'Gluten', 'Gluten'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'Gluten'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'Gluten';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'Gluten', 'Gluten'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'Gluten'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'Gluten';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'Gluten', 'Glutine'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'Gluten'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'Gluten';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'Gluten', 'Glúten'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'Gluten'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'Gluten';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'Gluten', 'Gluten'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'Gluten'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'Gluten';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'Gluten', 'Gluten'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'Gluten'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'Gluten';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'Gluten', 'Gluten'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'Gluten'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'Gluten';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'Gluten', 'Gluteeni'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'Gluten'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'Gluten';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'Gluten', 'Gluten'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'Gluten'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'Gluten';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'Crustáceos', 'Crustaceans'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'Crustáceos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'Crustáceos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'Crustáceos', 'Crustacés'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'Crustáceos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'Crustáceos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'Crustáceos', 'Krustentiere'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'Crustáceos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'Crustáceos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'Crustáceos', 'Crostacei'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'Crustáceos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'Crustáceos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'Crustáceos', 'Crustáceos'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'Crustáceos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'Crustáceos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'Crustáceos', 'Kräftdjur'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'Crustáceos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'Crustáceos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'Crustáceos', 'Krepsdyr'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'Crustáceos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'Crustáceos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'Crustáceos', 'Skorupiaki'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'Crustáceos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'Crustáceos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'Crustáceos', 'Äyriäiset'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'Crustáceos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'Crustáceos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'Crustáceos', 'Schaaldieren'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'Crustáceos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'Crustáceos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'Huevos', 'Eggs'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'Huevos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'Huevos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'Huevos', 'OEufs'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'Huevos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'Huevos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'Huevos', 'Eier'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'Huevos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'Huevos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'Huevos', 'Uova'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'Huevos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'Huevos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'Huevos', 'Ovos'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'Huevos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'Huevos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'Huevos', 'Ägg'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'Huevos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'Huevos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'Huevos', 'Egg'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'Huevos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'Huevos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'Huevos', 'Jaja'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'Huevos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'Huevos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'Huevos', 'Munat'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'Huevos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'Huevos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'Huevos', 'Eieren'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'Huevos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'Huevos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'Pescado', 'Fish'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'Pescado'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'Pescado';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'Pescado', 'Poisson'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'Pescado'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'Pescado';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'Pescado', 'Fisch'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'Pescado'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'Pescado';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'Pescado', 'Pesce'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'Pescado'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'Pescado';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'Pescado', 'Peixes'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'Pescado'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'Pescado';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'Pescado', 'Fisk'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'Pescado'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'Pescado';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'Pescado', 'Fisk'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'Pescado'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'Pescado';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'Pescado', 'Ryby'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'Pescado'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'Pescado';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'Pescado', 'Kala'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'Pescado'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'Pescado';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'Pescado', 'Vis'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'Pescado'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'Pescado';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'Cacahuetes', 'Peanuts'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'Cacahuetes'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'Cacahuetes';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'Cacahuetes', 'Cacahuètes'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'Cacahuetes'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'Cacahuetes';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'Cacahuetes', 'Erdnüsse'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'Cacahuetes'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'Cacahuetes';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'Cacahuetes', 'Arachidi'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'Cacahuetes'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'Cacahuetes';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'Cacahuetes', 'Amendoins'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'Cacahuetes'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'Cacahuetes';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'Cacahuetes', 'Jordnöter'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'Cacahuetes'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'Cacahuetes';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'Cacahuetes', 'Peanotter'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'Cacahuetes'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'Cacahuetes';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'Cacahuetes', 'Orzeszki ziemne'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'Cacahuetes'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'Cacahuetes';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'Cacahuetes', 'Maapähkinät'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'Cacahuetes'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'Cacahuetes';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'Cacahuetes', 'Pinda''s'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'Cacahuetes'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'Cacahuetes';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'Soja', 'Soya'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'Soja'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'Soja';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'Soja', 'Soja'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'Soja'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'Soja';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'Soja', 'Soja'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'Soja'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'Soja';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'Soja', 'Soia'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'Soja'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'Soja';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'Soja', 'Soja'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'Soja'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'Soja';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'Soja', 'Sojabörn'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'Soja'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'Soja';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'Soja', 'Soyabonner'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'Soja'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'Soja';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'Soja', 'Soja'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'Soja'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'Soja';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'Soja', 'Soijapavut'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'Soja'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'Soja';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'Soja', 'Sojabonen'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'Soja'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'Soja';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'Lácteos', 'Dairy products'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'Lácteos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'Lácteos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'Lácteos', 'Produits laitiers'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'Lácteos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'Lácteos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'Lácteos', 'Molkereiprodukte'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'Lácteos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'Lácteos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'Lácteos', 'Prodotti Lattiero-Caseari'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'Lácteos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'Lácteos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'Lácteos', 'Productos lácteos'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'Lácteos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'Lácteos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'Lácteos', 'Mejeriprodukter'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'Lácteos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'Lácteos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'Lácteos', 'Meieriprodukter'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'Lácteos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'Lácteos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'Lácteos', 'Produkty mleczne'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'Lácteos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'Lácteos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'Lácteos', 'Maitotuotteet'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'Lácteos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'Lácteos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'Lácteos', 'Zuivelproducten'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'Lácteos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'Lácteos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'Frutos de cáscara', 'Nuts'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'Frutos de cáscara'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'Frutos de cáscara';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'Frutos de cáscara', 'Noix'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'Frutos de cáscara'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'Frutos de cáscara';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'Frutos de cáscara', 'Nüsse'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'Frutos de cáscara'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'Frutos de cáscara';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'Frutos de cáscara', 'Noci'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'Frutos de cáscara'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'Frutos de cáscara';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'Frutos de cáscara', 'Nozes'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'Frutos de cáscara'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'Frutos de cáscara';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'Frutos de cáscara', 'Nötter'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'Frutos de cáscara'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'Frutos de cáscara';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'Frutos de cáscara', 'Notter'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'Frutos de cáscara'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'Frutos de cáscara';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'Frutos de cáscara', 'Orzechy'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'Frutos de cáscara'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'Frutos de cáscara';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'Frutos de cáscara', 'Pähkinät'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'Frutos de cáscara'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'Frutos de cáscara';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'Frutos de cáscara', 'Noten'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'Frutos de cáscara'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'Frutos de cáscara';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'Apio', 'Celery'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'Apio'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'Apio';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'Apio', 'Céleri'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'Apio'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'Apio';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'Apio', 'Sellerie'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'Apio'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'Apio';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'Apio', 'Sedano'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'Apio'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'Apio';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'Apio', 'Aipo'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'Apio'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'Apio';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'Apio', 'Selleri'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'Apio'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'Apio';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'Apio', 'Selleri'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'Apio'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'Apio';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'Apio', 'Seler'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'Apio'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'Apio';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'Apio', 'Selleri'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'Apio'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'Apio';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'Apio', 'Selderij'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'Apio'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'Apio';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'Mostaza', 'Mustard'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'Mostaza'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'Mostaza';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'Mostaza', 'Moutarde'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'Mostaza'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'Mostaza';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'Mostaza', 'Senf'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'Mostaza'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'Mostaza';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'Mostaza', 'Senape'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'Mostaza'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'Mostaza';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'Mostaza', 'Mostarda'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'Mostaza'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'Mostaza';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'Mostaza', 'Senap'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'Mostaza'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'Mostaza';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'Mostaza', 'Sennep'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'Mostaza'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'Mostaza';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'Mostaza', 'Musztarda'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'Mostaza'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'Mostaza';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'Mostaza', 'Siinappi'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'Mostaza'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'Mostaza';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'Mostaza', 'Mosterd'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'Mostaza'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'Mostaza';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'Sésamo', 'Sesamo'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'Sésamo'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'Sésamo';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'Sésamo', 'Sésame'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'Sésamo'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'Sésamo';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'Sésamo', 'Sesam'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'Sésamo'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'Sésamo';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'Sésamo', 'Sesamo'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'Sésamo'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'Sésamo';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'Sésamo', 'Sésamo'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'Sésamo'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'Sésamo';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'Sésamo', 'Sesam'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'Sésamo'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'Sésamo';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'Sésamo', 'Sesam'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'Sésamo'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'Sésamo';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'Sésamo', 'Sezam'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'Sésamo'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'Sésamo';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'Sésamo', 'Seesami'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'Sésamo'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'Sésamo';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'Sésamo', 'Seasam'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'Sésamo'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'Sésamo';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'Sulfitos', 'Sulphites'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'Sulfitos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'Sulfitos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'Sulfitos', 'Sulfites'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'Sulfitos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'Sulfitos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'Sulfitos', 'Sulfite'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'Sulfitos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'Sulfitos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'Sulfitos', 'Solfiti'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'Sulfitos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'Sulfitos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'Sulfitos', 'Sulfitos'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'Sulfitos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'Sulfitos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'Sulfitos', 'Sulfiter'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'Sulfitos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'Sulfitos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'Sulfitos', 'Sulfitter'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'Sulfitos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'Sulfitos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'Sulfitos', 'Siarczyny'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'Sulfitos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'Sulfitos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'Sulfitos', 'Sulfiitit'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'Sulfitos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'Sulfitos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'Sulfitos', 'Sulfieten'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'Sulfitos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'Sulfitos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'Altramuces', 'Lupins'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'Altramuces'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'Altramuces';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'Altramuces', 'Lupins'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'Altramuces'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'Altramuces';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'Altramuces', 'Lupinen'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'Altramuces'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'Altramuces';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'Altramuces', 'Lupini'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'Altramuces'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'Altramuces';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'Altramuces', 'Tremocos'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'Altramuces'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'Altramuces';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'Altramuces', 'Lupiner'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'Altramuces'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'Altramuces';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'Altramuces', 'Lupiner'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'Altramuces'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'Altramuces';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'Altramuces', 'Lubin'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'Altramuces'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'Altramuces';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'Altramuces', 'Lupiinit'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'Altramuces'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'Altramuces';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'Altramuces', 'Lupinen'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'Altramuces'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'Altramuces';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'en', 'Moluscos', 'Molluscs'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'en'
	AND Text = 'Moluscos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'en'
AND Text = 'Moluscos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fr', 'Moluscos', 'Mollusques'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fr'
	AND Text = 'Moluscos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fr'
AND Text = 'Moluscos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'de', 'Moluscos', 'Mollusken'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'de'
	AND Text = 'Moluscos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'de'
AND Text = 'Moluscos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'it', 'Moluscos', 'Molluschi'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'it'
	AND Text = 'Moluscos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'it'
AND Text = 'Moluscos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pt', 'Moluscos', 'Moluscos'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pt'
	AND Text = 'Moluscos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pt'
AND Text = 'Moluscos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'sv', 'Moluscos', 'Mollusker'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'sv'
	AND Text = 'Moluscos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'sv'
AND Text = 'Moluscos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'no', 'Moluscos', 'Blotdyr'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'no'
	AND Text = 'Moluscos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'no'
AND Text = 'Moluscos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'pl', 'Moluscos', 'Mieczaki'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'pl'
	AND Text = 'Moluscos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'pl'
AND Text = 'Moluscos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'fi', 'Moluscos', 'Nilviäiset'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'fi'
	AND Text = 'Moluscos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'fi'
AND Text = 'Moluscos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem
SELECT 'nl', 'Moluscos', 'Weekdieren'
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItem
	WHERE LanguageCode = 'nl'
	AND Text = 'Moluscos'
);

SELECT @idTraduccion = Id
FROM [igtpos].[dbo].DigitalMenuResourceItem
WHERE LanguageCode = 'nl'
AND Text = 'Moluscos';

INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems
SELECT 1, @idTraduccion
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DigitalMenuResourceItems
	WHERE DigitalMenuResourceItemId = @idTraduccion
);

