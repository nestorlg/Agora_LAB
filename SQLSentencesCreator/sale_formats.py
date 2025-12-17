import os
import sys

import openpyxl as op
import deepl as dl

from unidecode import unidecode as ud

import Global as glb

"""
Paso 1: Leer la hoja de Productos del Excel de Salida y obtener, por cada formato de venta, su nombre, su producto
padre, sus indicadores de venta como principal y añadido, su ratio, su texto de ticket, su texto de boton, su imagen
y sus precios como principal y añadido
"""

with open("temp.txt", "r") as f:
    lineas = f.readlines()

project = lineas[0][:-1]
log_file_name = lineas[1]

glb.datos_import = "projects/" + project + "/entrada.xlsx"
glb.datos_export = "projects/" + project + "/salida.xlsx"
glb.dir_imagenes = "imagenesAgora"
glb.log_file = open("projects/" + project + "/log_files/%s" % log_file_name + ".log", "a")

glb.ruta_cache = "outputExcelCreator/data/cache.xlsx"

translator = dl.Translator(glb.auth_key)
archivo_cache = op.load_workbook(glb.ruta_cache)
traducciones = archivo_cache["Traducciones"]

script_sql = open("sql/sale-formats.sql", "w")

formatos_de_venta = []

salida = op.load_workbook(glb.datos_export)

hoja_productos_salida = salida["Productos"]

cache_traducciones_size = 0

while traducciones["A" + str(cache_traducciones_size + 2)].value is not None:
    cache_traducciones_size += 1

limit = 0

i = 2
while hoja_productos_salida["A" + str(i)].value is not None:
    if hoja_productos_salida["F" + str(i)].value is None:
        nombre = hoja_productos_salida["E" + str(i)].value
    else:
        nombre = hoja_productos_salida["F" + str(i)].value

    padre = hoja_productos_salida["E" + str(i)].value
    vendible_principal = hoja_productos_salida["P" + str(i)].value
    vendible_añadido = hoja_productos_salida["Q" + str(i)].value
    ratio = hoja_productos_salida["G" + str(i)].value
    es_padre = False if ratio is not None else True
    texto_ticket = hoja_productos_salida["X" + str(i)].value
    texto_boton = hoja_productos_salida["T" + str(i)].value
    color = hoja_productos_salida["S" + str(i)].value
    imagen = hoja_productos_salida["U" + str(i)].value
    precio_principal = hoja_productos_salida["AB" + str(i)].value
    precio_añadido = hoja_productos_salida["AC" + str(i)].value

    if precio_principal is not None:
        precio_principal = str(precio_principal).replace(",", ".")

    if precio_añadido is not None:
        precio_añadido = str(precio_añadido).replace(",", ".")

    # Para que el formato sea válido, tiene que poder venderse como principal o como añadido; si no, se considera
    # que es simplemente un producto padre de otro formato

    formato = [
        nombre,
        padre,
        vendible_principal,
        vendible_añadido,
        ratio,
        es_padre,
        texto_ticket,
        texto_boton,
        color,
        imagen,
        precio_principal,
        precio_añadido
    ]

    formatos_de_venta.append(formato)

    i += 1
    limit += 1

query = (
    "SET NOCOUNT ON;\n\n"

    "DECLARE @idFormato INT;\n\n"
    "DECLARE @idProducto INT;\n"
    "DECLARE @idTraduccion INT;\n"
    "DECLARE @SQL_QUERY NVARCHAR(MAX);\n"
    "DECLARE @contenido VARBINARY(MAX);\n"
)

