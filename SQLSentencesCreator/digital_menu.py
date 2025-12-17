import base64 as b64
import random as rd
import string as st
import deepl as dl
import openpyxl as op

from unidecode import unidecode as ud

import Global as glb

import os


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
imagen = os.getcwd() + "\\projects\\" + project + "\\logos\\logo-smartmenu.png"

cache_traducciones_size = 0

while traducciones["A" + str(cache_traducciones_size + 2)].value is not None:
    cache_traducciones_size += 1

with open(imagen, "rb") as image_file:
    base64_string = b64.b64encode(image_file.read()).decode('utf-8')

sql_script = open("sql/digital-menu.sql", "w")
texto_legal = "Puede revisar los términos y condiciones en nuestra página web."
nombre_menu = "La Carta"

query = (
    "DECLARE @idTraduccion INT;\n"
    "SET NOCOUNT ON;\n\n"
    
    "DECLARE @contenidoImagen VARBINARY(MAX);\n"
    "SELECT @contenidoImagen = BulkColumn\n"
    "FROM OPENROWSET(BULK '%s', SINGLE_BLOB) AS ImagenBinaria;\n\n"
    % imagen
)

global_id = ''.join(rd.choice(st.digits + st.ascii_lowercase) for _ in range(4))
token = ''.join(rd.choice(st.digits + st.ascii_lowercase) for _ in range(4))

query += (
    "INSERT INTO [igtpos].[dbo].DigitalMenu\n"
    "SELECT	'%s', '%s', '%s', '', '', '', '', "
    "'%s.', '', '', @contenidoImagen, '0xFF6CC9C7', "
    "'0xFFFFFFFF', 1, 1, 1, NULL, NULL, NULL, '';\n\n"
                  
    "DECLARE cursor_categorias CURSOR FOR\n"
    "SELECT cat.Id\n"
    "FROM [igtpos].[dbo].Category cat\n"
    "JOIN [igtpos].[dbo].Family fam\n"
    "ON cat.[Name] = fam.[Name]\n"
    "JOIN [igtpos].[dbo].IndexItem ii\n"
    "ON ii.EntityId = fam.Id\n"
    "ORDER BY ii.IndexedItemIndex;\n\n"
                  
    "OPEN cursor_categorias;\n"
    "DECLARE @id_categoria INT;\n"
    "DECLARE @indice INT;\n"
    "SET @indice = 0;\n\n"
    "DECLARE @digitalmenu_id INT;\n"
    "SET @digitalmenu_id = (SELECT MIN(Id) FROM [igtpos].[dbo].DigitalMenu);\n\n"
                  
    "FETCH NEXT FROM cursor_categorias INTO @id_categoria;\n"
    "WHILE @@FETCH_STATUS = 0\n"
    "BEGIN\n"
    "\tINSERT INTO [igtpos].[dbo].DigitalMenuCategory\n"
    "\tSELECT @digitalmenu_id, @id_categoria, @indice;\n"
    "\tFETCH NEXT FROM cursor_categorias INTO @id_categoria;\n"
    "\tSET @indice = @indice + 1;\n"
    "END;\n\n"
    % (global_id, nombre_menu, token, texto_legal)
)

query += "CLOSE cursor_categorias;\n\n"

f = cache_traducciones_size // 2
x1 = 0
x2 = cache_traducciones_size - 1

encontrado = False

while not encontrado:
    if traducciones["A" + str(f + 2)].value == texto_legal:
        encontrado = True
        break

    elif traducciones["A" + str(f + 2)].value < texto_legal:
        x1 = f
        f = (x1 + x2) // 2

    else:
        x2 = f
        f = (x1 + x2) // 2

    if abs(x2 - x1) <= 1:
        if traducciones["A" + str(x1 + 2)].value == texto_legal:
            encontrado = True
            f = x1 + 2

        if traducciones["A" + str(x2 + 2)].value == texto_legal:
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
        if traducciones["A" + str(f)].value == texto_legal:
            encontrado = True
            break

        f += 1

    # Si se ha encontrado la traducción, se elegirá desde la cache.
    # Si no se ha encontrado la traducción, se guardará en la cache

    if encontrado:
        if traducciones[columna + str(f)].value is not None:
            traduccion = traducciones[columna + str(f)].value
        else:
            traduccion = ud(str(translator.translate_text(texto_legal, target_lang=glb.idiomas[idioma])))
            traducciones[columna + str(f)].value = traduccion
    else:
        f = cache_traducciones_size + 2
        traduccion = ud(str(translator.translate_text(texto_legal, target_lang=glb.idiomas[idioma])))
        traducciones["A" + str(f)].value = texto_legal
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
            % (codigo, texto_legal, traduccion, codigo, texto_legal)
    )

    query += (
            "SELECT @idTraduccion = Id\n"
            "FROM [igtpos].[dbo].DigitalMenuResourceItem\n"
            "WHERE LanguageCode = '%s'\n"
            "AND Text = '%s';\n\n"
            % (codigo, texto_legal)
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
        if traducciones["A" + str(f)].value == nombre_menu:
            encontrado = True
            break

        f += 1

    # Si se ha encontrado la traducción, se elegirá desde la cache.
    # Si no se ha encontrado la traducción, se guardará en la cache

    if encontrado:
        if traducciones[columna + str(f)].value is not None:
            traduccion = traducciones[columna + str(f)].value
        else:
            traduccion = ud(str(translator.translate_text(nombre_menu, target_lang=glb.idiomas[idioma])))
            traducciones[columna + str(f)].value = traduccion
    else:
        traduccion = ud(str(translator.translate_text(nombre_menu, target_lang=glb.idiomas[idioma])))
        traducciones["A" + str(f)].value = nombre_menu
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
            % (codigo, nombre_menu, traduccion, codigo, nombre_menu)
    )

    query += (
            "SELECT @idTraduccion = Id\n"
            "FROM [igtpos].[dbo].DigitalMenuResourceItem\n"
            "WHERE LanguageCode = '%s'\n"
            "AND Text = '%s';\n\n"
            % (codigo, nombre_menu)
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

sql_script.write(query)
sql_script.close()
