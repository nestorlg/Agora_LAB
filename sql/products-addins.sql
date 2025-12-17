SELECT	sf1.Name AS ProductoBase, sf2.Name AS ProductoAñadido, ar.Name AS NombreGrupo
FROM	[igtpos].[dbo].AddinRole ar
JOIN	[igtpos].[dbo].SaleFormat sf1
ON		ar.SaleFormatId = sf1.Id
JOIN	[igtpos].[dbo].AddinRoleAddin ara
ON		ar.Id = ara.AddinRoleId
JOIN	[igtpos].[dbo].SaleFormat sf2
ON		ara.AddinId = sf2.Id;