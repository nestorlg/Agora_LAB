import openpyxl as op

import Global as glb

mapa_botones = {
    "": "ACA17932-E0EF-4313-A193-A186B8381BB3",
    "Cobrar en Efecivo": "95A54825-0BCB-45A3-969E-4AA2F9EDD103",
    "Imprimir": "0DCAE505-3BD6-4E6B-BB75-CA74D4CBF05F",
    "Preparar": "EF584278-F107-4548-80C2-C453C3FB9689",
    "Aparcar Ticket": "763C4F6E-3BC3-4BE5-A94F-7B1F355D0260",
    "Pagos": "E23C572D-E8CD-40AF-8B17-FAA492B11C87",
    "Cambiar Mesa": "6BD07A93-79F9-4D78-A82B-1A6009543E79",
    "Asignar Usuario": "8E699A70-0F23-4228-A9C1-4B7C786FB9D4",
    "Buscar por Texto": "9BC84CE2-FCD8-482B-A1C0-9D0772DE139B",
    "Cerrar Sesión": "D0A15D1B-76E7-4D0D-A634-F05E9D742900",
    "Cambiar Orden Prep.": "A8DC8D02-3D4E-4836-81D5-6814CE1B0D9A",
    "Preparar Línea": "F3AF946D-3941-4E38-8FBE-5BE2C2C6FCE4",
    "Marchar Línea": "E40C290C-685D-4A2F-B616-691F13500409",
    "Añadir Nota": "70CA4472-2B93-4152-8A51-0E7855B7460B",
    "Cambiar Añadidos": "4C9F8A93-76D2-4330-8E4C-7696FB8260C3",
    "Ajustar Ingredientes": "3C3DAD56-0EA8-4D6D-B0EA-ABCCD1232D51",
    "Editar Nº Asiento": "AD91CF02-260C-4BBF-997B-B41D08214370",
    "Siguiente Nº Asiento": "5B2F43B0-447E-41EB-B651-937557D7101C",
    "Propinas Pendientes": "D8CD73B8-B320-44B8-8546-D9E018A2865F",
    "Minimizar": "A7131F37-D9DD-4B29-BA1C-872F13CC6707",
    "Buscar Pedidos": "7EA2E353-67FA-481A-AEB3-1B702B3305A1",
    "Buscar Albarán": "15DA7AA2-0B58-4E71-95D1-3473DF7DD7C0",
    "Buscar Facturas": "2F7AE16D-12D0-4A39-8896-F6EC6F8D2564",
    "Tickets Abiertos": "8B31410E-DC74-4253-A362-F90998EAD22C",
    "Tickets en Mesa": "C707EF14-BB93-46DC-9163-701494C156E1",
    "Imprimir: Siempre": "97CAA18E-85F9-4297-987A-3A9C2C787F81",
    "Preparación de Pedidos": "243506DB-BAEA-447D-A8A7-69B59159940C",
    "Crear Pedido": "4E6EB96B-FA1E-460F-8D98-4CF6E9F1B73F",
    "Crear Albarán": "EC8B52B8-28B9-4220-AB20-541BDA2E3F67",
    "Crear Devolución": "317AB574-FDD6-4A3C-B05F-2FF524A0DD97",
    "Crear Merma": "B7F6C3FE-33C4-47A9-BA8B-5B6074131FFC",
    "Imirimir Última Factura": "0613E5B0-B628-45D3-8EF4-54D214388CD9",
    "Crear Producto": "D85F0DDC-8192-46BC-A71E-FACEC6BBD641",
    "Buscar Producto": "035D009E-9C93-41EC-A3EC-CE72D615A98B",
    "Añadir Por Código": "CCF23FB9-2615-4B49-8CE0-B2ED6C98325C",
    "PLU": "F0CF3005-4F3E-4B4D-9EB7-32B4DCE1A0D2",
    "Productos Disp.": "13BF4579-2370-4448-A0C6-3F867E0BE0A3",
    "Volver Preparar": "DEC524DA-56FE-4B86-815F-2C75B1BB9CBD",
    "Detalles Producto": "F87600DF-2224-448D-9E5F-0630B1CE2B2C",
    "Dtos. en Línea": "37760ED5-D867-4B34-AC4B-655C27D9191B",
    "Imp. Mínimo": "926568E6-AC18-4831-837F-11E983035389",
    "Configurar Menús": "1F5528BB-250B-4BDB-93E5-0A9F5F3DD6C9",
    "Pidiendo: Por Defecto": "13950A43-E575-44B8-ACA4-B3006A4ED02F",
    "Asignar Cliente": "39AE7B3C-83BD-4904-8FA7-8E12A8FF2DDF",
    "Ventas a Cliente": "5989BD8E-3B73-461B-B56B-442AB021196D",
    "Cambiar Comensales": "3BE28070-2151-4BE5-802E-BE23F849BC3D",
    "Cambiar Propietarios": "CE626EC3-8F35-4572-9C29-F0A08B04DEF4",
    "Recargo Servicio": "E920F2EB-848E-4BA1-8C5D-67C1EC239F49",
    "Cambiar Propina": "00C659B0-5235-47A3-ACE8-3F323EA244F2",
    "Completar Menú": "D007E3C7-3E65-4ADF-940C-E0E3C2881841",
    "Borrar Línea": "4B5FD1D9-B86B-4954-8C80-2FD612E4EEF1",
    "Invitar Línea": "FF2C06C1-6219-4455-872A-3D0AF324D84E",
    "Descuentos Ticket": "1B4B4F43-2FB1-4209-84C2-1FB30BA5A3A8",
    "Identificar Ticket": "3208E642-C860-4241-8F84-08CABB99C3E2",
    "Cancelar Ticket": "F074F325-4522-4C93-95EA-316F09724CEB",
    "Mover Ticket": "9EA742D8-3F03-4FE1-A130-FCA1AAA4F026",
    "Dividir Ticket": "7A96A1ED-2331-4D22-942C-1BD083B6816D",
    "Configurar Tarifas": "46AFB238-6736-42ED-BF62-C48755AA364F",
    "Nº de Pedido": "5232C142-714F-41D6-BA24-038BDC0A79A0",
    "Ver Reservas": "55956D5D-BA8D-4B16-927A-2EE915FFF4DE",
    "T. Regalo Anterior": "CF7EDD5A-C072-425A-BA50-DA59A8CF0FD5",
    "Ver Comanda": "B76DF138-9C30-497E-A24E-A8DD20D82759",
    "Ver Auditoría": "9DD6685F-846C-442C-A287-E71CDC9A4EFD",
    "Aplicar Promos.": "5F3E22CB-2B4E-46E6-BF05-168437E35183",
    "Establecer Tarifa": "109D1A70-2C7A-45C3-8124-CC3DE67DA464",
    "Ver Ticket": "FC577191-A91E-42AB-B356-6FABFE67936E",
    "Gestionar Pagos": "345E638C-0587-40A4-8183-FC396F52BA66",
    "Abrir Admin.": "65BBCF8F-E7A9-4C11-AE6D-518D5F0D83C2",
    "Marchar": "729D5BB5-6FE7-4FE2-9785-DAAAC57B8B28",
    "Imprimir Formación": "312577B3-7E04-4291-A17A-39C17901F810",
    "Estado del Sistema": "63F310FF-7719-4FC1-93D3-DB06449C88B6",
    "Gastos": "4D8FA874-4EBB-4FE7-9C5C-54FEAC2CF114",
    "Ingresos": "B8DC9BCA-4CEB-464F-B88B-7FB877937819",
    "Abrir cajón": "AC1F78D0-76D5-47AF-9192-D4691EBFB944",
    "Imprimir X": "1ED093E4-4EB7-4F28-8470-A071EB69F37C",
    "Imprimir Z": "86DB8AA7-451E-4DF8-90E1-BBDA92F0324E",
    "Cerrar Jornada": "D6B8D2B1-8B67-4540-9BFD-F053380CCA0F",
    "Pedidos Delivery": "0661116C-BA13-4063-ACF6-73F76F6B31E0",
    "Ver Disp.": "9B57AA77-7E1D-48AF-9208-053E6FD4BABD",
    "Añadir Fidelización": "170826AA-CC6A-4A8B-B41B-BFBE35B425E5",
    "Configuración Pedidos Web": "6CF7246B-257C-445F-9FB2-17FBE916DDEA",
    "Dar Cambio": "BF6ADBEA-FA4E-426E-9E78-39186202E3A0",
    "Entregar Comanda": "391614D2-32B6-47B3-93E5-B57822FF8F30",
    "Estado de Efectivo": "80EF3CF7-B923-437F-9B3B-85313A02F33A",
    "Estado Repartidores": "E9787D07-31B9-48B1-986F-181D1912FD5B",
    "Fichar": "04F99D74-8CE1-4825-9730-8AC526C43045",
    "Iniciar Ped. Tel.": "2CE80FB1-CD8B-431D-8046-84B0D00598D7"
}

