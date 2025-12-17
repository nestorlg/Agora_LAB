SET NOCOUNT ON;

UPDATE [igtpos].[dbo].Company
SET BusinessName = 'Restaurante de prueba',
	FiscalName = 'Prueba S.L.',
	Cif = 'B00000000',
	Street = 'Paseo de San José, Nº 123',
	City = 'Las Palmas',
	Region = 'Las Palmas de Gran Canaria',
	ZipCode = '35000'
WHERE Id = 1;