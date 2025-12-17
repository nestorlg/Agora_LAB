import base64 as b64
import openpyxl as op

import Global as glb

with open("temp.txt", "r") as f:
    lineas = f.readlines()

project = lineas[0][:-1]

glb.datos_import = "projects/" + project + "/entrada.xlsx"
glb.datos_export = "projects/" + project + "/salida.xlsx"
glb.dir_imagenes = "imagenesAgora"

imagen_ticket = "projects/" + project + "/logos/logo-ticket.png"
imagen_a4 = "projects/" + project + "/logos/logo-a4.png"

"""
Paso 1: Configuración de la plantilla de ticket y su imagen
"""

with open(imagen_ticket, "rb") as image_file:
    base64_string = b64.b64encode(image_file.read()).decode('utf-8')

sql_script = open("sql/ticket.sql", "w")

query = (
    "SET NOCOUNT ON;\n\n"

    "UPDATE [igtpos].[dbo].EscPosTemplate\n"
    "SET ConfigurationId = 'B15D7F88-D017-47AD-81FB-FA6DCDDFD69E';\n\n"

    "INSERT INTO [igtpos].[dbo].EscPosTemplateElement\n"
    "SELECT 1, 0, NULL, NULL, NULL, NULL\n"
    "WHERE NOT EXISTS\n"
    "(\n"
    "\tSELECT 1\n"
    "\tFROM [igtpos].[dbo].EscPosTemplateElement\n"
    "\tWHERE TemplateHeaderId = 1\n"
    "\tAND TemplateHeaderIndex = 0\n"
    ");\n"

    "INSERT INTO [igtpos].[dbo].EscPosTemplateElement\n"
    "SELECT 1, 1, NULL, NULL, NULL, NULL\n"
    "WHERE NOT EXISTS\n"
    "(\n"
    "\tSELECT 1\n"
    "\tFROM [igtpos].[dbo].EscPosTemplateElement\n"
    "\tWHERE TemplateHeaderId = 1\n"
    "\tAND TemplateHeaderIndex = 1\n"
    ");\n"

    "INSERT INTO [igtpos].[dbo].EscPosTemplateElement\n"
    "SELECT 1, 2, NULL, NULL, NULL, NULL\n"
    "WHERE NOT EXISTS\n"
    "(\n"
    "\tSELECT 1\n"
    "\tFROM [igtpos].[dbo].EscPosTemplateElement\n"
    "\tWHERE TemplateHeaderId = 1\n"
    "\tAND TemplateHeaderIndex = 2\n"
    ");\n"
)

"""
Paso 2: Configuración de las líneas con los datos fiscales\n\n"
"""

query += (
    "DECLARE @Linea1 NVARCHAR(MAX);\n"
    "DECLARE @Linea2 NVARCHAR(MAX);\n"
    "DECLARE @Linea3 NVARCHAR(MAX);\n"
    "DECLARE @Linea4 NVARCHAR(MAX);\n"
    "DECLARE @Longitud1 INT;\n"
    "DECLARE @Longitud2 INT;\n"
    "DECLARE @Longitud3 INT;\n"
    "DECLARE @Longitud4 INT;\n\n"

    "SELECT	@Linea1 = FiscalName + ' | ' + Cif,\n"
    "        @Linea2 = Street + ' | ' + ZipCode + ' | ' + City,\n"
    "        @Longitud1 = LEN(FiscalName + ' | ' + Cif),\n"
    "        @Longitud2 = LEN(Street + ' | ' + ZipCode + ' | ' + City)\n"
    "FROM	[igtpos].[dbo].Company;\n\n"

    "IF @Longitud1 > 48\n"
    "BEGIN\n"
    "    SET		@Linea3 = @Linea2;\n"
    "    SET		@Longitud3 = @Longitud2;\n\n"

    "    SELECT	@Linea1 = FiscalName,\n"
    "            @Linea2 = Cif,\n"
    "            @Longitud1 = LEN(FiscalName),\n"
    "            @Longitud2 = LEN(Cif)\n"
    "    FROM	[igtpos].[dbo].Company;\n\n"

    "    IF @Longitud3 > 48\n"
    "    BEGIN\n"
    "        SELECT	@Linea3 = Street,\n"
    "                @Linea4 = ZipCode + ' | ' + City,\n"
    "                @Longitud3 = LEN(Street),\n"
    "                @Longitud4 = LEN(ZipCode + ' | ' + City)\n"
    "        FROM	[igtpos].[dbo].Company;\n"
    "    END\n"
    "END\n\n"

    "IF @Longitud2 > 48\n"
    "BEGIN\n"
    "    SELECT	@Linea2 = Street,\n"
    "            @Linea3 = ZipCode + ' | ' + City,\n"
    "            @Longitud2 = LEN(Street),\n"
    "            @Longitud3 = LEN(ZipCode + ' | ' + City)\n"
    "    FROM	[igtpos].[dbo].Company;\n"
    "END\n\n"

    "IF @Longitud1 < 47\n"
    "BEGIN\n"
    "    SET @Linea1 = REPLICATE(' ', (48 - @Longitud1) / 2) + @Linea1;\n"
    "    SET @Longitud1 = LEN(@Linea1);\n"
    "END\n\n"

    "IF @Longitud2 < 47\n"
    "BEGIN\n"
    "    SET @Linea2 = REPLICATE(' ', (48 - @Longitud2) / 2) + @Linea2;\n"
    "    SET @Longitud2 = LEN(@Linea2);\n"
    "END\n\n"

    "IF @Longitud3 > 0 AND @Longitud3 < 47\n"
    "BEGIN\n"
    "    SET @Linea3 = REPLICATE(' ', (48 - @Longitud3) / 2) + @Linea3;\n"
    "    SET @Longitud3 = LEN(@Linea3);\n"
    "END\n\n"

    "IF @Longitud4 > 0 AND @Longitud4 < 47\n"
    "BEGIN\n"
    "    SET @Linea4 = REPLICATE(' ', (48 - @Longitud4) / 2) + @Linea4;\n"
    "    SET @Longitud4 = LEN(@Linea4);\n"
    "END\n\n"
)