botones_tpv_quick = [
    "Borrar Línea",
    "Añadir Nota",
    "Imprimir",
    "Preparar",
    "Marchar",
    "Pidiendo: Por Defecto",
    "Cambiar Mesa",
    "Pagos",
    "Cerrar Sesión"
]

botones_tpv_common = [
    "Asignar Usuario",
    "Dtos. en Línea",
    "Imp. Mínimo",
    "T. Regalo Anterior",
    "",
    "",
    "",
    "",
    "",
    "Minimizar",
    "Cambiar Orden Prep.",
    "Preparar Línea",
    "Marchar Línea",
    "",
    "Cambiar Añadidos",
    "Ajustar Ingredientes",
    "Editar Nº Asiento",
    "Siguiente Nº Asiento",
    "Buscar por Texto",
    "Detalles Producto",
    "Buscar Pedidos",
    "Buscar Albarán",
    "Buscar Facturas",
    "Tickets Abiertos",
    "Tickets en Mesa",
    "Imprimir: Siempre",
    "Preparación de Pedidos",
    "",
    "Propinas Pendientes",
    "",
    "Crear Pedido",
    "Crear Albarán",
    "Crear Devolución",
    "Crear Merma",
    "",
    "Crear Producto",
    "Buscar Producto",
    "Añadir Por Código",
    "PLU",
    "Productos Disp.",
    "",
    "",
    "",
    "",
    "Configurar Menús",
    "",
    "Asignar Cliente",
    "Ventas a Cliente",
    "Cambiar Comensales",
    "Cambiar Propietarios",
    "Recargo Servicio",
    "Cambiar Propina",
    "Completar Menú",
    "",
    "Invitar Línea",
    "Descuentos Ticket",
    "Identificar Ticket",
    "Cancelar Ticket",
    "Mover Ticket",
    "Dividir Ticket",
    "Configurar Tarifas",
    "Nº de Pedido",
    "Ver Reservas",
    "",
    "Ver Comanda",
    "Ver Auditoría",
    "Aplicar Promos.",
    "Establecer Tarifa",
    "Ver Ticket",
    "Gestionar Pagos",
    "Abrir Admin.",
    "",
    "Imprimir Formación",
    "Estado del Sistema",
    "Gastos",
    "Ingresos",
    "Abrir cajón",
    "Imprimir X",
    "Imprimir Z",
    "Cerrar Jornada"
]

