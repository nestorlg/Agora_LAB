import openpyxl as op

import Global as glb
import auxiliar as aux


"""
Paso 1: Leer la hoja de Centros de Venta del Excel de Salida
"""

script_sql = open("sql/map.sql", "w")

centros_de_venta = []

with open("temp.txt", "r") as f:
    lineas = f.readlines()

project = lineas[0][:-1]

glb.datos_import = "projects/" + project + "/entrada.xlsx"
glb.datos_export = "projects/" + project + "/salida.xlsx"
glb.dir_imagenes = "imagenesAgora"

glb.ruta_cache = "outputExcelCreator/data/cache.xlsx"

salida = op.load_workbook(glb.datos_export)

hoja_centros_de_venta = salida["Centros de Venta"]

query = (
    "SET NOCOUNT ON;\n\n"
)

i = 2
while hoja_centros_de_venta["A" + str(i)].value is not None:
    """
    Paso 2: Por cada centro de venta, obtener su nombre, texto de botón, color y lista de ubicaciones
    """
    nombre = hoja_centros_de_venta["A" + str(i)].value
    texto_boton = hoja_centros_de_venta["F" + str(i)].value
    color = hoja_centros_de_venta["G" + str(i)].value
    ubicaciones = hoja_centros_de_venta["I" + str(i)].value.split(", ")

    centro_de_venta = [
        nombre,
        texto_boton,
        color,
        ubicaciones
    ]

    centros_de_venta.append(centro_de_venta)

    i += 1

for i, centro_de_venta in enumerate(centros_de_venta):
    """
    Paso 3: Crear los centros de venta en la tabla [igtpos].[dbo].SaleCenter
    """
    nombre = centro_de_venta[0]
    texto_boton = centro_de_venta[1]
    color = centro_de_venta[2]
    ubicaciones = centro_de_venta[3]

    query += (
        "INSERT INTO [igtpos].[dbo].SaleCenter\n"
        "SELECT NULL, '%s', 0, 1, 2, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, '%s', '%s', 0x0, 1, 30, 1, 1, 1, 1, 1\n"
        "WHERE NOT EXISTS\n"
        "(\n"
        "\tSELECT 1\n"
        "\tFROM [igtpos].[dbo].SaleCenter\n"
        "\tWHERE [Name] = '%s'\n"
        ");\n\n"
        % (nombre, texto_boton, color, nombre)
    )

    """
    Paso 4: Para cada centro de venta, crear sus ubicaciones en la tabla [igtpos].[dbo].SaleLocations
    """
    for j, ubicacion in enumerate(ubicaciones):
        query += (
            "INSERT INTO [igtpos].[dbo].SaleLocation\n"
            "SELECT %d, '%s', %d\n"
            "WHERE NOT EXISTS\n"
            "(\n"
            "\tSELECT 1\n"
            "\tFROM [igtpos].[dbo].SaleLocation\n"
            "\tWHERE SaleCenterId = %d\n"
            "\tAND [Name] = '%s'\n"
            "\tAND SaleLocationIndex = %d\n"
            ");\n\n"
            % (i + 1, ubicacion, j, i + 1, ubicacion, j)
        )

"""
Paso 4: Crear las strings XML que definen los planos de mesas
"""

mapa_tpv = aux.create_map(centros_de_venta, 950, 650)
mapa_cmd = aux.create_map(centros_de_venta, 680, 1040)

"""
Paso 5: Crear dos planos: uno para TPV y otro para CMD, en la tabla [igtpos].[dbo].Map
"""

query += (
    "SET NOCOUNT ON;\n\n"
    ""
    "INSERT INTO [igtpos].[dbo].Map\n"
    "SELECT 'TPV','%s', 0, 0\n"
    "WHERE (SELECT COUNT(*) FROM [igtpos].[dbo].Map WHERE [Name] = 'TPV') = 0;\n\n"
    ""
    "IF NOT EXISTS(SELECT * FROM [igtpos].[dbo].MapPosGroups WHERE MapId=1)\n"
    "BEGIN\n"
    "\tINSERT INTO [igtpos].[dbo].MapPosGroups\n"
    "\tSELECT 1, 1;\n"
    "END\n"
    ""
    "INSERT INTO [igtpos].[dbo].Map\n"
    "SELECT 'CMD','%s', 0, 0\n"
    "WHERE (SELECT COUNT(*) FROM [igtpos].[dbo].Map WHERE [Name] = 'CMD') = 0;\n\n"
    ""
    "IF NOT EXISTS (SELECT * FROM [igtpos].[dbo].MapPosGroups WHERE MapId = 2) AND EXISTS (SELECT * FROM [igtpos].[dbo].PosGroup WHERE [Name]='Comanderas')\n"
    "BEGIN\n"
    "\tINSERT INTO [igtpos].[dbo].MapPosGroups\n"
    "\tSELECT 2, 2;\n"
    "END\n"
    % (mapa_tpv, mapa_cmd)
)

script_sql.write(query)
script_sql.close()
