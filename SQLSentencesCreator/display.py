import openpyxl as op

import Global as glb

"""
Paso 1: Leer la hoja de Datos adicionales del Excel de Entrada y obtener el número de monitores de cocina
"""

script_sql = open("sql/display.sql", "w")

productos = []

with open("temp.txt", "r") as f:
    lineas = f.readlines()

project = lineas[0][:-1]

glb.datos_import = "projects/" + project + "/entrada.xlsx"
glb.datos_export = "projects/" + project + "/salida.xlsx"
glb.dir_imagenes = "imagenesAgora"

entrada = op.load_workbook(glb.datos_import)

hoja_datos = entrada["Datos adicionales"]

nDisplay = int(hoja_datos["B10"].value) if hoja_datos["B10"].value is not None else 1

salida = op.load_workbook(glb.datos_export)

hoja_centros_de_venta = salida["Centros de Venta"]

query = (
    "DECLARE @idTipoPreparacion INT;\n"
    "DECLARE @idOrdenPreparacion INT;\n"
    "DECLARE @idCentroVenta INT;\n"
    "SET NOCOUNT ON;\n\n"
)

"""
Paso 2: Inserción de los monitores de cocina en la tabla [igtpos].[dbo].KitchenDisplay
"""

if nDisplay == 1:
    query += (
        "INSERT INTO [igtpos].[dbo].KitchenDisplay\n"
        "SELECT 'Cocina', NULL, 1, 1, 0, 0, 0, 3, 1, 0, '[]', 'Cocina', 0, 1, 1, 1, 1\n"
        "WHERE NOT EXISTS\n"
        "(\n"
        "\tSELECT 1\n"
        "\tFROM [igtpos].[dbo].KitchenDisplay\n"
        "\tWHERE [Name] = 'Cocina'\n"
        ");\n\n"
        "INSERT INTO [igtpos].[dbo].KitchenDisplayMainLineStatus\n"
        "SELECT 1, 2\n"
        "WHERE NOT EXISTS\n"
        "(\n"
        "\tSELECT 1\n"
        "\tFROM [igtpos].[dbo].KitchenDisplayMainLineStatus\n"
        "\tWHERE KitchenDisplayId = 1\n"
        "\tAND Status = 2"
        ");\n\n"
        "INSERT INTO [igtpos].[dbo].KitchenDisplaySecondaryLineStatus\n"
        "SELECT 1, 1\n"
        "WHERE NOT EXISTS\n"
        "(\n"
        "\tSELECT 1\n"
        "\tFROM [igtpos].[dbo].KitchenDisplaySecondaryLineStatus\n"
        "\tWHERE KitchenDisplayId = 1\n"
        "\tAND Status = 1"
        ");\n\n"
    )

    """
    Paso 3: Asignar los monitores de cocina al tipo de preparación Cocina
    """

    query += (
        "SET @idTipoPreparacion = NULL;\n"
        "SELECT @idTipoPreparacion = Id\n"
        "FROM [igtpos].[dbo].PreparationType\n"
        "WHERE [Name] = 'Cocina';\n\n"
        
        "IF @idTipoPreparacion IS NOT NULL\n"
        "\tINSERT INTO [igtpos].[dbo].KitchenDisplayPreparationType\n"
        "\tSELECT 1, @idTipoPreparacion\n"
        "\tWHERE NOT EXISTS\n"
        "\t(\n"
        "\t\tSELECT 1\n"
        "\t\tFROM [igtpos].[dbo].KitchenDisplayPreparationType\n"
        "\t\tWHERE KitchenDisplayId = 1\n"
        "\t\tAND PreparationTypeId = @idTipoPreparacion\n"
        "\t);\n\n"
    )

    """
    Paso 4: Asignar los monitores de cocina a los órdenes de preparación Primeros, Segundos y Postres
    """

    query += (
        "SET @idOrdenPreparacion = NULL;\n"
        "SELECT @idOrdenPreparacion = Id\n"
        "FROM [igtpos].[dbo].PreparationOrder\n"
        "WHERE [Name] = 'Marche y pase';\n\n"
        
        "IF @idOrdenPreparacion IS NOT NULL\n"
        "\tINSERT INTO [igtpos].[dbo].KitchenDisplayPreparationOrder\n"
        "\tSELECT 1, @idOrdenPreparacion\n"
        "\tWHERE NOT EXISTS\n"
        "\t(\n"
        "\t\tSELECT 1\n"
        "\t\tFROM [igtpos].[dbo].KitchenDisplayPreparationOrder\n"
        "\t\tWHERE KitchenDisplayId = 1\n"
        "\t\tAND PreparationOrderId = @idOrdenPreparacion\n"
        "\t);\n\n"
        
        "SET @idOrdenPreparacion = NULL;\n"
        "SELECT @idOrdenPreparacion = Id\n"
        "FROM [igtpos].[dbo].PreparationOrder\n"
        "WHERE [Name] = 'Primeros';\n\n"
        
        "IF @idOrdenPreparacion IS NOT NULL\n"
        "\tINSERT INTO [igtpos].[dbo].KitchenDisplayPreparationOrder\n"
        "\tSELECT 1, @idOrdenPreparacion\n"
        "\tWHERE NOT EXISTS\n"
        "\t(\n"
        "\t\tSELECT 1\n"
        "\t\tFROM [igtpos].[dbo].KitchenDisplayPreparationOrder\n"
        "\t\tWHERE KitchenDisplayId = 1\n"
        "\t\tAND PreparationOrderId = @idOrdenPreparacion\n"
        "\t);\n\n"
        
        "SET @idOrdenPreparacion = NULL;\n"
        "SELECT @idOrdenPreparacion = Id\n"
        "FROM [igtpos].[dbo].PreparationOrder\n"
        "WHERE [Name] = 'Segundos';\n\n"
        
        "IF @idOrdenPreparacion IS NOT NULL\n"
        "\tINSERT INTO [igtpos].[dbo].KitchenDisplayPreparationOrder\n"
        "\tSELECT 1, @idOrdenPreparacion\n"
        "\tWHERE NOT EXISTS\n"
        "\t(\n"
        "\t\tSELECT 1\n"
        "\t\tFROM [igtpos].[dbo].KitchenDisplayPreparationOrder\n"
        "\t\tWHERE KitchenDisplayId = 1\n"
        "\t\tAND PreparationOrderId = @idOrdenPreparacion\n"
        "\t);\n\n"
        
        "SET @idOrdenPreparacion = NULL;\n"
        "SELECT @idOrdenPreparacion = Id\n"
        "FROM [igtpos].[dbo].PreparationOrder\n"
        "WHERE [Name] = 'Postres';\n\n"
        
        "IF @idOrdenPreparacion IS NOT NULL\n"
        "\tINSERT INTO [igtpos].[dbo].KitchenDisplayPreparationOrder\n"
        "\tSELECT 1, @idOrdenPreparacion\n"
        "\tWHERE NOT EXISTS\n"
        "\t(\n"
        "\t\tSELECT 1\n"
        "\t\tFROM [igtpos].[dbo].KitchenDisplayPreparationOrder\n"
        "\t\tWHERE KitchenDisplayId = 1\n"
        "\t\tAND PreparationOrderId = @idOrdenPreparacion\n"
        "\t);\n\n"
    )

    """
    Paso 5: Asignar los monitores de cocina a todos los centros de venta
    """

    j = 2
    while hoja_centros_de_venta["A" + str(j)].value is not None:
        query += (
            "SET @idCentroVenta = NULL;\n"
            "SELECT @idCentroVenta = Id\n"
            "FROM [igtpos].[dbo].SaleCenter\n"
            "WHERE [Name] = '%s';\n\n"
                    
            "IF @idCentroVenta IS NOT NULL\n"
            "\tINSERT INTO [igtpos].[dbo].KitchenDisplaySaleCenter\n"
            "\tSELECT 1, @idCentroVenta\n"
            "\tWHERE NOT EXISTS\n"
            "\t(\n"
            "\t\tSELECT 1\n"
            "\t\tFROM [igtpos].[dbo].KitchenDisplaySaleCenter\n"
            "\t\tWHERE KitchenDisplayId = 1\n"
            "\t\tAND SaleCenterId = @idCentroVenta\n"
            "\t);\n\n"
            % hoja_centros_de_venta["A" + str(j)].value
        )

        j += 1