botones_cmd_quick = [
    "Preparar",
    "Marchar",
    "Pidiendo: Por Defecto",
    "Ver Ticket"
]

botones_cmd_common = [
    "Pagos",
    "Volver Preparar",
    "Cerrar Jornada",
    "Pedidos Delivery",
    "Cancelar Ticket",
    "Mover Ticket",
    "Asignar Cliente",
    "Imprimir",
    "Abrir cajón",
    "Ver Comanda",
    "Aplicar Promos.",
    "Tickets en Mesa",
    "Dividir Ticket",
    "Identificar Ticket",
    "Cambiar Comensales",
    "Crear Albarán",
    "Establecer Tarifa",
    "Añadir Por Código",
    "Ver Auditoría",
    "Buscar Facturas",
    "Descuentos Ticket",
    "PLU"
]

"""
Paso 1: Leer la hoja de Datos adicionales del Excel de Entrada y obtener el número de TPVs y comanderas
"""

script_sql = open("sql/pos.sql", "w")

productos = []

with open("temp.txt", "r") as f:
    lineas = f.readlines()

project = lineas[0][:-1]

glb.datos_import = "projects/" + project + "/entrada.xlsx"
glb.datos_export = "projects/" + project + "/salida.xlsx"
glb.dir_imagenes = "imagenesAgora"

entrada = op.load_workbook(glb.datos_import)

hoja_datos = entrada["Datos adicionales"]

nTPV = int(hoja_datos["B8"].value) if hoja_datos["B8"].value is not None else 1
nCMD = int(hoja_datos["B9"].value) if hoja_datos["B9"].value is not None else 1

query = (
    "DECLARE @idImpresora INT;\n"
    "DECLARE @idTipoPreparacion INT;\n"
    "SET NOCOUNT ON;\n\n"
)

"""
Paso 2: Crear el grupo de puntos de venta 'TPVs' en la tabla [igtpos].[dbo].PosGroup si no hay 0 TPVs
y el grupo 'Comanderas' en la tabla [igtpos].[dbo].PosGroup si no hay 0 comanderas
"""

