SET NOCOUNT ON;

INSERT INTO [igtpos].[dbo].SaleCenter
SELECT NULL, 'Barra', 0, 1, 2, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, 'Barra', '#BACDE2', 0x0, 1, 30, 1, 1, 1, 1, 1
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleCenter
	WHERE [Name] = 'Barra'
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 1, 'B1', 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 1
	AND [Name] = 'B1'
	AND SaleLocationIndex = 0
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 1, 'B2', 1
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 1
	AND [Name] = 'B2'
	AND SaleLocationIndex = 1
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 1, 'B3', 2
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 1
	AND [Name] = 'B3'
	AND SaleLocationIndex = 2
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 1, 'B4', 3
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 1
	AND [Name] = 'B4'
	AND SaleLocationIndex = 3
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 1, 'B5', 4
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 1
	AND [Name] = 'B5'
	AND SaleLocationIndex = 4
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 1, 'B6', 5
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 1
	AND [Name] = 'B6'
	AND SaleLocationIndex = 5
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 1, 'B7', 6
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 1
	AND [Name] = 'B7'
	AND SaleLocationIndex = 6
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 1, 'B8', 7
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 1
	AND [Name] = 'B8'
	AND SaleLocationIndex = 7
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 1, 'B9', 8
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 1
	AND [Name] = 'B9'
	AND SaleLocationIndex = 8
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 1, 'B10', 9
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 1
	AND [Name] = 'B10'
	AND SaleLocationIndex = 9
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 1, 'B11', 10
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 1
	AND [Name] = 'B11'
	AND SaleLocationIndex = 10
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 1, 'B12', 11
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 1
	AND [Name] = 'B12'
	AND SaleLocationIndex = 11
);

INSERT INTO [igtpos].[dbo].SaleCenter
SELECT NULL, 'Salón', 0, 1, 2, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, 'Salón', '#BACDE2', 0x0, 1, 30, 1, 1, 1, 1, 1
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleCenter
	WHERE [Name] = 'Salón'
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 2, 'S1', 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 2
	AND [Name] = 'S1'
	AND SaleLocationIndex = 0
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 2, 'S2', 1
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 2
	AND [Name] = 'S2'
	AND SaleLocationIndex = 1
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 2, 'S3', 2
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 2
	AND [Name] = 'S3'
	AND SaleLocationIndex = 2
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 2, 'S4', 3
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 2
	AND [Name] = 'S4'
	AND SaleLocationIndex = 3
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 2, 'S5', 4
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 2
	AND [Name] = 'S5'
	AND SaleLocationIndex = 4
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 2, 'S6', 5
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 2
	AND [Name] = 'S6'
	AND SaleLocationIndex = 5
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 2, 'S7', 6
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 2
	AND [Name] = 'S7'
	AND SaleLocationIndex = 6
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 2, 'S8', 7
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 2
	AND [Name] = 'S8'
	AND SaleLocationIndex = 7
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 2, 'S9', 8
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 2
	AND [Name] = 'S9'
	AND SaleLocationIndex = 8
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 2, 'S10', 9
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 2
	AND [Name] = 'S10'
	AND SaleLocationIndex = 9
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 2, 'S11', 10
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 2
	AND [Name] = 'S11'
	AND SaleLocationIndex = 10
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 2, 'S12', 11
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 2
	AND [Name] = 'S12'
	AND SaleLocationIndex = 11
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 2, 'S13', 12
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 2
	AND [Name] = 'S13'
	AND SaleLocationIndex = 12
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 2, 'S14', 13
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 2
	AND [Name] = 'S14'
	AND SaleLocationIndex = 13
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 2, 'S15', 14
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 2
	AND [Name] = 'S15'
	AND SaleLocationIndex = 14
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 2, 'S16', 15
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 2
	AND [Name] = 'S16'
	AND SaleLocationIndex = 15
);

