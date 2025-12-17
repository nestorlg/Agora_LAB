import openpyxl as px

import Global as glb


"""
Paso 1: Leer la hoja de Añadidos del Excel de Entrada y obtener
"""


script_sql = open("sql/predefined-notes.sql", 'w')

with open("temp.txt", "r") as f:
    lineas = f.readlines()

project = lineas[0][:-1]
log_file_name = lineas[1]

glb.datos_import = "projects/" + project + "/entrada.xlsx"
glb.datos_export = "projects/" + project + "/salida.xlsx"
glb.dir_imagenes = "imagenesAgora"
glb.log_file = open("projects/" + project + "/log_files/%s" % log_file_name + ".log", "a")

entrada = px.load_workbook(glb.datos_export)
hoja_notas = entrada['Notas de preparación']

query = (
    "DECLARE @SQL_QUERY NVARCHAR(MAX);\n"
    "DECLARE @contenido VARBINARY(MAX);\n"
    "DECLARE @noteId INT;\n"
    "DECLARE @categoryId INT;\n"
    "SET NOCOUNT ON;\n\n"
)

notas = []

"""
Paso 2: Obtener, para cada nota de preparación, su texto, categorías implicadas, el texto de botón, color e imagen
"""

i = 2
while hoja_notas["A" + str(i)].value is not None:
    texto = hoja_notas["A" + str(i)].value
    categorias = hoja_notas["D" + str(i)].value.split(", ")
    texto_boton = hoja_notas["E" + str(i)].value.replace("SIN ", "s/").replace("CON ", "c/")
    color = hoja_notas["F" + str(i)].value
    imagen = hoja_notas["G" + str(i)].value

    nota = [
        texto,
        categorias,
        texto_boton,
        color,
        imagen
    ]

    notas.append(nota)

    i += 1

for nota in notas:
    """
    Paso 3: Insertar la nota de preparación en la tabla [igtpos].[dbo].PredefinedNote
    """
    texto = nota[0]
    texto_boton = nota[2]
    color = nota[3]
    imagen = nota[4]
    categorias = nota[1]

    query += (
        "INSERT INTO [igtpos].[dbo].PredefinedNote\n"
        "SELECT NULL, '%s', 0, 0, 1, 0, '%s', '%s', 0x0\n"
        "WHERE NOT EXISTS\n"
        "(\n"
        "\tSELECT 1\n"
        "\tFROM [igtpos].[dbo].PredefinedNote\n"
        "\tWHERE [Text] = '%s'\n"
        "\tAND DeletionDate IS NULL\n"
        ");\n\n"
        % (texto, texto_boton, color, texto)
    )

    """
    Paso 3: Insertar la imagen en la tabla [igtpos].[dbo].Image
    """

    # Se construye la sentencia sql que obtendra el contenido de la imagen a partir de la ruta
    query += (
        "SET @SQL_QUERY = N'\n"
        "SELECT @contenidoImagen = BulkColumn\n"
        "FROM OPENROWSET(BULK ''%s'', SINGLE_BLOB) AS ImagenBinaria;';\n\n"
        "EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT',"
        "@contenido OUTPUT;\n\n"
        % imagen
    )

    # Sentencia INSERT que inserta la imagen en la tabla Image
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

    # Sentencia UPDATE que actualiza la imagen del grupo de añadidos
    query += (
        "UPDATE	[igtpos].[dbo].PredefinedNote\n"
        "SET [StyleImageId] = \n"
        "(\n"
        "\tSELECT MIN(Id)\n"
        "\tFROM [igtpos].[dbo].Image\n"
        "\tWHERE Content = @contenido\n"
        ")\n"
        "WHERE [Text] = '%s';\n\n"
        % texto
    )

    # Se asigna la nota de preparación a las categorías indicadas
    query += (
        "SET @noteId = (\n"
        "\tSELECT Id\n"
        "\tFROM [igtpos].[dbo].PredefinedNote\n"
        "\tWHERE [Text] = '%s'\n"
        "\tAND DeletionDate IS NULL\n"
        ");\n\n"
        % texto
    )

    for categoria in categorias:
        query += (
            "SET @categoryId = (\n"
            "\tSELECT Id\n"
            "\tFROM [igtpos].[dbo].Category\n"
            "\tWHERE [Name] = '%s'\n"
            ");\n\n"
            % categoria
        )

        query += (
            "INSERT INTO [igtpos].[dbo].PredefinedNotesGroups\n"
            "SELECT @noteId, 'Category', @categoryId\n"
            "WHERE NOT EXISTS\n"
            "(\n"
            "\tSELECT 1\n"
            "\tFROM [igtpos].[dbo].PredefinedNotesGroups\n"
            "\tWHERE PredefinedNoteId = @noteId\n"
            "\tAND ProductGroupId = @categoryId\n"
            ");\n\n"
        )

script_sql.write(query)
script_sql.close()