query += (
    "INSERT INTO [igtpos].[dbo].PosGroup\n"
    "SELECT NULL, 'TPVs', 1\n"
    "WHERE (SELECT COUNT(*) FROM [igtpos].[dbo].PosGroup WHERE [Name]='TPVs') = 0;\n\n"
)

if nCMD != 0:
    query += (
        "INSERT INTO [igtpos].[dbo].PosGroup\n"
        "SELECT NULL, 'Comanderas', 1\n"
        "WHERE (SELECT COUNT(*) FROM [igtpos].[dbo].PosGroup WHERE [Name]='Comanderas') = 0;\n\n"
    )

query += (
    "INSERT INTO [igtpos].[dbo].DisplayProfile\n"
    "SELECT 0, NULL, 'TPV', 1, 3, 0, 10, 8, 10, 3, 0\n"
    "WHERE (SELECT COUNT(*) FROM [igtpos].[dbo].DisplayProfile WHERE [Name]='TPV') = 0;\n\n"
)

query += (
    "INSERT INTO [igtpos].[dbo].DisplayProfile\n"
    "SELECT 1, NULL, 'CMD', 2, 3, 0, 0, 0, 0, 0, 1\n"
    "WHERE (SELECT COUNT(*) FROM [igtpos].[dbo].DisplayProfile WHERE [Name]='CMD') = 0;\n\n"
)

"""
Paso 3: Inserción de los puntos de venta en la tabla [igtpos].[dbo].Pos
"""

