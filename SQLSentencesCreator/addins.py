import openpyxl as op
import deepl as dl
import os
import sys

from unidecode import unidecode as ud

import auxiliar as aux
import Global as glb


"""
Paso 1: Leer la hoja de Añadidos del Excel de Entrada y obtener
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

script_sql = open("sql/addins.sql", 'w')

entrada = op.load_workbook(glb.datos_import)
hoja_añadidos = entrada["Añadidos"]
hoja_productos = entrada["Productos"]

query = (
    "DECLARE @SQL_QUERY NVARCHAR(MAX);\n"
    "DECLARE @contenido VARBINARY(MAX);\n"
    "DECLARE @addinRoleId INT;\n"
    "DECLARE @addinId INT;\n"
    "DECLARE @addinIndex INT;\n"
    "DECLARE @idTraduccion INT;\n"
    "SET NOCOUNT ON;\n\n"
)

cache_traducciones_size = 0

while traducciones["A" + str(cache_traducciones_size + 2)].value is not None:
    cache_traducciones_size += 1

limit = 0

i = 2
while hoja_productos["A" + str(i)].value is not None:
    if hoja_productos["J" + str(i)].value is not None:
        grupos = hoja_productos["J" + str(i)].value.split(", ")

        for grupo in grupos:
            j = 2
            while hoja_productos["A" + str(j)].value is not None:
                if hoja_productos["K" + str(j)].value is not None:
                    if grupo in hoja_productos["K" + str(j)].value:
                        limit += 1

                j += 1

    i += 1

i = 2
a = 1
while hoja_añadidos["A" + str(i)].value is not None:
    """
    Paso 2: Obtener los productos que admiten los añadidos especificados por el grupo de añadidos
    """

    nombre_grupo = hoja_añadidos["A" + str(i)].value.upper()
    maximo = hoja_añadidos["D" + str(i)].value
    minimo = hoja_añadidos["C" + str(i)].value
    texto_boton = hoja_añadidos["B" + str(i)].value.upper()
    orden = hoja_añadidos["E" + str(i)].value
    categoria_de_referencia = hoja_añadidos["F" + str(i)].value.upper()
    imagen = (
        os.getcwd() +
        "\\" +
        glb.dir_imagenes +
        "\\categorias-carta-digital\\" +
        categoria_de_referencia.lower().replace(" ", "-") +
        ".jpg"
    )

    productos_principales = aux.get_main_sale_formats(nombre_grupo, entrada['Productos'])

    # Insertar cada par de grupo-producto principal en la tabla [igtpos].[dbo].AddinRoles
    for producto_principal in productos_principales:
        query += (
            "INSERT INTO [igtpos].[dbo].AddinRole\n"
            "SELECT '%s', %s, %s, 0, 0, '%s', '0xFFBACDE2', 0x0, "
            "(SELECT Id FROM [igtpos].[dbo].SaleFormat WHERE Name = '%s'), %s\n"
            "WHERE NOT EXISTS\n"
            "(\n"
            "\tSELECT 1\n"
            "\tFROM [igtpos].[dbo].AddinRole\n"
            "\tWHERE Name = '%s'\n"
            "\tAND SaleFormatId = (\n"
            "\t\tSELECT Id\n"
            "\t\tFROM [igtpos].[dbo].SaleFormat\n"
            "\t\tWHERE Name = '%s'\n"
            "\t)\n"
            ");\n\n"
            % (
                nombre_grupo,
                maximo,
                minimo,
                texto_boton,
                producto_principal.replace("'", "''"),
                str(int(orden) - 1),
                nombre_grupo,
                producto_principal.replace("'", "''")
            )
        )

        f = cache_traducciones_size // 2
        x1 = 0
        x2 = cache_traducciones_size - 1

        encontrado = False

        while not encontrado:
            if traducciones["A" + str(f + 2)].value == nombre_grupo:
                encontrado = True
                break

            elif traducciones["A" + str(f + 2)].value < nombre_grupo:
                x1 = f
                f = (x1 + x2) // 2

            else:
                x2 = f
                f = (x1 + x2) // 2

            if abs(x2 - x1) <= 1:
                if traducciones["A" + str(x1 + 2)].value == nombre_grupo:
                    encontrado = True
                    f = x1 + 2

                if traducciones["A" + str(x2 + 2)].value == nombre_grupo:
                    encontrado = True
                    f = x2 + 2

                break

        f += 2

        for idioma in list(glb.idiomas.keys()):
            codigo = glb.codigos[idioma]

            encontrado = False

            # Primero comprobamos si existe una traducción del texto en la caché

            c = 0

            while traducciones[glb.columnas[c] + "1"].value != codigo:
                c += 1

            columna = glb.columnas[c]

            f = 2
            while traducciones["A" + str(f)].value is not None:
                if traducciones["A" + str(f)].value == nombre_grupo:
                    encontrado = True
                    break

                f += 1

            # Si se ha encontrado la traducción, se elegirá desde la cache.
            # Si no se ha encontrado la traducción, se guardará en la cache

            if encontrado:
                if traducciones[columna + str(f)].value is not None:
                    traduccion = traducciones[columna + str(f)].value
                else:
                    traduccion = ud(str(translator.translate_text(nombre_grupo, target_lang=glb.idiomas[idioma])))
                    traducciones[columna + str(f)].value = traduccion
            else:
                f = cache_traducciones_size + 2
                traduccion = ud(str(translator.translate_text(nombre_grupo, target_lang=glb.idiomas[idioma])))
                traducciones["A" + str(f)].value = nombre_grupo
                traducciones[columna + str(f)].value = traduccion

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
                    % (codigo, nombre_grupo.replace("'", "''"), traduccion, codigo, nombre_grupo.replace("'", "''"))
            )

            query += (
                    "SELECT @idTraduccion = Id\n"
                    "FROM [igtpos].[dbo].DigitalMenuResourceItem\n"
                    "WHERE LanguageCode = '%s'\n"
                    "AND Text = '%s';\n\n"
                    % (codigo, nombre_grupo.replace("'", "''"))
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

    """
    Paso 3: Insertar imagen del grupo de añadidos, si existe
    """

    if os.path.exists(imagen):
        query += (
            "SET @SQL_QUERY = N'\n"
            "SELECT @contenidoImagen = BulkColumn\n"
            "FROM OPENROWSET(BULK ''%s'', SINGLE_BLOB) AS ImagenBinaria;';\n\n"
            "EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT',"
            " @contenido OUTPUT;\n\n"
            % imagen
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
            "UPDATE [igtpos].[dbo].AddinRole\n"
            "SET StyleImageId =\n"
            "(\n"
            "\tSELECT MIN(Id)\n"
            "\tFROM [igtpos].[dbo].Image\n"
            "\tWHERE Content = @contenido\n"
            ")\n"
            "WHERE Name = '%s';\n\n"
            % nombre_grupo
        )

    """
    Paso 4: Obtener los productos que admiten los añadidos especificados por el grupo en cuestión
    """

    productos_añadidos = aux.get_addin_sale_formats(nombre_grupo, entrada['Productos'])

    """
    Paso 5: Relacionar cada producto principal con el añadido
    """

    j = 0
    for producto_principal in productos_principales:
        k = 0

        # Inserción del producto principal y su añadido en la tabla AddinRoleAddin
        for producto_añadido in productos_añadidos:

            query += (
                "SET @addinRoleId =\n"
                "(\n"
                "\tSELECT Id\n"
                "\tFROM [igtpos].[dbo].AddinRole\n"
                "\tWHERE Name = '" + nombre_grupo + "'\n"
                "\tAND SaleFormatId =\n"
                "\t(\n"
                "\t\tSELECT Id\n"
                "\t\tFROM [igtpos].[dbo].SaleFormat\n"
                "\t\tWHERE Name = '%s'\n"
                "\t)\n"
                ");\n\n"
                % producto_principal.replace("'", "''")
            )

            query += (
                "SET @addinId = \n"
                "(\n"
                "\tSELECT Id\n"
                "\tFROM [igtpos].[dbo].SaleFormat\n"
                "\tWHERE Name = '%s'\n"
                ");\n\n"
                % producto_añadido.replace("'", "''")
            )

            query += (
                "SET @addinIndex = str(%d);\n\n"
                % k
            )

            query += (
                "INSERT INTO [igtpos].[dbo].AddinRoleAddin\n"
                "SELECT @addinRoleId, @addinId, @addinIndex\n"
                "WHERE NOT EXISTS\n"
                "(\n"
                "\tSELECT 1\n"
                "\tFROM [igtpos].[dbo].AddinRoleAddin\n"
                "\tWHERE addinRoleId = @addinRoleId\n"
                "\tAND addinIndex = @addinIndex\n"
                ");\n\n"
            )

            glb.log_file.write("ASIGNADO EL PRODUCTO %s COMO AÑADIDO DEL PRODUCTO %s EN LA BASE DE DATOS\n" % (producto_añadido, producto_principal))

            k += 1

            sys.stdout.write("\r%d / %d aniadidos procesados" % (a, limit))
            sys.stdout.flush()

            a += 1

        j += 1

    i += 1

print()
script_sql.write(query)
script_sql.close()