INSERT INTO [igtpos].[dbo].SaleCenter
SELECT NULL, 'Terraza', 0, 1, 2, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, 'Terraza', '#BACDE2', 0x0, 1, 30, 1, 1, 1, 1, 1
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleCenter
	WHERE [Name] = 'Terraza'
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 3, 'T1', 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 3
	AND [Name] = 'T1'
	AND SaleLocationIndex = 0
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 3, 'T2', 1
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 3
	AND [Name] = 'T2'
	AND SaleLocationIndex = 1
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 3, 'T3', 2
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 3
	AND [Name] = 'T3'
	AND SaleLocationIndex = 2
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 3, 'T4', 3
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 3
	AND [Name] = 'T4'
	AND SaleLocationIndex = 3
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 3, 'T5', 4
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 3
	AND [Name] = 'T5'
	AND SaleLocationIndex = 4
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 3, 'T6', 5
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 3
	AND [Name] = 'T6'
	AND SaleLocationIndex = 5
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 3, 'T7', 6
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 3
	AND [Name] = 'T7'
	AND SaleLocationIndex = 6
);

INSERT INTO [igtpos].[dbo].SaleLocation
SELECT 3, 'T8', 7
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].SaleLocation
	WHERE SaleCenterId = 3
	AND [Name] = 'T8'
	AND SaleLocationIndex = 7
);

SET NOCOUNT ON;

INSERT INTO [igtpos].[dbo].Map
SELECT 'TPV','<map>
	<size width="950" height="650" resizeMode="shrink"/>
	<background>LargeTile10</background>
	<tables>
		<table x="25" y="25" saleCenterId="1" saleLocationName="B1" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="75" y="25" saleCenterId="1" saleLocationName="B2" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="125" y="25" saleCenterId="1" saleLocationName="B3" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="175" y="25" saleCenterId="1" saleLocationName="B4" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="225" y="25" saleCenterId="1" saleLocationName="B5" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="275" y="25" saleCenterId="1" saleLocationName="B6" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="325" y="25" saleCenterId="1" saleLocationName="B7" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="375" y="25" saleCenterId="1" saleLocationName="B8" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="425" y="25" saleCenterId="1" saleLocationName="B9" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="475" y="25" saleCenterId="1" saleLocationName="B10" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="525" y="25" saleCenterId="1" saleLocationName="B11" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="575" y="25" saleCenterId="1" saleLocationName="B12" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="625" y="25" saleCenterId="2" saleLocationName="S1" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="700" y="25" saleCenterId="2" saleLocationName="S2" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="775" y="25" saleCenterId="2" saleLocationName="S3" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="850" y="25" saleCenterId="2" saleLocationName="S4" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="25" y="125" saleCenterId="2" saleLocationName="S5" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="100" y="125" saleCenterId="2" saleLocationName="S6" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="175" y="125" saleCenterId="2" saleLocationName="S7" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="250" y="125" saleCenterId="2" saleLocationName="S8" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="325" y="125" saleCenterId="2" saleLocationName="S9" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="400" y="125" saleCenterId="2" saleLocationName="S10" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="475" y="125" saleCenterId="2" saleLocationName="S11" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="550" y="125" saleCenterId="2" saleLocationName="S12" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="625" y="125" saleCenterId="2" saleLocationName="S13" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="700" y="125" saleCenterId="2" saleLocationName="S14" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="775" y="125" saleCenterId="2" saleLocationName="S15" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="850" y="125" saleCenterId="2" saleLocationName="S16" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="25" y="225" saleCenterId="3" saleLocationName="T1" image="_Table10" rotation="0" deltaX="0" deltaY="0"/>
		<table x="100" y="225" saleCenterId="3" saleLocationName="T2" image="_Table10" rotation="0" deltaX="0" deltaY="0"/>
		<table x="175" y="225" saleCenterId="3" saleLocationName="T3" image="_Table10" rotation="0" deltaX="0" deltaY="0"/>
		<table x="250" y="225" saleCenterId="3" saleLocationName="T4" image="_Table10" rotation="0" deltaX="0" deltaY="0"/>
		<table x="325" y="225" saleCenterId="3" saleLocationName="T5" image="_Table10" rotation="0" deltaX="0" deltaY="0"/>
		<table x="400" y="225" saleCenterId="3" saleLocationName="T6" image="_Table10" rotation="0" deltaX="0" deltaY="0"/>
		<table x="475" y="225" saleCenterId="3" saleLocationName="T7" image="_Table10" rotation="0" deltaX="0" deltaY="0"/>
		<table x="550" y="225" saleCenterId="3" saleLocationName="T8" image="_Table10" rotation="0" deltaX="0" deltaY="0"/>
	</tables>
	<furnitures/>