for i in range(nTPV):
    query += (
        "INSERT INTO [igtpos].[dbo].Pos\n"
        "SELECT 0,                                      --Type\n"
        "       NULL,                                   --DeletionDate\n"
        "       'TPV%s',                                --Name\n"
        "       NULL,                                   --BusinessDay\n"
        "       NULL,                                   --OpenDate\n"
        "       NULL,                                   --LastPartialBalanceDate\n"
        "       0.000,                                  --LastPartialAmount\n"
        "       0.000,                                  --InitialAmount\n"
        "       0.000,                                  --CurrentAmount\n"
        "       0.000,                                  --TipsPendingToExtract\n"
        "       NULL,                                   --OpenerUserId\n"
        "       NULL,                                   --WarehouseId\n"
        "       1,                                      --AllowCashTransactions\n"
        "       0,                                      --AfterCloseTicketAction\n"
        "       0,                                      --AfterPrintTicketAction\n"
        "       0,                                      --AfterPrepareTicketAction\n"
        "       0,                                      --AfterOpenCashdrawerAction\n"
        "       0,                                      --SoldProductTranslationPolicy\n"
        "       1,                                      --SearchMode\n"
        "       1,                                      --MakeBalanceOnCloseDay\n"
        "       1,                                      --PrintTotalBalanceOnCloseDay\n"
        "       0,                                      --UseFingerprintReader\n"
        "       0,                                      --AllowPrintTicketGif\n"
        "       0,                                      --TicketWhenPrint\n"
        "       0,                                      --TicketDefaultWhenPrint\n"
        "       'Ticket',                               --TicketPrinterName\n"
        "       1,                                      --TicketNumberOfCopies\n"
        "       1,                                      --TicketPrintTemplateId\n"
        "       0,                                      --BasicInvoiceWhenPrint\n"
        "       0,                                      --BasicInvoiceDefaultWhenPrint\n"
        "       'Ticket',                               --BasicInvoicePrinterName\n"
        "       1,                                      --BasicInvoiceNumberOfCopies\n"
        "       1,                                      --BasicInvoicePrintTemplateId\n"
        "       0,                                      --StandardInvoiceWhenPrint\n"
        "       0,                                      --StandardInvoiceDefaultWhenPrint\n"
        "       'Ticket',                               --StandardInvoicePrinterName\n"
        "       1,                                      --StandardInvoiceNumberOfCopies\n"
        "       1,                                      --StandardInvoicePrintTemplateId\n"
        "       0,                                      --DeliveryNoteWhenPrint\n"
        "       0,                                      --DeliveryNoteDefaultWhenPrint\n"
        "       'Ticket',                               --DeliveryNoteSettingsPrinterName\n"
        "       1,                                      --NoteSettingsNumberOfCopies\n"
        "       1,                                      --DeliveryNotePrintTemplateId\n"
        "       0,                                      --UseAutomaticPreparation\n"
        "       0,                                      --ShowTicketPreviewBeforePrint\n"
        "       0,                                      --WarnOnTicketCreatedByOtherUser\n"
        "       0,                                      --WarnOnTicketInUseByOtherUser\n"
        "       'Ticket',                               --CashdrawerPrinter\n"
        "       'Ticket',                               --CouponPrinter\n"
        "       0,                                      --ShowLastSaleInLoginView\n"
        "       0,                                      --ShowLastSaleInSelectLocationView\n"
        "       0,                                      --IncludeProductSales\n"
        "       0,                                      --IncludeUserSales\n"
        "       0,                                      --IncludeFamilySales\n"
        "       0,                                      --IncludeTableCompanionsSummary\n"
        "       0,                                      --IncludeDiscrepancyAmount\n"
        "       1,                                      --IncludeInvitationsByUser\n"
        "       0,                                      --IncludeSalesCenterSales\n"
        "       0,                                      --IncludeCancellationsByUser\n"
        "       0,                                      --IncludeProductReturns\n"
        "       0,                                      --IncludeUserPayments\n"
        "       0,                                      --IncludeVerificationCode\n"
        "       1,                                      --IncludePaymentTips\n"
        "       0,                                      --IncludePendingOperations\n"
        "       0,                                      --IncludeDeliveryPersonStatus\n"
        "       0,                                      --UseDeliveryNoteData\n"
        "       1,                                      --ActionDispayProfileId\n"
        "       0,                                      --UseCashControl\n"
        "       0,                                      --UseCashControlBlindOpening\n"
        "       NULL,                                   --CashControlSettingsField\n"
        "       0,                                      --UseCardProcessor\n"
        "       NULL,                                   --CardProcessorSettingsField\n"
        "       0,                                      --ScaleEnabled\n"
        "       'COM1',                                 --ScalePortName\n"
        "       9600,                                   --ScalePortBaudRate\n"
        "       8,                                      --ScalePortDataBits\n"
        "       0,                                      --ScalePortParity\n"
        "       1,                                      --ScalePortStopBits\n"
        "       0,                                      --ScalePortHandshake\n"
        "       1,                                      --GroupId\n"
        "       NULL,                                   --DefaultSaleCenterId\n"
        "       NULL,                                   --DefaultSaleCenterName\n"
        "       NULL,                                   --DefaultSaleLocationName\n"
        "       0,                                      --OnSelectLocationAction\n"
        "       0,                                      --DisplayType\n"
        "       '00000000-0000-0000-0000-000000000000', --ScreenImageId\n"
        "       0,                                      --ScreenShowLineNotes\n"
        "       'COM1',                                 --DisplayPortName\n"
        "       9600,                                   --DisplayPortBaudRate\n"
        "       8,                                      --DisplayPortDataBits\n"
        "       0,                                      --DisplayPortParity\n"
        "       1,                                      --DisplayPortStopBits\n"
        "       0,                                      --DisplayPortHandshake\n"
        "	    0,									    --DisplayScreenSaverEnabled\n"
	    "       0,									    --DisplayScreenSaverTimeToShowInSeconds\n"
	    "       '00000000-0000-0000-0000-000000000000',	--DisplayScreenSaverImageId\n"
	    "       0,									    --DisplayScreenSaverType\n"
	    "       NULL,									--DisplayScreenSaverUrl\n"
        "       1,                                      --EnableAutoCloseSession\n"
        "       60,                                     --SecondsToAutoCloseSession\n"
        "       NULL                                    --MasterId\n"
        "WHERE NOT EXISTS\n"
        "(\n"
        "\tSELECT 1\n"
        "\tFROM [igtpos].[dbo].Pos\n"
        "\tWHERE [Name] = 'TPV%s'\n"
        ");\n\n"
        % (i + 1 if nTPV > 1 else "", i + 1 if nTPV > 1 else "")
    )

