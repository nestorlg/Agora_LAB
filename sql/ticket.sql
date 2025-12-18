SET NOCOUNT ON;

UPDATE [igtpos].[dbo].EscPosTemplate
SET ConfigurationId = 'B15D7F88-D017-47AD-81FB-FA6DCDDFD69E';

INSERT INTO [igtpos].[dbo].EscPosTemplateElement
SELECT 1, 0, NULL, NULL, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].EscPosTemplateElement
	WHERE TemplateHeaderId = 1
	AND TemplateHeaderIndex = 0
);
INSERT INTO [igtpos].[dbo].EscPosTemplateElement
SELECT 1, 1, NULL, NULL, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].EscPosTemplateElement
	WHERE TemplateHeaderId = 1
	AND TemplateHeaderIndex = 1
);
INSERT INTO [igtpos].[dbo].EscPosTemplateElement
SELECT 1, 2, NULL, NULL, NULL, NULL
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].EscPosTemplateElement
	WHERE TemplateHeaderId = 1
	AND TemplateHeaderIndex = 2
);
DECLARE @Linea1 NVARCHAR(MAX);
DECLARE @Linea2 NVARCHAR(MAX);
DECLARE @Linea3 NVARCHAR(MAX);
DECLARE @Linea4 NVARCHAR(MAX);
DECLARE @Longitud1 INT;
DECLARE @Longitud2 INT;
DECLARE @Longitud3 INT;
DECLARE @Longitud4 INT;

SELECT	@Linea1 = FiscalName + ' | ' + Cif,
        @Linea2 = Street + ' | ' + ZipCode + ' | ' + City,
        @Longitud1 = LEN(FiscalName + ' | ' + Cif),
        @Longitud2 = LEN(Street + ' | ' + ZipCode + ' | ' + City)
FROM	[igtpos].[dbo].Company;

IF @Longitud1 > 48
BEGIN
    SET		@Linea3 = @Linea2;
    SET		@Longitud3 = @Longitud2;

    SELECT	@Linea1 = FiscalName,
            @Linea2 = Cif,
            @Longitud1 = LEN(FiscalName),
            @Longitud2 = LEN(Cif)
    FROM	[igtpos].[dbo].Company;

    IF @Longitud3 > 48
    BEGIN
        SELECT	@Linea3 = Street,
                @Linea4 = ZipCode + ' | ' + City,
                @Longitud3 = LEN(Street),
                @Longitud4 = LEN(ZipCode + ' | ' + City)
        FROM	[igtpos].[dbo].Company;
    END
END

IF @Longitud2 > 48
BEGIN
    SELECT	@Linea2 = Street,
            @Linea3 = ZipCode + ' | ' + City,
            @Longitud2 = LEN(Street),
            @Longitud3 = LEN(ZipCode + ' | ' + City)
    FROM	[igtpos].[dbo].Company;
END

IF @Longitud1 < 47
BEGIN
    SET @Linea1 = REPLICATE(' ', (48 - @Longitud1) / 2) + @Linea1;
    SET @Longitud1 = LEN(@Linea1);
END

IF @Longitud2 < 47
BEGIN
    SET @Linea2 = REPLICATE(' ', (48 - @Longitud2) / 2) + @Linea2;
    SET @Longitud2 = LEN(@Linea2);
END

IF @Longitud3 > 0 AND @Longitud3 < 47
BEGIN
    SET @Linea3 = REPLICATE(' ', (48 - @Longitud3) / 2) + @Linea3;
    SET @Longitud3 = LEN(@Linea3);
END

IF @Longitud4 > 0 AND @Longitud4 < 47
BEGIN
    SET @Linea4 = REPLICATE(' ', (48 - @Longitud4) / 2) + @Linea4;
    SET @Longitud4 = LEN(@Linea4);
END

DECLARE @textelement_id INT;
SET @textelement_id = (
    SELECT Id
	 FROM [igtpos].[dbo].EscPosTemplateElement
	 WHERE TemplateHeaderId = 1
	 AND TemplateHeaderIndex = 1
);

INSERT INTO [igtpos].[dbo].TextElement
SELECT @textelement_id, @Linea1, 0, 0, 0, 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].TextElement
	WHERE Id = @textelement_id
	AND [Text] = @Linea1
);

SET @textelement_id = (
    SELECT Id
	 FROM [igtpos].[dbo].EscPosTemplateElement
	 WHERE TemplateHeaderId = 1
	 AND TemplateHeaderIndex = 2
);

INSERT INTO [igtpos].[dbo].TextElement
SELECT @textelement_id, @Linea2, 0, 0, 0, 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].TextElement
	WHERE Id = @textelement_id
	AND [Text] = @Linea2
);

IF @Longitud3 > 0
BEGIN
    INSERT INTO [igtpos].[dbo].EscPosTemplateElement
    SELECT 1, 3, NULL, NULL, NULL, NULL;

    SET @textelement_id = (
        SELECT Id
	     FROM [igtpos].[dbo].EscPosTemplateElement
	     WHERE TemplateHeaderId = 1
	     AND TemplateHeaderIndex = 3
    );

   INSERT INTO [igtpos].[dbo].TextElement
   SELECT @textelement_id, @Linea3, 0, 0, 0, 0
   WHERE NOT EXISTS
   (
   	SELECT 1
   	FROM [igtpos].[dbo].TextElement
   	WHERE Id = @textelement_id
   	AND [Text] = @Linea3
   );

END