i = 1
for formato_de_venta in formatos_de_venta:
    """
    Paso 2: Obtener el ID de producto del formato
    """

    nombre = formato_de_venta[0]
    padre = formato_de_venta[1]
    vendible_principal = "1" if formato_de_venta[2] == "Sí" else "0"
    vendible_añadido = "1" if formato_de_venta[3] == "Sí" else "0"
    ratio = "1" if formato_de_venta[4] is None else formato_de_venta[4]
    es_padre = "1" if formato_de_venta[5] else "0"
    texto_ticket = formato_de_venta[6]
    texto_boton = formato_de_venta[7]
    color = formato_de_venta[8]
    imagen = formato_de_venta[9]
    precio_principal = formato_de_venta[10] if formato_de_venta[10] is not None else "NULL"
    precio_añadido = formato_de_venta[11] if formato_de_venta[11] is not None else "NULL"

    query += (
        "SELECT @idProducto = Id\n"
        "FROM [igtpos].[dbo].Product\n"
        "WHERE [Name] = '%s';\n\n"
        % padre.replace("'", "''")
    )

    """
    Paso 3: Insertar el formato de venta en la tabla [igtpos].[dbo].SaleFormat
    """

    query += (
        "INSERT INTO [igtpos].[dbo].SaleFormat\n"
        "SELECT '%s', @idProducto, NULL, %s, %s, %s, %s, 1, '%s', '%s', 2, 1, '%s', '%s', 0x0\n"
        "WHERE NOT EXISTS\n"
        "(\n"
        "\tSELECT 1\n"
        "\tFROM [igtpos].[dbo].SaleFormat\n"
        "\tWHERE [Name] = '%s'\n"
        ");\n\n"
        % (
            nombre.replace("'", "''"),
            vendible_principal,
            vendible_añadido,
            ratio,
            es_padre,
            texto_ticket.replace("'", "''"),
            texto_ticket.replace("'", "''"),
            texto_boton.replace("'", "''"),
            color,
            nombre.replace("'", "''")
        )
    )

    glb.log_file.write("INSERTADO EL FORMATO DE VENTA %s, CON %s COMO PRODUCTO PADRE, EN LA BASE DE DATOS\n" % (nombre, padre))

    f = cache_traducciones_size // 2
    x1 = 0
    x2 = cache_traducciones_size - 1

    encontrado = False

    while not encontrado:
        if traducciones["A" + str(f + 2)].value == nombre:
            encontrado = True
            break

        elif traducciones["A" + str(f + 2)].value < nombre:
            x1 = f
            f = (x1 + x2) // 2

        else:
            x2 = f
            f = (x1 + x2) // 2

        if abs(x2 - x1) <= 1:
            if traducciones["A" + str(x1 + 2)].value == nombre:
                encontrado = True
                f = x1 + 2

            if traducciones["A" + str(x2 + 2)].value == nombre:
                encontrado = True
                f = x2 + 2

            break

    f += 2

    for idioma in list(glb.idiomas.keys()):
        codigo = glb.codigos[idioma]

        # Primero comprobamos si existe una traducción del texto en la caché

        c = 0

        while traducciones[glb.columnas[c] + "1"].value != codigo:
            c += 1

        columna = glb.columnas[c]

        if encontrado:
            if traducciones[columna + str(f)].value is not None:
                traduccion = traducciones[columna + str(f)].value
            else:
                traduccion = ud(str(translator.translate_text(nombre, target_lang=glb.idiomas[idioma])))
                traducciones[columna + str(f)].value = traduccion
        else:
            f = cache_traducciones_size + 2
            traduccion = ud(str(translator.translate_text(nombre, target_lang=glb.idiomas[idioma])))
            traducciones["A" + str(f)].value = nombre
            traducciones[columna + str(f)].value = traduccion
            glb.log_file.write("ACTUALIZADA EN CACHE LA TRADUCCIÓN DE %s al valor %s\n" % (
                nombre, traduccion.replace("'", "''")))
            archivo_cache.save(glb.ruta_cache)

        archivo_cache.save(glb.ruta_cache)
        traduccion = traduccion.replace("'", "''")

        query += (
                "INSERT INTO [igtpos].[dbo].DigitalMenuResourceItem\n"
                "SELECT '%s', '%s', '%s'\n"
                "WHERE NOT EXISTS\n"
                "(\n"
                "\tSELECT 1\n"
                "\tFROM [igtpos].[dbo].DigitalMenuResourceItem\n"
                "\tWHERE LanguageCode = '%s'\n"
                "\tAND Text = '%s'\n"
                ");\n\n"
                % (codigo, nombre.replace("'", "''"), traduccion, codigo, nombre.replace("'", "''"))
        )

        query += (
                "SELECT @idTraduccion = Id\n"
                "FROM [igtpos].[dbo].DigitalMenuResourceItem\n"
                "WHERE LanguageCode = '%s'\n"
                "AND Text = '%s';\n\n"
                % (codigo, nombre.replace("'", "''"))
        )

        query += (
            "INSERT INTO [igtpos].[dbo].DigitalMenuResourceItems\n"
            "SELECT 1, @idTraduccion\n"
            "WHERE NOT EXISTS\n"
            "(\n"
            "\tSELECT 1\n"
            "\tFROM [igtpos].[dbo].DigitalMenuResourceItems\n"
            "\tWHERE DigitalMenuResourceItemId = @idTraduccion\n"
            ");\n\n"
        )

    # Obtener el ID del formato de venta

    query += (
        "SELECT @idFormato = Id\n"
        "FROM [igtpos].[dbo].SaleFormat\n"
        "WHERE [Name] = '%s';\n\n"
        % nombre.replace("'", "''")
    )

    """
    Paso 4: Asignarle una imagen al formato de venta si existiese
    """

    if imagen is not None and os.path.exists(imagen):
        query += (
            "SET @SQL_QUERY = N'\n"
            "SELECT @contenidoImagen = BulkColumn\n"
            "FROM OPENROWSET(BULK ''%s'', SINGLE_BLOB) AS ImagenBinaria;';\n\n"
            "EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT',"
            " @contenido OUTPUT;\n\n"
            % imagen.replace("'", "''")
        )

        query += (
            "INSERT INTO [igtpos].[dbo].Image\n"
            "SELECT NEWID(), @contenido\n"
            "WHERE NOT EXISTS\n"
            "(\n"
            "\tSELECT 1\n"
            "\tFROM [igtpos].[dbo].Image\n"
            "\tWHERE Content = @contenido\n"
            ");\n\n"
        )

        query += (
            "UPDATE [igtpos].[dbo].SaleFormat\n"
            "SET StyleImageId =\n"
            "(\n"
            "\tSELECT MIN(Id)\n"
            "\tFROM [igtpos].[dbo].Image\n"
            "\tWHERE Content = @contenido\n"
            ")\n"
            "WHERE Id = @idFormato;\n\n"
        )

    """
    Paso 5: Insertar precios del producto
    """

    if vendible_principal == "1" or vendible_añadido == "1":
        query += (
            "INSERT INTO [igtpos].[dbo].SaleFormatPrice\n"
            "SELECT 1, %s, %s, NULL, 0, SYSDATETIME(), NULL, @idFormato\n"
            "WHERE NOT EXISTS\n"
            "(\n"
            "\tSELECT 1\n"
            "\tFROM [igtpos].[dbo].SaleFormatPrice\n"
            "\tWHERE SaleFormatId = @idFormato\n"
            ");\n\n"
            % (precio_principal, precio_añadido)
        )

    sys.stdout.write("\r%d / %d formatos procesados" % (i, limit))
    sys.stdout.flush()

    i += 1

print()
script_sql.write(query)
script_sql.close()
glb.log_file.close()