for i in range(nCMD):
    query += (
        "INSERT INTO [igtpos].[dbo].Pos\n"
        "SELECT 1,                                      --Type\n"
        "       NULL,                                   --DeletionDate\n"
        "       'CMD%s',                                --Name\n"
        "       NULL,                                   --BusinessDay\n"
        "       NULL,                                   --OpenDate\n"
        "       NULL,                                   --LastPartialBalanceDate\n"
        "       0.000,                                  --LastPartialAmount\n"
        "       0.000,                                  --InitialAmount\n"
        "       0.000,                                  --CurrentAmount\n"
        "       0.000,                                  --TipsPendingToExtract\n"
        "       NULL,                                   --OpenerUserId\n"
        "       NULL,                                   --WarehouseId\n"
        "       0,                                      --AllowCashTransactions\n"
        "       0,                                      --AfterCloseTicketAction\n"
        "       0,                                      --AfterPrintTicketAction\n"
        "       0,                                      --AfterPrepareTicketAction\n"
        "       0,                                      --AfterOpenCashdrawerAction\n"
        "       0,                                      --SoldProductTranslationPolicy\n"
        "       1,                                      --SearchMode\n"
        "       1,                                      --MakeBalanceOnCloseDay\n"
        "       0,                                      --PrintTotalBalanceOnCloseDay\n"
        "       0,                                      --UseFingerprintReader\n"
        "       0,                                      --AllowPrintTicketGif\n"
        "       0,                                      --TicketWhenPrint\n"
        "       0,                                      --TicketDefaultWhenPrint\n"
        "       'Ticket',                               --TicketPrinterName\n"
        "       1,                                      --TicketNumberOfCopies\n"
        "       1,                                      --TicketPrintTemplateId\n"
        "       0,                                      --BasicInvoiceWhenPrint\n"
        "       0,                                      --BasicInvoiceDefaultWhenPrint\n"
        "       'Ticket',                               --BasicInvoicePrinterName\n"
        "       1,                                      --BasicInvoiceNumberOfCopies\n"
        "       1,                                      --BasicInvoicePrintTemplateId\n"
        "       0,                                      --StandardInvoiceWhenPrint\n"
        "       0,                                      --StandardInvoiceDefaultWhenPrint\n"
        "       'Ticket',                               --StandardInvoicePrinterName\n"
        "       1,                                      --StandardInvoiceNumberOfCopies\n"
        "       1,                                      --StandardInvoicePrintTemplateId\n"
        "       0,                                      --DeliveryNoteWhenPrint\n"
        "       0,                                      --DeliveryNoteDefaultWhenPrint\n"
        "       'Ticket',                               --DeliveryNoteSettingsPrinterName\n"
        "       1,                                      --NoteSettingsNumberOfCopies\n"
        "       1,                                      --DeliveryNotePrintTemplateId\n"
        "       0,                                      --UseAutomaticPreparation\n"
        "       0,                                      --ShowTicketPreviewBeforePrint\n"
        "       0,                                      --WarnOnTicketCreatedByOtherUser\n"
        "       0,                                      --WarnOnTicketInUseByOtherUser\n"
        "       'Ticket',                               --CashdrawerPrinter\n"
        "       'Ticket',                               --CouponPrinter\n"
        "       0,                                      --ShowLastSaleInLoginView\n"
        "       0,                                      --ShowLastSaleInSelectLocationView\n"
        "       0,                                      --IncludeProductSales\n"
        "       0,                                      --IncludeUserSales\n"
        "       0,                                      --IncludeFamilySales\n"
        "       0,                                      --IncludeTableCompanionsSummary\n"
        "       0,                                      --IncludeDiscrepancyAmount\n"
        "       1,                                      --IncludeInvitationsByUser\n"
        "       0,                                      --IncludeSalesCenterSales\n"
        "       0,                                      --IncludeCancellationsByUser\n"
        "       0,                                      --IncludeProductReturns\n"
        "       0,                                      --IncludeUserPayments\n"
        "       0,                                      --IncludeVerificationCode\n"
        "       1,                                      --IncludePaymentTips\n"
        "       0,                                      --IncludePendingOperations\n"
        "       0,                                      --IncludeDeliveryPersonStatus\n"
        "       0,                                      --UseDeliveryNoteData\n"
        "       2,                                      --ActionDispayProfileId\n"
        "       NULL,                                   --UseCashControl\n"
        "       NULL,                                   --UseCashControlBlindOpening\n"
        "       NULL,                                   --CashControlSettingsField\n"
        "       0,                                      --UseCardProcessor\n"
        "       NULL,                                   --CardProcessorSettingsField\n"
        "       NULL,                                   --ScaleEnabled\n"
        "       NULL,                                   --ScalePortName\n"
        "       NULL,                                   --ScalePortBaudRate\n"
        "       NULL,                                   --ScalePortDataBits\n"
        "       NULL,                                   --ScalePortParity\n"
        "       NULL,                                   --ScalePortStopBits\n"
        "       NULL,                                   --ScalePortHandshake\n"
        "       2,                                      --GroupId\n"
        "       NULL,                                   --DefaultSaleCenterId\n"
        "       NULL,                                   --DefaultSaleCenterName\n"
        "       NULL,                                   --DefaultSaleLocationName\n"
        "       0,                                      --OnSelectLocationAction\n"
        "       NULL,                                   --DisplayType\n"
        "       '00000000-0000-0000-0000-000000000000', --ScreenImageId\n"
        "       NULL,                                   --ScreenShowLineNotes\n"
        "       NULL,                                   --DisplayPortName\n"
        "       NULL,                                   --DisplayPortBaudRate\n"
        "       NULL,                                   --DisplayPortDataBits\n"
        "       NULL,                                   --DisplayPortParity\n"
        "       NULL,                                   --DisplayPortBits\n"
        "       NULL,                                   --DisplayPortHandshake\n"
        "	    0,									    --DisplayScreenSaverEnabled\n"
	    "       0,									    --DisplayScreenSaverTimeToShowInSeconds\n"
	    "       '00000000-0000-0000-0000-000000000000',	--DisplayScreenSaverImageId\n"
	    "       0,									    --DisplayScreenSaverType\n"
	    "       NULL,									--DisplayScreenSaverUrl\n"
        "       1,                                      --EnableAutoCloseSession\n"
        "       60,                                     --SecondsToAutoCloseSession\n"
        "       NULL                                    --MasterId\n"
        "WHERE NOT EXISTS\n"
        "(\n"
        "\tSELECT 1\n"
        "\tFROM [igtpos].[dbo].Pos\n"
        "\tWHERE [Name] = 'CMD%s'\n"
        ");\n\n"
        % (i + 1 if nCMD > 1 else "", i + 1 if nCMD > 1 else "")
    )