"""
Paso 3: inserción de las líneas con los datos fiscales\n\n"
"""

query += (
    "DECLARE @textelement_id INT;\n"
    "SET @textelement_id = (\n"
    "    SELECT Id\n"
    "	 FROM [igtpos].[dbo].EscPosTemplateElement\n"
    "	 WHERE TemplateHeaderId = 1\n"
    "	 AND TemplateHeaderIndex = 1\n"
    ");\n\n"

    "INSERT INTO [igtpos].[dbo].TextElement\n"
    "SELECT @textelement_id, @Linea1, 0, 0, 0, 0\n"
    "WHERE NOT EXISTS\n"
    "(\n"
    "\tSELECT 1\n"
    "\tFROM [igtpos].[dbo].TextElement\n"
    "\tWHERE Id = @textelement_id\n"
    "\tAND [Text] = @Linea1\n"
    ");\n\n"

    "SET @textelement_id = (\n"
    "    SELECT Id\n"
    "	 FROM [igtpos].[dbo].EscPosTemplateElement\n"
    "	 WHERE TemplateHeaderId = 1\n"
    "	 AND TemplateHeaderIndex = 2\n"
    ");\n\n"

    "INSERT INTO [igtpos].[dbo].TextElement\n"
    "SELECT @textelement_id, @Linea2, 0, 0, 0, 0\n"
    "WHERE NOT EXISTS\n"
    "(\n"
    "\tSELECT 1\n"
    "\tFROM [igtpos].[dbo].TextElement\n"
    "\tWHERE Id = @textelement_id\n"
    "\tAND [Text] = @Linea2\n"
    ");\n\n"

    "IF @Longitud3 > 0\n"
    "BEGIN\n"
    "    INSERT INTO [igtpos].[dbo].EscPosTemplateElement\n"
    "    SELECT 1, 3, NULL, NULL, NULL, NULL;\n\n"

    "    SET @textelement_id = (\n"
    "        SELECT Id\n"
    "	     FROM [igtpos].[dbo].EscPosTemplateElement\n"
    "	     WHERE TemplateHeaderId = 1\n"
    "	     AND TemplateHeaderIndex = 3\n"
    "    );\n\n"

    "   INSERT INTO [igtpos].[dbo].TextElement\n"
    "   SELECT @textelement_id, @Linea3, 0, 0, 0, 0\n"
    "   WHERE NOT EXISTS\n"
    "   (\n"
    "   \tSELECT 1\n"
    "   \tFROM [igtpos].[dbo].TextElement\n"
    "   \tWHERE Id = @textelement_id\n"
    "   \tAND [Text] = @Linea3\n"
    "   );\n\n"
    "END\n\n"

    "IF @Longitud4 > 0\n"
    "BEGIN\n"
    "    INSERT INTO [igtpos].[dbo].EscPosTemplateElement\n"
    "    SELECT 1, 4, NULL, NULL, NULL, NULL;\n\n"

    "    SET @textelement_id = (\n"
    "        SELECT Id\n"
    "	     FROM [igtpos].[dbo].EscPosTemplateElement\n"
    "	     WHERE TemplateHeaderId = 1\n"
    "	     AND TemplateHeaderIndex = 4\n"
    "    );\n\n"

    "   INSERT INTO [igtpos].[dbo].TextElement\n"
    "   SELECT @textelement_id, @Linea4, 0, 0, 0, 0\n"
    "   WHERE NOT EXISTS\n"
    "   (\n"
    "   \tSELECT 1\n"
    "   \tFROM [igtpos].[dbo].TextElement\n"
    "   \tWHERE Id = @textelement_id\n"
    "   \tAND [Text] = @Linea4\n"
    "   );\n\n"
    "END\n\n"
)

