import openpyxl as op

import Global as glb


"""
Paso 1: Leer la hoja de Productos del Excel de Salida y obtener los distintos nombres de categorías
"""

script_sql = open("sql/preparation-types-and-orders.sql", "w")

tipos_de_preparacion_distintos = []
ordenes_de_preparacion_distintos = []

with open("temp.txt", "r") as f:
    lineas = f.readlines()

project = lineas[0][:-1]
log_file_name = lineas[1]

glb.datos_import = "projects/" + project + "/entrada.xlsx"
glb.datos_export = "projects/" + project + "/salida.xlsx"
glb.dir_imagenes = "imagenesAgora"
glb.log_file = open("projects/" + project + "/log_files/%s" % log_file_name + ".log", "a")

glb.ruta_cache = "outputExcelCreator/data/cache.xlsx"

salida = op.load_workbook(glb.datos_export)

hoja_productos_salida = salida["Productos"]

i = 2
while hoja_productos_salida["A" + str(i)].value is not None:
    if (
            hoja_productos_salida["V" + str(i)].value is not None and
            hoja_productos_salida["V" + str(i)].value not in tipos_de_preparacion_distintos):
        tipos_de_preparacion_distintos.append(hoja_productos_salida["V" + str(i)].value)
    if (
            hoja_productos_salida["W" + str(i)].value is not None and
            hoja_productos_salida["W" + str(i)].value not in ordenes_de_preparacion_distintos):
        ordenes_de_preparacion_distintos.append(hoja_productos_salida["W" + str(i)].value)

    i += 1

"""
Paso 2: Obtener, por cada categoría, su texto abreviado e imagen
"""

query = (
    "SET NOCOUNT ON;\n\n"
    
    "DECLARE @idTipoPreparacion INT;\n"
    "DECLARE @idOrdenPreparacion INT;\n\n"
)

for tipo_de_preparacion in tipos_de_preparacion_distintos:
    query += (
        "INSERT INTO [igtpos].[dbo].PreparationType\n"
        "SELECT NULL, '%s'\n"
        "WHERE NOT EXISTS\n"
        "(\n"
        "\tSELECT 1\n"
        "\tFROM [igtpos].[dbo].PreparationType\n"
        "\tWHERE [Name] = '%s'\n"
        ");\n\n"
        % (tipo_de_preparacion, tipo_de_preparacion)
    )

    glb.log_file.write("INSERTADO EL TIPO DE PREPARACIÓN %s EN LA BASE DE DATOS\n" % tipo_de_preparacion)

for orden_de_preparacion in ordenes_de_preparacion_distintos:
    query += (
        "INSERT INTO [igtpos].[dbo].PreparationOrder\n"
        "SELECT NULL, '%s', 0, 1, 0, 0\n"
        "WHERE NOT EXISTS\n"
        "(\n"
        "\tSELECT 1\n"
        "\tFROM [igtpos].[dbo].PreparationOrder\n"
        "\tWHERE [Name] = '%s'\n"
        ");\n\n"
        % (orden_de_preparacion, orden_de_preparacion)
    )

    glb.log_file.write("INSERTADO EL ORDEN DE PREPARACIÓN %s EN LA BASE DE DATOS\n" % orden_de_preparacion)

script_sql.write(query)
script_sql.close()