"""
Paso 4: Establecer la configuración de Botones
"""

for i, boton in enumerate(botones_tpv_quick):
    query += (
        "INSERT INTO [igtpos].[dbo].DisplayProfileQuickAction\n"
        "SELECT 1, '%s', %s\n"
        "WHERE NOT EXISTS\n"
        "(\n"
        "\tSELECT 1\n"
        "\tFROM [igtpos].[dbo].DisplayProfileQuickAction"
        "\tWHERE DisplayProfileId = 1\n"
        "\tAND ActionButtonId = '%s'\n"
        "\tAND Position = %s\n"
        ");\n\n"
        % (mapa_botones[botones_tpv_quick[i]], str(i), mapa_botones[botones_tpv_quick[i]], str(i))
    )

if nCMD != 0:
    for i, boton in enumerate(botones_cmd_quick):
        query += (
            "INSERT INTO [igtpos].[dbo].DisplayProfileQuickAction\n"
            "SELECT 2, '%s', %s\n"
            "WHERE NOT EXISTS\n"
            "(\n"
            "\tSELECT 1\n"
            "\tFROM [igtpos].[dbo].DisplayProfileQuickAction\n"
            "\tWHERE DisplayProfileId = 2\n"
            "\tAND ActionButtonId = '%s'\n"
            "\tAND Position = %s\n"
            ");\n\n"
            % (mapa_botones[botones_cmd_quick[i]], str(i), mapa_botones[botones_cmd_quick[i]], str(i))
        )

for i, boton in enumerate(botones_tpv_common):
    query += (
        "INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction\n"
        "SELECT 1, '%s', %s\n"
        "WHERE NOT EXISTS\n"
        "(\n"
        "\tSELECT 1\n"
        "\tFROM [igtpos].[dbo].DisplayProfileCommonAction\n"
        "\tWHERE DisplayProfileId = 1\n"
        "\tAND ActionButtonId = '%s'\n"
        "\tAND Position = %s\n"
        ");\n\n"
        % (mapa_botones[botones_tpv_common[i]], str(i), mapa_botones[botones_tpv_common[i]], str(i))
    )

if nCMD != 0:
    for i, boton in enumerate(botones_cmd_common):
        query += (
            "INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction\n"
            "SELECT 2, '%s', %s\n"
            "WHERE NOT EXISTS\n"
            "(\n"
            "\tSELECT 1\n"
            "\tFROM [igtpos].[dbo].DisplayProfileCommonAction"
            "\tWHERE DisplayProfileId = 2\n"
            "\tAND ActionButtonId = '%s'\n"
            "\tAND Position = %s\n"
            ");\n\n"
            % (mapa_botones[botones_cmd_common[i]], str(i), mapa_botones[botones_cmd_common[i]], str(i))
        )

