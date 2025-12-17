SELECT	sf.DocumentText AS FormatName,
		fm.StyleText AS Family,
		CONCAT(CAST(CAST(vt.VatRate * 100 AS INT) AS VARCHAR), ' %') AS VatName,
		pl.Name AS PriceList,
		sfp.Main AS MainPrice,
		sfp.Addin AS AddinPrice
FROM	[igtpos].[dbo].SaleFormat sf
JOIN	[igtpos].[dbo].Product pr
ON		sf.ProductId = pr.Id
JOIN	[igtpos].[dbo].Family fm
ON		pr.FamilyId = fm.Id
JOIN	[igtpos].[dbo].Vat vt
ON		pr.VatId = vt.Id
JOIN	[igtpos].[dbo].SaleFormatPrice sfp
ON		sf.Id = sfp.SaleFormatId
JOIN	[igtpos].[dbo].PriceList pl
ON		sfp.PriceListId = pl.Id
ORDER BY sf.Id, sfp.PriceListId;