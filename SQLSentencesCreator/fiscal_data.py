import openpyxl as op

import Global as glb

"""
Paso 1: Leer la hoja de Datos adicionales del Excel de Salida y obtener los datos fiscales del local, que son las filas
desde la 1 hasta la 7
"""

script_sql = open("sql/fiscal-data.sql", "w")

with open("temp.txt", "r") as f:
    lineas = f.readlines()

project = lineas[0][:-1]

glb.datos_import = "projects/" + project + "/entrada.xlsx"
glb.datos_export = "projects/" + project + "/salida.xlsx"
glb.dir_imagenes = "imagenesAgora"

entrada = op.load_workbook(glb.datos_import)
hoja_datos = entrada['Datos adicionales']

fiscal_data = [
    hoja_datos["B1"].value,
    hoja_datos["B2"].value if hoja_datos["B2"].value is not None else "",
    hoja_datos["B3"].value,
    hoja_datos["B4"].value if hoja_datos["B4"].value is not None else "",
    hoja_datos["B5"].value if hoja_datos["B5"].value is not None else "",
    hoja_datos["B6"].value if hoja_datos["B6"].value is not None else "",
    hoja_datos["B7"].value if hoja_datos["B7"].value is not None else ""
]

"""
Paso 2: Construir las sentencias SQl que escriben los datos fiscales en la tabla [igtpos].[dbo].Company
"""

query = (
    "SET NOCOUNT ON;\n\n"
    ""
    "UPDATE [igtpos].[dbo].Company\n"
    "SET BusinessName = '%s',\n"
    "\tFiscalName = '%s',\n"
    "\tCif = '%s',\n"
    "\tStreet = '%s',\n"
    "\tCity = '%s',\n"
    "\tRegion = '%s',\n"
    "\tZipCode = '%s'\n"
    "WHERE Id = 1;"
    % (fiscal_data[1], fiscal_data[0], fiscal_data[2], fiscal_data[3], fiscal_data[6], fiscal_data[5], fiscal_data[4])
)

script_sql.write(query)
script_sql.close()