"""
Paso 5: Asignación de impresoras de preparación
"""

for i in range(nTPV + nCMD):
    query += (
        "SET @idTipoPreparacion = NULL;\n"
        "SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Barra';\n\n"
        ""
        "IF @idTipoPreparacion IS NOT NULL\n"
        "\tINSERT INTO [igtpos].[dbo].KitchenPrinter\n"
        "\tSELECT 'Barra', 'Barra', 1, 1, 0, 1, 1, 1, 0, 1, NULL, %d\n"
        "\tWHERE NOT EXISTS\n"
        "\t(\n"
        "\t\tSELECT 1\n"
        "\t\tFROM [igtpos].[dbo].KitchenPrinter\n"
        "\t\tWHERE [Name] = 'Barra'\n"
        "\t\tAND PosId = %d\n"
        "\t);\n\n"
        % (i + 1, i + 1)
    )

    query += (
        "SET @idTipoPreparacion = NULL;\n"
        "SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Cocina';\n\n"
        ""
        "IF @idTipoPreparacion IS NOT NULL\n"
        "\tINSERT INTO [igtpos].[dbo].KitchenPrinter\n"
        "\tSELECT 'Cocina', 'Cocina', 1, 1, 0, 1, 1, 1, 0, 1, NULL, %d\n"
        "\tWHERE NOT EXISTS\n"
        "\t(\n"
        "\t\tSELECT 1\n"
        "\t\tFROM [igtpos].[dbo].KitchenPrinter\n"
        "\t\tWHERE [Name] = 'Cocina'\n"
        "\t\tAND PosId = %d\n"
        "\t);\n\n"
        % (i + 1, i + 1)
    )

    query += (
        "SELECT @idImpresora = Id FROM [igtpos].[dbo].KitchenPrinter WHERE [Name] = 'Barra' AND PosId = %d;\n"
        "SET @idTipoPreparacion = NULL;\n"
        "SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Barra';\n\n"
        ""
        "IF @idTipoPreparacion IS NOT NULL\n"
        "\tINSERT INTO [igtpos].[dbo].KitchenPrinterPreparationType\n"
        "\tSELECT @idImpresora, 1\n"
        "\tWHERE NOT EXISTS\n"
        "\t(\n"
        "\t\tSELECT 1\n"
        "\t\tFROM [igtpos].[dbo].KitchenPrinterPreparationType\n"
        "\t\tWHERE KitchenPrinterId = @idImpresora\n"
        "\t\tAND PreparationTypeId = 1\n"
        "\t);\n\n"
        % (i + 1)
    )

    query += (
        "SELECT @idImpresora = Id FROM [igtpos].[dbo].KitchenPrinter WHERE [Name] = 'Cocina' AND PosId = %d;\n"
        "SET @idTipoPreparacion = NULL;\n"
        "SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Cocina';\n\n"
        ""
        "IF @idTipoPreparacion IS NOT NULL\n"
        "\tINSERT INTO [igtpos].[dbo].KitchenPrinterPreparationType\n"
        "\tSELECT @idImpresora, 2\n"
        "\tWHERE NOT EXISTS\n"
        "\t(\n"
        "\t\tSELECT 1\n"
        "\t\tFROM [igtpos].[dbo].KitchenPrinterPreparationType\n"
        "\t\tWHERE KitchenPrinterId = @idImpresora\n"
        "\t\tAND PreparationTypeId = 2\n"
        "\t);\n\n"
        % (i + 1)
    )

query += (
    ""
    "-- Punto de venta por defecto\n"
    ""
    "UPDATE [igtpos].[dbo].Pos\n"
    "SET    PrintTotalBalanceOnCloseDay = 1,\n"
    "       TicketPrinterName = 'Ticket',\n"
    "       BasicInvoicePrinterName = 'Ticket',\n"
    "       StandardInvoicePrinterName = 'Ticket',\n"
    "       DeliveryNoteSettingsPrinterName = 'Ticket',\n"
    "       CashdrawerPrinter = 'Ticket',\n"
    "       CouponPrinter = 'Ticket',\n"
    "       IncludeInvitationsByUser = 1,\n"
    "       IncludePaymentTips = 1,\n"
    "       EnableAutoCloseSession = 1\n"
    "WHERE Id = 1;"
)

if nTPV > 1:
    query += (
        "UPDATE [igtpos].[dbo].Pos\n"
        "SET    [Name] = 'TPV1'\n"
        "WHERE Id = 1;"
    )

script_sql.write(query)
script_sql.close()
