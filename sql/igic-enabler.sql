SET NOCOUNT ON;

UPDATE	[igtpos].[dbo].Vat
SET		[Name] = 'General (7%)',
		VatRate = 0.07,
		SurchargeRate = 0.0,
		[Enabled] = 1
WHERE UPPER([Name]) LIKE '%GENERAL%';

UPDATE	[igtpos].[dbo].Vat
SET		[Enabled] = 0
WHERE UPPER([Name]) NOT LIKE '%GENERAL%';