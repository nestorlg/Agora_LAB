import openpyxl as op

import Global as glb

"""
Paso 1: Leer la hoja de Usuarios del Excel de Salida
"""

script_sql = open("sql/users-and-profiles.sql", "w")

usuarios = []

with open("temp.txt", "r") as f:
    lineas = f.readlines()

project = lineas[0][:-1]

glb.datos_import = "projects/" + project + "/entrada.xlsx"
glb.datos_export = "projects/" + project + "/salida.xlsx"
glb.dir_imagenes = "imagenesAgora"

salida = op.load_workbook(glb.datos_export)

hoja_usuarios_salida = salida["Usuarios"]

i = 2
while hoja_usuarios_salida["A" + str(i)].value is not None:
    """
    Paso 2: Obtener, de cada usuario, su nombre, sus claves, su perfil, su texto de boton, su imagen, su color y sus
    indicadores de si deben ser en el TPV y en el fichaje
    """

    nombre = hoja_usuarios_salida["A" + str(i)].value
    clave_tpv = hoja_usuarios_salida["C" + str(i)].value
    clave_cmd = hoja_usuarios_salida["D" + str(i)].value
    clave_admin = hoja_usuarios_salida["E" + str(i)].value
    perfil = hoja_usuarios_salida["G" + str(i)].value
    texto_boton = hoja_usuarios_salida["P" + str(i)].value
    imagen = hoja_usuarios_salida["Q" + str(i)].value
    color = hoja_usuarios_salida["R" + str(i)].value
    mostrar_en_tpv = hoja_usuarios_salida["S" + str(i)].value
    mostrar_en_fichaje = hoja_usuarios_salida["T" + str(i)].value

    usuario = [
        nombre,
        clave_tpv if clave_tpv is not None else "",
        clave_cmd if clave_cmd is not None else "",
        clave_admin if clave_admin is not None else "",
        perfil,
        texto_boton,
        imagen,
        color,
        mostrar_en_tpv,
        mostrar_en_fichaje
    ]

    usuarios.append(usuario)

    i += 1

query = (
    "SET NOCOUNT ON;\n\n"
    
    "DECLARE @SQL_QUERY NVARCHAR(MAX);\n"
    "DECLARE @contenido VARBINARY(MAX);\n"
    "DECLARE @idPerfil INT;\n"
    "SET NOCOUNT ON;\n\n"
)

for usuario in usuarios:
    """
    Paso 3: Insertar el perfil de usuario en la tabla [igtpos].[dbo].UserProfile si no existe
    """

    nombre = usuario[0]
    clave_tpv = usuario[1]
    clave_cmd = usuario[2]
    clave_admin = usuario[3].replace("'", "''") if usuario[3] is not None else None
    perfil = usuario[4]
    texto_boton = usuario[5]
    imagen = usuario[6]
    color = usuario[7]
    mostrar_en_tpv = "1" if usuario[8] == "Sí" else "0"
    mostrar_en_fichaje = "1" if usuario[9] == "Sí" else "0"

    query += (
        "INSERT INTO [igtpos].[dbo].UserProfile\n"
        "SELECT 'Custom', NULL, '%s', 1000004, 1000003\n"
        "WHERE NOT EXISTS\n"
        "(\n"
        "\tSELECT 1\n"
        "\tFROM [igtpos].[dbo].UserProfile\n"
        "\tWHERE [Name] = '%s'\n"
        "\tAND DeletionDate IS NULL\n"
        ");\n\n"
        % (perfil, perfil)
    )

    # Obtener el ID del perfil de usuario

    query += (
        "SELECT @idPerfil = Id\n"
        "FROM [igtpos].[dbo].UserProfile\n"
        "WHERE [Name] = '%s';\n\n"
        % perfil
    )

    """
    Paso 4: Insertar el usuario en la tabla [igtpos].[dbo].User
    """

    query += (
        "INSERT INTO [igtpos].[dbo].[User]\n"
        "SELECT NULL, '%s', '%s', '%s', '%s', '', '', NULL, '%s', '%s', 0, '', '', '', '', 0, 0, 0, '', '', '', NULL,"
        "'', '', '', 0, '', '', '', '', @idPerfil, '%s', '%s', 0x0, 1\n"
        "WHERE NOT EXISTS (\n"
        "\tSELECT 1\n"
        "\tFROM [igtpos].[dbo].[User]\n"
        "\tWHERE [Name] = '%s'\n"
        "\tAND DeletionDate IS NULL\n"
        ");\n\n"
        % (
            nombre,
            clave_tpv,
            clave_cmd,
            clave_admin,
            mostrar_en_tpv,
            mostrar_en_fichaje,
            texto_boton,
            color,
            nombre
        )
    )

    """
    Paso 5: Insertar la imagen del usuario en la tabla [igtpos].[dbo].Image si existe
    """

    if imagen is not None:
        query += (
            "SET @SQL_QUERY = N'\n"
            "SELECT @contenidoImagen = BulkColumn\n"
            "FROM OPENROWSET(BULK ''%s'', SINGLE_BLOB) AS ImagenBinaria\n"
            "WHERE BulkColumn IS NOT NULL;';\n\n"
            
            "EXEC sp_executesql @SQL_QUERY, N'@contenidoImagen VARBINARY (MAX) OUTPUT', @contenido OUTPUT;\n\n"
            "INSERT INTO [igtpos].[dbo].[Image]\n"
            "SELECT NEWID(), @contenido;\n\n"
            
            "UPDATE [igtpos].[dbo].[User]\n"
            "SET StyleImageId =\n"
            "(\n"
            "\tSELECT MIN(Id)\n"
            "\tFROM [igtpos].[dbo].Image\n"
            "\tWHERE Content = @contenido\n"
            ")\n"
            "WHERE [Name] = '%s' AND DeletionDate IS NULL;\n\n"
            % (imagen, nombre)
        )

script_sql.write(query)
script_sql.close()