</map>', 0, 0
WHERE (SELECT COUNT(*) FROM [igtpos].[dbo].Map WHERE [Name] = 'TPV') = 0;

IF NOT EXISTS(SELECT * FROM [igtpos].[dbo].MapPosGroups WHERE MapId=1)
BEGIN
	INSERT INTO [igtpos].[dbo].MapPosGroups
	SELECT 1, 1;
END
INSERT INTO [igtpos].[dbo].Map
SELECT 'CMD','<map>
	<size width="680" height="1040" resizeMode="shrink"/>
	<background>LargeTile10</background>
	<tables>
		<table x="25" y="25" saleCenterId="1" saleLocationName="B1" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="75" y="25" saleCenterId="1" saleLocationName="B2" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="125" y="25" saleCenterId="1" saleLocationName="B3" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="175" y="25" saleCenterId="1" saleLocationName="B4" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="225" y="25" saleCenterId="1" saleLocationName="B5" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="275" y="25" saleCenterId="1" saleLocationName="B6" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="325" y="25" saleCenterId="1" saleLocationName="B7" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="375" y="25" saleCenterId="1" saleLocationName="B8" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="425" y="25" saleCenterId="1" saleLocationName="B9" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="475" y="25" saleCenterId="1" saleLocationName="B10" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="525" y="25" saleCenterId="1" saleLocationName="B11" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="575" y="25" saleCenterId="1" saleLocationName="B12" image="_Bar00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="25" y="125" saleCenterId="2" saleLocationName="S1" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="100" y="125" saleCenterId="2" saleLocationName="S2" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="175" y="125" saleCenterId="2" saleLocationName="S3" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="250" y="125" saleCenterId="2" saleLocationName="S4" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="325" y="125" saleCenterId="2" saleLocationName="S5" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="400" y="125" saleCenterId="2" saleLocationName="S6" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="475" y="125" saleCenterId="2" saleLocationName="S7" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="550" y="125" saleCenterId="2" saleLocationName="S8" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="25" y="225" saleCenterId="2" saleLocationName="S9" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="100" y="225" saleCenterId="2" saleLocationName="S10" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="175" y="225" saleCenterId="2" saleLocationName="S11" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="250" y="225" saleCenterId="2" saleLocationName="S12" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="325" y="225" saleCenterId="2" saleLocationName="S13" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="400" y="225" saleCenterId="2" saleLocationName="S14" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="475" y="225" saleCenterId="2" saleLocationName="S15" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="550" y="225" saleCenterId="2" saleLocationName="S16" image="_Table00" rotation="0" deltaX="0" deltaY="0"/>
		<table x="25" y="325" saleCenterId="3" saleLocationName="T1" image="_Table10" rotation="0" deltaX="0" deltaY="0"/>
		<table x="100" y="325" saleCenterId="3" saleLocationName="T2" image="_Table10" rotation="0" deltaX="0" deltaY="0"/>
		<table x="175" y="325" saleCenterId="3" saleLocationName="T3" image="_Table10" rotation="0" deltaX="0" deltaY="0"/>
		<table x="250" y="325" saleCenterId="3" saleLocationName="T4" image="_Table10" rotation="0" deltaX="0" deltaY="0"/>
		<table x="325" y="325" saleCenterId="3" saleLocationName="T5" image="_Table10" rotation="0" deltaX="0" deltaY="0"/>
		<table x="400" y="325" saleCenterId="3" saleLocationName="T6" image="_Table10" rotation="0" deltaX="0" deltaY="0"/>
		<table x="475" y="325" saleCenterId="3" saleLocationName="T7" image="_Table10" rotation="0" deltaX="0" deltaY="0"/>
		<table x="550" y="325" saleCenterId="3" saleLocationName="T8" image="_Table10" rotation="0" deltaX="0" deltaY="0"/>
	</tables>
	<furnitures/>
</map>', 0, 0
WHERE (SELECT COUNT(*) FROM [igtpos].[dbo].Map WHERE [Name] = 'CMD') = 0;

IF NOT EXISTS (SELECT * FROM [igtpos].[dbo].MapPosGroups WHERE MapId = 2) AND EXISTS (SELECT * FROM [igtpos].[dbo].PosGroup WHERE [Name]='Comanderas')
BEGIN
	INSERT INTO [igtpos].[dbo].MapPosGroups
	SELECT 2, 2;
END