"""
Paso 4: Inserción de la imagen de ticket\n\n"
"""

query += (
        "SET @textelement_id = (\n"
        "    SELECT Id\n"
        "	 FROM [igtpos].[dbo].EscPosTemplateElement\n"
        "	 WHERE TemplateHeaderId = 1\n"
        "	 AND TemplateHeaderIndex = 0\n"
        ");\n\n"

        "INSERT INTO [igtpos].[dbo].ImageElement\n"
        "SELECT @textelement_id, '%s';\n\n"

        "UPDATE [igtpos].[dbo].PrintTemplate\n"
        "SET Name = 'Ticket'\n"
        "WHERE Id = 1;\n\n"
        % base64_string
)

"""
Paso 5: Configuración de la plantilla de A4 y su imagen
"""

with open(imagen_a4, "rb") as image_file:
    base64_string = b64.b64encode(image_file.read()).decode('utf-8')

info_to_append = (
        "<Image Name=\"PageHeaderImage1\"><Left>15pt</Left><Top>15pt</Top><Width>75pt</Width><Height>75pt</Height>"
        "<Source>Embedded</Source><Value>PageHeaderImage1</Value><Sizing>Fit</Sizing></Image></ReportItems><EmbeddedImages>"
        "<EmbeddedImage Name=\"PageHeaderImage1\"><MIMEType>image/png</MIMEType>"
        "<ImageData>" + base64_string + "</ImageData></EmbeddedImage>"
)

"""
Paso 6: Leer el contenido XML predefinido para la plantilla A4
"""

with open("SQLSentencesCreator/data/contenido.txt", "r") as contenido:
    linea = contenido.readlines()[0]

"""
Paso 7: Leer los datos fiscales del archivo Excel de Entrada
"""

entrada = op.load_workbook(glb.datos_import)
hoja_datos = entrada["Datos adicionales"]

"""
Paso 8: Adaptar la plantilla XML de A4 con los datos fiscales
"""

linea = linea.replace("$FISCALNAME", hoja_datos["B1"].value)
linea = linea.replace("$CIF", hoja_datos["B3"].value)
linea = linea.replace("$ADDRESS", hoja_datos["B4"].value if hoja_datos["B4"].value is not None else "")
linea = linea.replace(
    "$ZIPCODE", hoja_datos["B6"].value if hoja_datos["B6"].value is not None else "" + " " +
    hoja_datos["B5"].value if hoja_datos["B5"].value is not None else "")

linea = linea.replace(linea[linea.find("<Height>") + len("<Height>"):linea.find("</Height>")], "99.75pt")

tops_array = ["55pt", "75pt", "15pt", "35pt"]
current_pos = 0

for top in tops_array:
    linea = linea.replace(
        linea[linea.find("<Left>", current_pos) + len("<Left>"):linea.find("</Left>", current_pos)],
        "350pt", 1)
    linea = linea.replace(
        linea[linea.find("<Top>", current_pos) + len("<Top>"):linea.find("</Top>", current_pos)],
        top, 1)
    current_pos = linea.find("</Left>", current_pos) + 5

linea = linea.replace("</ReportItems>", info_to_append)
linea = linea.replace("</PageHeader><EmbeddedImages />", "</EmbeddedImages></PageHeader>")

query += (
        "UPDATE	[igtpos].[dbo].RdlTemplate\n"
        "SET HeaderContent = '%s';\n\n"

        "UPDATE [igtpos].[dbo].PrintTemplate\n"
        "SET [Name] = 'A4'\n"
        "WHERE Id = 2;\n\n"
        % linea
)

"""
Paso 9: Configuración de la plantilla de comandas
"""

query += (
    "UPDATE [igtpos].[dbo].KitchenPrintTemplate\n"
    "SET Width = 1,\n"
    "\tFontSize = 1,\n"
    "\tTopMargin = 3,\n"
    "\tBottomMargin = 3;"
)

sql_script.write(query)
sql_script.close()