else:
    if nDisplay != 0:
        for i in range(1, nDisplay + 1):
            query += (
                "INSERT INTO [igtpos].[dbo].KitchenDisplay\n"
                "SELECT 'Cocina%d', NULL, 1, 1, 0, 0, 0, 3, 1, 0, '[]', 'Cocina', 0, 1, 1, 1, 1\n"
                "WHERE NOT EXISTS\n"
                "(\n"
                "\tSELECT 1\n"
                "\tFROM [igtpos].[dbo].KitchenDisplay\n"
                "\tWHERE [Name] = 'Cocina%d'\n"
                ");\n\n"
                "INSERT INTO [igtpos].[dbo].KitchenDisplayMainLineStatus\n"
                "SELECT %d, 2\n"
                "WHERE NOT EXISTS\n"
                "(\n"
                "\tSELECT 1\n"
                "\tFROM [igtpos].[dbo].KitchenDisplayMainLineStatus\n"
                "\tWHERE KitchenDisplayId = %d\n"
                "\tAND Status = 2"
                ");\n\n"
                "INSERT INTO [igtpos].[dbo].KitchenDisplaySecondaryLineStatus\n"
                "SELECT %d, 1\n"
                "WHERE NOT EXISTS\n"
                "(\n"
                "\tSELECT 1\n"
                "\tFROM [igtpos].[dbo].KitchenDisplaySecondaryLineStatus\n"
                "\tWHERE KitchenDisplayId = %d\n"
                "\tAND Status = 1"
                ");\n\n"
                % (i, i, i, i, i, i)
            )

            query += (
                "SET @idTipoPreparacion = NULL;\n"
                "SELECT @idTipoPreparacion = Id\n"
                "FROM [igtpos].[dbo].PreparationType\n"
                "WHERE [Name] = 'Cocina';\n\n"
                
                "IF @idTipoPreparacion IS NOT NULL\n"
                "\tINSERT INTO [igtpos].[dbo].KitchenDisplayPreparationType\n"
                "\tSELECT %d, @idTipoPreparacion\n"
                "\tWHERE NOT EXISTS\n"
                "\t(\n"
                "\t\tSELECT 1\n"
                "\t\tFROM [igtpos].[dbo].KitchenDisplayPreparationType\n"
                "\t\tWHERE KitchenDisplayId = 1\n"
                "\t\tAND PreparationTypeId = @idTipoPreparacion\n"
                "\t);\n\n"
                % i
            )

            query += (
                "SET @idOrdenPreparacion = NULL;\n"
                "SELECT @idOrdenPreparacion = Id\n"
                "FROM [igtpos].[dbo].PreparationOrder\n"
                "WHERE [Name] = 'Marche y pase';\n\n"
                
                "IF @idOrdenPreparacion IS NOT NULL\n"
                "\tINSERT INTO [igtpos].[dbo].KitchenDisplayPreparationOrder\n"
                "\tSELECT %d, @idOrdenPreparacion\n"
                "\tWHERE NOT EXISTS\n"
                "\t(\n"
                "\t\tSELECT 1\n"
                "\t\tFROM [igtpos].[dbo].KitchenDisplayPreparationOrder\n"
                "\t\tWHERE KitchenDisplayId = 1\n"
                "\t\tAND PreparationOrderId = @idOrdenPreparacion\n"
                "\t);\n\n"
                
                "SET @idOrdenPreparacion = NULL;\n"
                "SELECT @idOrdenPreparacion = Id\n"
                "FROM [igtpos].[dbo].PreparationOrder\n"
                "WHERE [Name] = 'Primeros';\n\n"
                
                "IF @idOrdenPreparacion IS NOT NULL\n"
                "\tINSERT INTO [igtpos].[dbo].KitchenDisplayPreparationOrder\n"
                "\tSELECT %d, @idOrdenPreparacion\n"
                "\tWHERE NOT EXISTS\n"
                "\t(\n"
                "\t\tSELECT 1\n"
                "\t\tFROM [igtpos].[dbo].KitchenDisplayPreparationOrder\n"
                "\t\tWHERE KitchenDisplayId = 1\n"
                "\t\tAND PreparationOrderId = @idOrdenPreparacion\n"
                "\t);\n\n"
                
                "SET @idOrdenPreparacion = NULL;\n"
                "SELECT @idOrdenPreparacion = Id\n"
                "FROM [igtpos].[dbo].PreparationOrder\n"
                "WHERE [Name] = 'Segundos';\n\n"
                
                "IF @idOrdenPreparacion IS NOT NULL\n"
                "\tINSERT INTO [igtpos].[dbo].KitchenDisplayPreparationOrder\n"
                "\tSELECT %d, @idOrdenPreparacion\n"
                "\tWHERE NOT EXISTS\n"
                "\t(\n"
                "\t\tSELECT 1\n"
                "\t\tFROM [igtpos].[dbo].KitchenDisplayPreparationOrder\n"
                "\t\tWHERE KitchenDisplayId = 1\n"
                "\t\tAND PreparationOrderId = @idOrdenPreparacion\n"
                "\t);\n\n"
                
                "SET @idOrdenPreparacion = NULL;\n"
                "SELECT @idOrdenPreparacion = Id\n"
                "FROM [igtpos].[dbo].PreparationOrder\n"
                "WHERE [Name] = 'Postres';\n\n"
                
                "IF @idOrdenPreparacion IS NOT NULL\n"
                "\tINSERT INTO [igtpos].[dbo].KitchenDisplayPreparationOrder\n"
                "\tSELECT %d, @idOrdenPreparacion\n"
                "\tWHERE NOT EXISTS\n"
                "\t(\n"
                "\t\tSELECT 1\n"
                "\t\tFROM [igtpos].[dbo].KitchenDisplayPreparationOrder\n"
                "\t\tWHERE KitchenDisplayId = 1\n"
                "\t\tAND PreparationOrderId = @idOrdenPreparacion\n"
                "\t);\n\n"
                % (i, i, i, i)
            )

            j = 2
            while hoja_centros_de_venta["A" + str(j)].value is not None:
                query += (
                    "SET @idCentroVenta = NULL;\n"
                    "SELECT @idCentroVenta = Id\n"
                    "FROM [igtpos].[dbo].SaleCenter\n"
                    "WHERE [Name] = '%s';\n\n"
                    
                    "IF @idCentroVenta IS NOT NULL\n"
                    "\t\nINSERT INTO [igtpos].[dbo].KitchenDisplaySaleCenter\n"
                    "\t\nSELECT %d, @idCentroVenta\n"
                    "\t\nWHERE NOT EXISTS\n"
                    "\t(\n"
                    "\t\tSELECT 1\n"
                    "\t\tFROM [igtpos].[dbo].KitchenDisplaySaleCenter\n"
                    "\t\tWHERE KitchenDisplayId = %d\n"
                    "\t\tAND SaleCenterId = @idCentroVenta\n"
                    "\t);\n\n"
                    % (hoja_centros_de_venta["A" + str(j)].value, i, i)
                )

                j += 1

script_sql.write(query)
script_sql.close()