IF @Longitud4 > 0
BEGIN
    INSERT INTO [igtpos].[dbo].EscPosTemplateElement
    SELECT 1, 4, NULL, NULL, NULL, NULL;

    SET @textelement_id = (
        SELECT Id
	     FROM [igtpos].[dbo].EscPosTemplateElement
	     WHERE TemplateHeaderId = 1
	     AND TemplateHeaderIndex = 4
    );

   INSERT INTO [igtpos].[dbo].TextElement
   SELECT @textelement_id, @Linea4, 0, 0, 0, 0
   WHERE NOT EXISTS
   (
   	SELECT 1
   	FROM [igtpos].[dbo].TextElement
   	WHERE Id = @textelement_id
   	AND [Text] = @Linea4
   );

END

SET @textelement_id = (
    SELECT Id
	 FROM [igtpos].[dbo].EscPosTemplateElement
	 WHERE TemplateHeaderId = 1
	 AND TemplateHeaderIndex = 0
);

INSERT INTO [igtpos].[dbo].ImageElement
SELECT @textelement_id, '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';

UPDATE [igtpos].[dbo].PrintTemplate
SET Name = 'Ticket'
WHERE Id = 1;

UPDATE	[igtpos].[dbo].RdlTemplate
SET HeaderContent = '<?xml version="1.0" encoding="utf-16"?><Document xmlns="http://schemas.microsoft.com/sqlserver/reporting/2016/01/reportdefinition"><PageHeader><PrintOnFirstPage>true</PrintOnFirstPage><PrintOnLastPage>true</PrintOnLastPage><Height>99.75pt</Height><ReportItems><Textbox Name="PageHeaderTextBox1"><Top>55pt</Top><Left>350pt</Left><Width>136.5pt</Width><Height>12pt</Height><Paragraphs><Paragraph><TextRuns><TextRun><Value>Prueba S.L.</Value><Style><Color>Black</Color><FontFamily>Verdana</FontFamily><FontSize>8pt</FontSize><VerticalAlign>Top</VerticalAlign><TextAlign>Left</TextAlign></Style></TextRun></TextRuns></Paragraph></Paragraphs></Textbox><Textbox Name="PageHeaderTextBox2"><Top>75pt</Top><Left>350pt</Left><Width>136.5pt</Width><Height>12pt</Height><Paragraphs><Paragraph><TextRuns><TextRun><Value>B00000000</Value><Style><Color>Black</Color><FontFamily>Verdana</FontFamily><FontSize>8pt</FontSize><VerticalAlign>Top</VerticalAlign><TextAlign>Left</TextAlign></Style></TextRun></TextRuns></Paragraph></Paragraphs></Textbox><Textbox Name="PageHeaderTextBox3"><Top>15pt</Top><Left>350pt</Left><Width>160.5pt</Width><Height>12pt</Height><Paragraphs><Paragraph><TextRuns><TextRun><Value>Paseo de San José, Nº 123</Value><Style><Color>Black</Color><FontFamily>Verdana</FontFamily><FontSize>8.25pt</FontSize><FontStyle>Italic</FontStyle><VerticalAlign>Top</VerticalAlign><TextAlign>Right</TextAlign></Style></TextRun></TextRuns></Paragraph></Paragraphs></Textbox><Textbox Name="PageHeaderTextBox4"><Top>35pt</Top><Left>350pt</Left><Width>160.5pt</Width><Height>12pt</Height><Paragraphs><Paragraph><TextRuns><TextRun><Value>Las Palmas de Gran Canaria</Value><Style><Color>Black</Color><FontFamily>Verdana</FontFamily><FontSize>8.25pt</FontSize><FontStyle>Italic</FontStyle><VerticalAlign>Top</VerticalAlign><TextAlign>Right</TextAlign></Style></TextRun></TextRuns></Paragraph></Paragraphs></Textbox><Textbox Name="PageHeaderTextBox5"><Top>2.25pt</Top><Left>220.5pt</Left><Width>97.5pt</Width><Height>12pt</Height><Paragraphs><Paragraph><TextRuns><TextRun><Value></Value><Style><Color>Black</Color><FontFamily>Verdana</FontFamily><FontSize>8pt</FontSize><VerticalAlign>Top</VerticalAlign><TextAlign>Center</TextAlign></Style></TextRun></TextRuns></Paragraph></Paragraphs></Textbox><Textbox Name="PageHeaderTextBox6"><Top>18pt</Top><Left>220.5pt</Left><Width>97.5pt</Width><Height>12pt</Height><Paragraphs><Paragraph><TextRuns><TextRun><Value></Value><Style><Color>Black</Color><FontFamily>Verdana</FontFamily><FontSize>8pt</FontSize><VerticalAlign>Top</VerticalAlign><TextAlign>Center</TextAlign></Style></TextRun></TextRuns></Paragraph></Paragraphs></Textbox><Image Name="PageHeaderImage1"><Left>15pt</Left><Top>15pt</Top><Width>75pt</Width><Height>75pt</Height><Source>Embedded</Source><Value>PageHeaderImage1</Value><Sizing>Fit</Sizing></Image></ReportItems><EmbeddedImages><EmbeddedImage Name="PageHeaderImage1"><MIMEType>image/png</MIMEType><ImageData>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</ImageData></EmbeddedImage></EmbeddedImages></PageHeader></Document>';

UPDATE [igtpos].[dbo].PrintTemplate
SET [Name] = 'A4'
WHERE Id = 2;

UPDATE [igtpos].[dbo].KitchenPrintTemplate
SET Width = 1,
	FontSize = 1,
	TopMargin = 3,
	BottomMargin = 3;