SELECT	us.Id,
		us.Name AS Nombre,
		up.Name AS Perfil,
		us.Password AS Clave_TPV,
		us.SmartphonePassword AS Clave_CMD,
		us.WebAdminPAssword AS Clave_AdminWeb
FROM	[igtpos].[dbo].[User] us
JOIN	[igtpos].[dbo].UserProfile up
ON		us.ProfileId = up.Id;