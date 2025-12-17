DECLARE @idImpresora INT;
DECLARE @idTipoPreparacion INT;
SET NOCOUNT ON;

INSERT INTO [igtpos].[dbo].PosGroup
SELECT NULL, 'TPVs', 1
WHERE (SELECT COUNT(*) FROM [igtpos].[dbo].PosGroup WHERE [Name]='TPVs') = 0;

INSERT INTO [igtpos].[dbo].PosGroup
SELECT NULL, 'Comanderas', 1
WHERE (SELECT COUNT(*) FROM [igtpos].[dbo].PosGroup WHERE [Name]='Comanderas') = 0;

INSERT INTO [igtpos].[dbo].DisplayProfile
SELECT 0, NULL, 'TPV', 1, 3, 0, 10, 8, 10, 3, 0
WHERE (SELECT COUNT(*) FROM [igtpos].[dbo].DisplayProfile WHERE [Name]='TPV') = 0;

INSERT INTO [igtpos].[dbo].DisplayProfile
SELECT 1, NULL, 'CMD', 2, 3, 0, 0, 0, 0, 0, 1
WHERE (SELECT COUNT(*) FROM [igtpos].[dbo].DisplayProfile WHERE [Name]='CMD') = 0;

INSERT INTO [igtpos].[dbo].Pos
SELECT 0,                                      --Type
       NULL,                                   --DeletionDate
       'TPV1',                                --Name
       NULL,                                   --BusinessDay
       NULL,                                   --OpenDate
       NULL,                                   --LastPartialBalanceDate
       0.000,                                  --LastPartialAmount
       0.000,                                  --InitialAmount
       0.000,                                  --CurrentAmount
       0.000,                                  --TipsPendingToExtract
       NULL,                                   --OpenerUserId
       NULL,                                   --WarehouseId
       1,                                      --AllowCashTransactions
       0,                                      --AfterCloseTicketAction
       0,                                      --AfterPrintTicketAction
       0,                                      --AfterPrepareTicketAction
       0,                                      --AfterOpenCashdrawerAction
       0,                                      --SoldProductTranslationPolicy
       1,                                      --SearchMode
       1,                                      --MakeBalanceOnCloseDay
       1,                                      --PrintTotalBalanceOnCloseDay
       0,                                      --UseFingerprintReader
       0,                                      --AllowPrintTicketGif
       0,                                      --TicketWhenPrint
       0,                                      --TicketDefaultWhenPrint
       'Ticket',                               --TicketPrinterName
       1,                                      --TicketNumberOfCopies
       1,                                      --TicketPrintTemplateId
       0,                                      --BasicInvoiceWhenPrint
       0,                                      --BasicInvoiceDefaultWhenPrint
       'Ticket',                               --BasicInvoicePrinterName
       1,                                      --BasicInvoiceNumberOfCopies
       1,                                      --BasicInvoicePrintTemplateId
       0,                                      --StandardInvoiceWhenPrint
       0,                                      --StandardInvoiceDefaultWhenPrint
       'Ticket',                               --StandardInvoicePrinterName
       1,                                      --StandardInvoiceNumberOfCopies
       1,                                      --StandardInvoicePrintTemplateId
       0,                                      --DeliveryNoteWhenPrint
       0,                                      --DeliveryNoteDefaultWhenPrint
       'Ticket',                               --DeliveryNoteSettingsPrinterName
       1,                                      --NoteSettingsNumberOfCopies
       1,                                      --DeliveryNotePrintTemplateId
       0,                                      --UseAutomaticPreparation
       0,                                      --ShowTicketPreviewBeforePrint
       0,                                      --WarnOnTicketCreatedByOtherUser
       0,                                      --WarnOnTicketInUseByOtherUser
       'Ticket',                               --CashdrawerPrinter
       'Ticket',                               --CouponPrinter
       0,                                      --ShowLastSaleInLoginView
       0,                                      --ShowLastSaleInSelectLocationView
       0,                                      --IncludeProductSales
       0,                                      --IncludeUserSales
       0,                                      --IncludeFamilySales
       0,                                      --IncludeTableCompanionsSummary
       0,                                      --IncludeDiscrepancyAmount
       1,                                      --IncludeInvitationsByUser
       0,                                      --IncludeSalesCenterSales
       0,                                      --IncludeCancellationsByUser
       0,                                      --IncludeProductReturns
       0,                                      --IncludeUserPayments
       0,                                      --IncludeVerificationCode
       1,                                      --IncludePaymentTips
       0,                                      --IncludePendingOperations
       0,                                      --IncludeDeliveryPersonStatus
       0,                                      --UseDeliveryNoteData
       1,                                      --ActionDispayProfileId
       0,                                      --UseCashControl
       0,                                      --UseCashControlBlindOpening
       NULL,                                   --CashControlSettingsField
       0,                                      --UseCardProcessor
       NULL,                                   --CardProcessorSettingsField
       0,                                      --ScaleEnabled
       'COM1',                                 --ScalePortName
       9600,                                   --ScalePortBaudRate
       8,                                      --ScalePortDataBits
       0,                                      --ScalePortParity
       1,                                      --ScalePortStopBits
       0,                                      --ScalePortHandshake
       1,                                      --GroupId
       NULL,                                   --DefaultSaleCenterId
       NULL,                                   --DefaultSaleCenterName
       NULL,                                   --DefaultSaleLocationName
       0,                                      --OnSelectLocationAction
       0,                                      --DisplayType
       '00000000-0000-0000-0000-000000000000', --ScreenImageId
       0,                                      --ScreenShowLineNotes
       'COM1',                                 --DisplayPortName
       9600,                                   --DisplayPortBaudRate
       8,                                      --DisplayPortDataBits
       0,                                      --DisplayPortParity
       1,                                      --DisplayPortStopBits
       0,                                      --DisplayPortHandshake
	    0,									    --DisplayScreenSaverEnabled
       0,									    --DisplayScreenSaverTimeToShowInSeconds
       '00000000-0000-0000-0000-000000000000',	--DisplayScreenSaverImageId
       0,									    --DisplayScreenSaverType
       NULL,									--DisplayScreenSaverUrl
       1,                                      --EnableAutoCloseSession
       60,                                     --SecondsToAutoCloseSession
       NULL                                    --MasterId
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Pos
	WHERE [Name] = 'TPV1'
);

INSERT INTO [igtpos].[dbo].Pos
SELECT 0,                                      --Type
       NULL,                                   --DeletionDate
       'TPV2',                                --Name
       NULL,                                   --BusinessDay
       NULL,                                   --OpenDate
       NULL,                                   --LastPartialBalanceDate
       0.000,                                  --LastPartialAmount
       0.000,                                  --InitialAmount
       0.000,                                  --CurrentAmount
       0.000,                                  --TipsPendingToExtract
       NULL,                                   --OpenerUserId
       NULL,                                   --WarehouseId
       1,                                      --AllowCashTransactions
       0,                                      --AfterCloseTicketAction
       0,                                      --AfterPrintTicketAction
       0,                                      --AfterPrepareTicketAction
       0,                                      --AfterOpenCashdrawerAction
       0,                                      --SoldProductTranslationPolicy
       1,                                      --SearchMode
       1,                                      --MakeBalanceOnCloseDay
       1,                                      --PrintTotalBalanceOnCloseDay
       0,                                      --UseFingerprintReader
       0,                                      --AllowPrintTicketGif
       0,                                      --TicketWhenPrint
       0,                                      --TicketDefaultWhenPrint
       'Ticket',                               --TicketPrinterName
       1,                                      --TicketNumberOfCopies
       1,                                      --TicketPrintTemplateId
       0,                                      --BasicInvoiceWhenPrint
       0,                                      --BasicInvoiceDefaultWhenPrint
       'Ticket',                               --BasicInvoicePrinterName
       1,                                      --BasicInvoiceNumberOfCopies
       1,                                      --BasicInvoicePrintTemplateId
       0,                                      --StandardInvoiceWhenPrint
       0,                                      --StandardInvoiceDefaultWhenPrint
       'Ticket',                               --StandardInvoicePrinterName
       1,                                      --StandardInvoiceNumberOfCopies
       1,                                      --StandardInvoicePrintTemplateId
       0,                                      --DeliveryNoteWhenPrint
       0,                                      --DeliveryNoteDefaultWhenPrint
       'Ticket',                               --DeliveryNoteSettingsPrinterName
       1,                                      --NoteSettingsNumberOfCopies
       1,                                      --DeliveryNotePrintTemplateId
       0,                                      --UseAutomaticPreparation
       0,                                      --ShowTicketPreviewBeforePrint
       0,                                      --WarnOnTicketCreatedByOtherUser
       0,                                      --WarnOnTicketInUseByOtherUser
       'Ticket',                               --CashdrawerPrinter
       'Ticket',                               --CouponPrinter
       0,                                      --ShowLastSaleInLoginView
       0,                                      --ShowLastSaleInSelectLocationView
       0,                                      --IncludeProductSales
       0,                                      --IncludeUserSales
       0,                                      --IncludeFamilySales
       0,                                      --IncludeTableCompanionsSummary
       0,                                      --IncludeDiscrepancyAmount
       1,                                      --IncludeInvitationsByUser
       0,                                      --IncludeSalesCenterSales
       0,                                      --IncludeCancellationsByUser
       0,                                      --IncludeProductReturns
       0,                                      --IncludeUserPayments
       0,                                      --IncludeVerificationCode
       1,                                      --IncludePaymentTips
       0,                                      --IncludePendingOperations
       0,                                      --IncludeDeliveryPersonStatus
       0,                                      --UseDeliveryNoteData
       1,                                      --ActionDispayProfileId
       0,                                      --UseCashControl
       0,                                      --UseCashControlBlindOpening
       NULL,                                   --CashControlSettingsField
       0,                                      --UseCardProcessor
       NULL,                                   --CardProcessorSettingsField
       0,                                      --ScaleEnabled
       'COM1',                                 --ScalePortName
       9600,                                   --ScalePortBaudRate
       8,                                      --ScalePortDataBits
       0,                                      --ScalePortParity
       1,                                      --ScalePortStopBits
       0,                                      --ScalePortHandshake
       1,                                      --GroupId
       NULL,                                   --DefaultSaleCenterId
       NULL,                                   --DefaultSaleCenterName
       NULL,                                   --DefaultSaleLocationName
       0,                                      --OnSelectLocationAction
       0,                                      --DisplayType
       '00000000-0000-0000-0000-000000000000', --ScreenImageId
       0,                                      --ScreenShowLineNotes
       'COM1',                                 --DisplayPortName
       9600,                                   --DisplayPortBaudRate
       8,                                      --DisplayPortDataBits
       0,                                      --DisplayPortParity
       1,                                      --DisplayPortStopBits
       0,                                      --DisplayPortHandshake
	    0,									    --DisplayScreenSaverEnabled
       0,									    --DisplayScreenSaverTimeToShowInSeconds
       '00000000-0000-0000-0000-000000000000',	--DisplayScreenSaverImageId
       0,									    --DisplayScreenSaverType
       NULL,									--DisplayScreenSaverUrl
       1,                                      --EnableAutoCloseSession
       60,                                     --SecondsToAutoCloseSession
       NULL                                    --MasterId
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Pos
	WHERE [Name] = 'TPV2'
);

INSERT INTO [igtpos].[dbo].Pos
SELECT 0,                                      --Type
       NULL,                                   --DeletionDate
       'TPV3',                                --Name
       NULL,                                   --BusinessDay
       NULL,                                   --OpenDate
       NULL,                                   --LastPartialBalanceDate
       0.000,                                  --LastPartialAmount
       0.000,                                  --InitialAmount
       0.000,                                  --CurrentAmount
       0.000,                                  --TipsPendingToExtract
       NULL,                                   --OpenerUserId
       NULL,                                   --WarehouseId
       1,                                      --AllowCashTransactions
       0,                                      --AfterCloseTicketAction
       0,                                      --AfterPrintTicketAction
       0,                                      --AfterPrepareTicketAction
       0,                                      --AfterOpenCashdrawerAction
       0,                                      --SoldProductTranslationPolicy
       1,                                      --SearchMode
       1,                                      --MakeBalanceOnCloseDay
       1,                                      --PrintTotalBalanceOnCloseDay
       0,                                      --UseFingerprintReader
       0,                                      --AllowPrintTicketGif
       0,                                      --TicketWhenPrint
       0,                                      --TicketDefaultWhenPrint
       'Ticket',                               --TicketPrinterName
       1,                                      --TicketNumberOfCopies
       1,                                      --TicketPrintTemplateId
       0,                                      --BasicInvoiceWhenPrint
       0,                                      --BasicInvoiceDefaultWhenPrint
       'Ticket',                               --BasicInvoicePrinterName
       1,                                      --BasicInvoiceNumberOfCopies
       1,                                      --BasicInvoicePrintTemplateId
       0,                                      --StandardInvoiceWhenPrint
       0,                                      --StandardInvoiceDefaultWhenPrint
       'Ticket',                               --StandardInvoicePrinterName
       1,                                      --StandardInvoiceNumberOfCopies
       1,                                      --StandardInvoicePrintTemplateId
       0,                                      --DeliveryNoteWhenPrint
       0,                                      --DeliveryNoteDefaultWhenPrint
       'Ticket',                               --DeliveryNoteSettingsPrinterName
       1,                                      --NoteSettingsNumberOfCopies
       1,                                      --DeliveryNotePrintTemplateId
       0,                                      --UseAutomaticPreparation
       0,                                      --ShowTicketPreviewBeforePrint
       0,                                      --WarnOnTicketCreatedByOtherUser
       0,                                      --WarnOnTicketInUseByOtherUser
       'Ticket',                               --CashdrawerPrinter
       'Ticket',                               --CouponPrinter
       0,                                      --ShowLastSaleInLoginView
       0,                                      --ShowLastSaleInSelectLocationView
       0,                                      --IncludeProductSales
       0,                                      --IncludeUserSales
       0,                                      --IncludeFamilySales
       0,                                      --IncludeTableCompanionsSummary
       0,                                      --IncludeDiscrepancyAmount
       1,                                      --IncludeInvitationsByUser
       0,                                      --IncludeSalesCenterSales
       0,                                      --IncludeCancellationsByUser
       0,                                      --IncludeProductReturns
       0,                                      --IncludeUserPayments
       0,                                      --IncludeVerificationCode
       1,                                      --IncludePaymentTips
       0,                                      --IncludePendingOperations
       0,                                      --IncludeDeliveryPersonStatus
       0,                                      --UseDeliveryNoteData
       1,                                      --ActionDispayProfileId
       0,                                      --UseCashControl
       0,                                      --UseCashControlBlindOpening
       NULL,                                   --CashControlSettingsField
       0,                                      --UseCardProcessor
       NULL,                                   --CardProcessorSettingsField
       0,                                      --ScaleEnabled
       'COM1',                                 --ScalePortName
       9600,                                   --ScalePortBaudRate
       8,                                      --ScalePortDataBits
       0,                                      --ScalePortParity
       1,                                      --ScalePortStopBits
       0,                                      --ScalePortHandshake
       1,                                      --GroupId
       NULL,                                   --DefaultSaleCenterId
       NULL,                                   --DefaultSaleCenterName
       NULL,                                   --DefaultSaleLocationName
       0,                                      --OnSelectLocationAction
       0,                                      --DisplayType
       '00000000-0000-0000-0000-000000000000', --ScreenImageId
       0,                                      --ScreenShowLineNotes
       'COM1',                                 --DisplayPortName
       9600,                                   --DisplayPortBaudRate
       8,                                      --DisplayPortDataBits
       0,                                      --DisplayPortParity
       1,                                      --DisplayPortStopBits
       0,                                      --DisplayPortHandshake
	    0,									    --DisplayScreenSaverEnabled
       0,									    --DisplayScreenSaverTimeToShowInSeconds
       '00000000-0000-0000-0000-000000000000',	--DisplayScreenSaverImageId
       0,									    --DisplayScreenSaverType
       NULL,									--DisplayScreenSaverUrl
       1,                                      --EnableAutoCloseSession
       60,                                     --SecondsToAutoCloseSession
       NULL                                    --MasterId
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Pos
	WHERE [Name] = 'TPV3'
);

INSERT INTO [igtpos].[dbo].Pos
SELECT 1,          --Type
       NULL,       --DeletionDate
       'CMD1',    --Name
       NULL,       --BusinessDay
       NULL,       --OpenDate
       NULL,       --LastPartialBalanceDate
       0.000,      --LastPartialAmount
       0.000,      --InitialAmount
       0.000,      --CurrentAmount
       0.000,      --TipsPendingToExtract
       NULL,       --OpenerUserId
       NULL,       --WarehouseId
       0,          --AllowCashTransactions
       0,          --AfterCloseTicketAction
       0,          --AfterPrintTicketAction
       0,          --AfterPrepareTicketAction
       0,          --AfterOpenCashdrawerAction
       0,          --SoldProductTranslationPolicy
       1,          --SearchMode
       1,          --MakeBalanceOnCloseDay
       0,          --PrintTotalBalanceOnCloseDay
       0,           --UseFingerprintReader
       0,          --AllowPrintTicketGif
       0,          --TicketWhenPrint
       0,          --TicketDefaultWhenPrint
       'Ticket',   --TicketPrinterName
       1,          --TicketNumberOfCopies
       1,          --TicketPrintTemplateId
       0,          --BasicInvoiceWhenPrint
       0,          --BasicInvoiceDefaultWhenPrint
       'Ticket',   --BasicInvoicePrinterName
       1,          --BasicInvoiceNumberOfCopies
       1,          --BasicInvoicePrintTemplateId
       0,          --StandardInvoiceWhenPrint
       0,          --StandardInvoiceDefaultWhenPrint
       'Ticket',   --StandardInvoicePrinterName
       1,          --StandardInvoiceNumberOfCopies
       1,          --StandardInvoicePrintTemplateId
       0,          --DeliveryNoteWhenPrint
       0,          --DeliveryNoteDefaultWhenPrint
       'Ticket',   --DeliveryNoteSettingsPrinterName
       1,          --NoteSettingsNumberOfCopies
       1,          --DeliveryNotePrintTemplateId
       0,          --UseAutomaticPreparation
       0,          --ShowTicketPreviewBeforePrint
       0,          --WarnOnTicketCreatedByOtherUser
       0,          --WarnOnTicketInUseByOtherUser
       'Ticket',   --CashdrawerPrinter
       'Ticket',   --CouponPrinter
       0,          --ShowLastSaleInLoginView
       0,          --ShowLastSaleInSelectLocationView
       0,          --IncludeProductSales
       0,          --IncludeUserSales
       0,          --IncludeFamilySales
       0,          --IncludeTableCompanionsSummary
       0,          --IncludeDiscrepancyAmount
       1,          --IncludeInvitationsByUser
       0,          --IncludeSalesCenterSales
       0,          --IncludeCancellationsByUser
       0,          --IncludeProductReturns
       0,          --IncludeUserPayments
       0,          --IncludeVerificationCode
       1,          --IncludePaymentTips
       0,          --IncludePendingOperations
       0,          --IncludeDeliveryPersonStatus
       0,          --UseDeliveryNoteData
       2,          --ActionDispayProfileId
       NULL,        --UseCashControl
       NULL,       --UseCashControlBlindOpening
       NULL,       --CashControlSettingsField
       0,          --UseCardProcessor
       NULL,       --CardProcessorSettingsField
       NULL,       --ScaleEnabled
       NULL,       --ScalePortName
       NULL,       --ScalePortBaudRate
       NULL,       --ScalePortDataBits
       NULL,       --ScalePortParity
       NULL,       --ScalePortStopBits
       NULL,       --ScalePortHandshake
       2,          --GroupId
       NULL,       --DefaultSaleCenterId
       NULL,       --DefaultSaleCenterName
       NULL,       --DefaultSaleLocationName
       0,          --OnSelectLocationAction
       NULL,       --DisplayType
       '00000000-0000-0000-0000-000000000000',       --ScreenImageId
       NULL,       --ScreenShowLineNotes
       NULL,       --DisplayPortName
       NULL,       --DisplayPortBaudRate
       NULL,       --DisplayPortDataBits
       NULL,       --DisplayPortParity
       NULL,       --DisplayPortBits
       NULL,       --DisplayPortHandshake
	    0,									    --DisplayScreenSaverEnabled
       0,									    --DisplayScreenSaverTimeToShowInSeconds
       '00000000-0000-0000-0000-000000000000',	--DisplayScreenSaverImageId
       0,									    --DisplayScreenSaverType
       NULL,									--DisplayScreenSaverUrl
       0,          --EnableAutoCloseSession
       60,         --SecondsToAutoCloseSession
       NULL        --MasterId
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Pos
	WHERE [Name] = 'CMD1'
);

INSERT INTO [igtpos].[dbo].Pos
SELECT 1,          --Type
       NULL,       --DeletionDate
       'CMD2',    --Name
       NULL,       --BusinessDay
       NULL,       --OpenDate
       NULL,       --LastPartialBalanceDate
       0.000,      --LastPartialAmount
       0.000,      --InitialAmount
       0.000,      --CurrentAmount
       0.000,      --TipsPendingToExtract
       NULL,       --OpenerUserId
       NULL,       --WarehouseId
       0,          --AllowCashTransactions
       0,          --AfterCloseTicketAction
       0,          --AfterPrintTicketAction
       0,          --AfterPrepareTicketAction
       0,          --AfterOpenCashdrawerAction
       0,          --SoldProductTranslationPolicy
       1,          --SearchMode
       1,          --MakeBalanceOnCloseDay
       0,          --PrintTotalBalanceOnCloseDay
       0,           --UseFingerprintReader
       0,          --AllowPrintTicketGif
       0,          --TicketWhenPrint
       0,          --TicketDefaultWhenPrint
       'Ticket',   --TicketPrinterName
       1,          --TicketNumberOfCopies
       1,          --TicketPrintTemplateId
       0,          --BasicInvoiceWhenPrint
       0,          --BasicInvoiceDefaultWhenPrint
       'Ticket',   --BasicInvoicePrinterName
       1,          --BasicInvoiceNumberOfCopies
       1,          --BasicInvoicePrintTemplateId
       0,          --StandardInvoiceWhenPrint
       0,          --StandardInvoiceDefaultWhenPrint
       'Ticket',   --StandardInvoicePrinterName
       1,          --StandardInvoiceNumberOfCopies
       1,          --StandardInvoicePrintTemplateId
       0,          --DeliveryNoteWhenPrint
       0,          --DeliveryNoteDefaultWhenPrint
       'Ticket',   --DeliveryNoteSettingsPrinterName
       1,          --NoteSettingsNumberOfCopies
       1,          --DeliveryNotePrintTemplateId
       0,          --UseAutomaticPreparation
       0,          --ShowTicketPreviewBeforePrint
       0,          --WarnOnTicketCreatedByOtherUser
       0,          --WarnOnTicketInUseByOtherUser
       'Ticket',   --CashdrawerPrinter
       'Ticket',   --CouponPrinter
       0,          --ShowLastSaleInLoginView
       0,          --ShowLastSaleInSelectLocationView
       0,          --IncludeProductSales
       0,          --IncludeUserSales
       0,          --IncludeFamilySales
       0,          --IncludeTableCompanionsSummary
       0,          --IncludeDiscrepancyAmount
       1,          --IncludeInvitationsByUser
       0,          --IncludeSalesCenterSales
       0,          --IncludeCancellationsByUser
       0,          --IncludeProductReturns
       0,          --IncludeUserPayments
       0,          --IncludeVerificationCode
       1,          --IncludePaymentTips
       0,          --IncludePendingOperations
       0,          --IncludeDeliveryPersonStatus
       0,          --UseDeliveryNoteData
       2,          --ActionDispayProfileId
       NULL,        --UseCashControl
       NULL,       --UseCashControlBlindOpening
       NULL,       --CashControlSettingsField
       0,          --UseCardProcessor
       NULL,       --CardProcessorSettingsField
       NULL,       --ScaleEnabled
       NULL,       --ScalePortName
       NULL,       --ScalePortBaudRate
       NULL,       --ScalePortDataBits
       NULL,       --ScalePortParity
       NULL,       --ScalePortStopBits
       NULL,       --ScalePortHandshake
       2,          --GroupId
       NULL,       --DefaultSaleCenterId
       NULL,       --DefaultSaleCenterName
       NULL,       --DefaultSaleLocationName
       0,          --OnSelectLocationAction
       NULL,       --DisplayType
       '00000000-0000-0000-0000-000000000000',       --ScreenImageId
       NULL,       --ScreenShowLineNotes
       NULL,       --DisplayPortName
       NULL,       --DisplayPortBaudRate
       NULL,       --DisplayPortDataBits
       NULL,       --DisplayPortParity
       NULL,       --DisplayPortBits
       NULL,       --DisplayPortHandshake
	    0,									    --DisplayScreenSaverEnabled
       0,									    --DisplayScreenSaverTimeToShowInSeconds
       '00000000-0000-0000-0000-000000000000',	--DisplayScreenSaverImageId
       0,									    --DisplayScreenSaverType
       NULL,									--DisplayScreenSaverUrl
       0,          --EnableAutoCloseSession
       60,         --SecondsToAutoCloseSession
       NULL        --MasterId
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Pos
	WHERE [Name] = 'CMD2'
);

INSERT INTO [igtpos].[dbo].Pos
SELECT 1,          --Type
       NULL,       --DeletionDate
       'CMD3',    --Name
       NULL,       --BusinessDay
       NULL,       --OpenDate
       NULL,       --LastPartialBalanceDate
       0.000,      --LastPartialAmount
       0.000,      --InitialAmount
       0.000,      --CurrentAmount
       0.000,      --TipsPendingToExtract
       NULL,       --OpenerUserId
       NULL,       --WarehouseId
       0,          --AllowCashTransactions
       0,          --AfterCloseTicketAction
       0,          --AfterPrintTicketAction
       0,          --AfterPrepareTicketAction
       0,          --AfterOpenCashdrawerAction
       0,          --SoldProductTranslationPolicy
       1,          --SearchMode
       1,          --MakeBalanceOnCloseDay
       0,          --PrintTotalBalanceOnCloseDay
       0,           --UseFingerprintReader
       0,          --AllowPrintTicketGif
       0,          --TicketWhenPrint
       0,          --TicketDefaultWhenPrint
       'Ticket',   --TicketPrinterName
       1,          --TicketNumberOfCopies
       1,          --TicketPrintTemplateId
       0,          --BasicInvoiceWhenPrint
       0,          --BasicInvoiceDefaultWhenPrint
       'Ticket',   --BasicInvoicePrinterName
       1,          --BasicInvoiceNumberOfCopies
       1,          --BasicInvoicePrintTemplateId
       0,          --StandardInvoiceWhenPrint
       0,          --StandardInvoiceDefaultWhenPrint
       'Ticket',   --StandardInvoicePrinterName
       1,          --StandardInvoiceNumberOfCopies
       1,          --StandardInvoicePrintTemplateId
       0,          --DeliveryNoteWhenPrint
       0,          --DeliveryNoteDefaultWhenPrint
       'Ticket',   --DeliveryNoteSettingsPrinterName
       1,          --NoteSettingsNumberOfCopies
       1,          --DeliveryNotePrintTemplateId
       0,          --UseAutomaticPreparation
       0,          --ShowTicketPreviewBeforePrint
       0,          --WarnOnTicketCreatedByOtherUser
       0,          --WarnOnTicketInUseByOtherUser
       'Ticket',   --CashdrawerPrinter
       'Ticket',   --CouponPrinter
       0,          --ShowLastSaleInLoginView
       0,          --ShowLastSaleInSelectLocationView
       0,          --IncludeProductSales
       0,          --IncludeUserSales
       0,          --IncludeFamilySales
       0,          --IncludeTableCompanionsSummary
       0,          --IncludeDiscrepancyAmount
       1,          --IncludeInvitationsByUser
       0,          --IncludeSalesCenterSales
       0,          --IncludeCancellationsByUser
       0,          --IncludeProductReturns
       0,          --IncludeUserPayments
       0,          --IncludeVerificationCode
       1,          --IncludePaymentTips
       0,          --IncludePendingOperations
       0,          --IncludeDeliveryPersonStatus
       0,          --UseDeliveryNoteData
       2,          --ActionDispayProfileId
       NULL,        --UseCashControl
       NULL,       --UseCashControlBlindOpening
       NULL,       --CashControlSettingsField
       0,          --UseCardProcessor
       NULL,       --CardProcessorSettingsField
       NULL,       --ScaleEnabled
       NULL,       --ScalePortName
       NULL,       --ScalePortBaudRate
       NULL,       --ScalePortDataBits
       NULL,       --ScalePortParity
       NULL,       --ScalePortStopBits
       NULL,       --ScalePortHandshake
       2,          --GroupId
       NULL,       --DefaultSaleCenterId
       NULL,       --DefaultSaleCenterName
       NULL,       --DefaultSaleLocationName
       0,          --OnSelectLocationAction
       NULL,       --DisplayType
       '00000000-0000-0000-0000-000000000000',       --ScreenImageId
       NULL,       --ScreenShowLineNotes
       NULL,       --DisplayPortName
       NULL,       --DisplayPortBaudRate
       NULL,       --DisplayPortDataBits
       NULL,       --DisplayPortParity
       NULL,       --DisplayPortBits
       NULL,       --DisplayPortHandshake
	    0,									    --DisplayScreenSaverEnabled
       0,									    --DisplayScreenSaverTimeToShowInSeconds
       '00000000-0000-0000-0000-000000000000',	--DisplayScreenSaverImageId
       0,									    --DisplayScreenSaverType
       NULL,									--DisplayScreenSaverUrl
       0,          --EnableAutoCloseSession
       60,         --SecondsToAutoCloseSession
       NULL        --MasterId
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Pos
	WHERE [Name] = 'CMD3'
);

INSERT INTO [igtpos].[dbo].Pos
SELECT 1,          --Type
       NULL,       --DeletionDate
       'CMD4',    --Name
       NULL,       --BusinessDay
       NULL,       --OpenDate
       NULL,       --LastPartialBalanceDate
       0.000,      --LastPartialAmount
       0.000,      --InitialAmount
       0.000,      --CurrentAmount
       0.000,      --TipsPendingToExtract
       NULL,       --OpenerUserId
       NULL,       --WarehouseId
       0,          --AllowCashTransactions
       0,          --AfterCloseTicketAction
       0,          --AfterPrintTicketAction
       0,          --AfterPrepareTicketAction
       0,          --AfterOpenCashdrawerAction
       0,          --SoldProductTranslationPolicy
       1,          --SearchMode
       1,          --MakeBalanceOnCloseDay
       0,          --PrintTotalBalanceOnCloseDay
       0,           --UseFingerprintReader
       0,          --AllowPrintTicketGif
       0,          --TicketWhenPrint
       0,          --TicketDefaultWhenPrint
       'Ticket',   --TicketPrinterName
       1,          --TicketNumberOfCopies
       1,          --TicketPrintTemplateId
       0,          --BasicInvoiceWhenPrint
       0,          --BasicInvoiceDefaultWhenPrint
       'Ticket',   --BasicInvoicePrinterName
       1,          --BasicInvoiceNumberOfCopies
       1,          --BasicInvoicePrintTemplateId
       0,          --StandardInvoiceWhenPrint
       0,          --StandardInvoiceDefaultWhenPrint
       'Ticket',   --StandardInvoicePrinterName
       1,          --StandardInvoiceNumberOfCopies
       1,          --StandardInvoicePrintTemplateId
       0,          --DeliveryNoteWhenPrint
       0,          --DeliveryNoteDefaultWhenPrint
       'Ticket',   --DeliveryNoteSettingsPrinterName
       1,          --NoteSettingsNumberOfCopies
       1,          --DeliveryNotePrintTemplateId
       0,          --UseAutomaticPreparation
       0,          --ShowTicketPreviewBeforePrint
       0,          --WarnOnTicketCreatedByOtherUser
       0,          --WarnOnTicketInUseByOtherUser
       'Ticket',   --CashdrawerPrinter
       'Ticket',   --CouponPrinter
       0,          --ShowLastSaleInLoginView
       0,          --ShowLastSaleInSelectLocationView
       0,          --IncludeProductSales
       0,          --IncludeUserSales
       0,          --IncludeFamilySales
       0,          --IncludeTableCompanionsSummary
       0,          --IncludeDiscrepancyAmount
       1,          --IncludeInvitationsByUser
       0,          --IncludeSalesCenterSales
       0,          --IncludeCancellationsByUser
       0,          --IncludeProductReturns
       0,          --IncludeUserPayments
       0,          --IncludeVerificationCode
       1,          --IncludePaymentTips
       0,          --IncludePendingOperations
       0,          --IncludeDeliveryPersonStatus
       0,          --UseDeliveryNoteData
       2,          --ActionDispayProfileId
       NULL,        --UseCashControl
       NULL,       --UseCashControlBlindOpening
       NULL,       --CashControlSettingsField
       0,          --UseCardProcessor
       NULL,       --CardProcessorSettingsField
       NULL,       --ScaleEnabled
       NULL,       --ScalePortName
       NULL,       --ScalePortBaudRate
       NULL,       --ScalePortDataBits
       NULL,       --ScalePortParity
       NULL,       --ScalePortStopBits
       NULL,       --ScalePortHandshake
       2,          --GroupId
       NULL,       --DefaultSaleCenterId
       NULL,       --DefaultSaleCenterName
       NULL,       --DefaultSaleLocationName
       0,          --OnSelectLocationAction
       NULL,       --DisplayType
       '00000000-0000-0000-0000-000000000000',       --ScreenImageId
       NULL,       --ScreenShowLineNotes
       NULL,       --DisplayPortName
       NULL,       --DisplayPortBaudRate
       NULL,       --DisplayPortDataBits
       NULL,       --DisplayPortParity
       NULL,       --DisplayPortBits
       NULL,       --DisplayPortHandshake
	    0,									    --DisplayScreenSaverEnabled
       0,									    --DisplayScreenSaverTimeToShowInSeconds
       '00000000-0000-0000-0000-000000000000',	--DisplayScreenSaverImageId
       0,									    --DisplayScreenSaverType
       NULL,									--DisplayScreenSaverUrl
       0,          --EnableAutoCloseSession
       60,         --SecondsToAutoCloseSession
       NULL        --MasterId
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Pos
	WHERE [Name] = 'CMD4'
);

INSERT INTO [igtpos].[dbo].Pos
SELECT 1,          --Type
       NULL,       --DeletionDate
       'CMD5',    --Name
       NULL,       --BusinessDay
       NULL,       --OpenDate
       NULL,       --LastPartialBalanceDate
       0.000,      --LastPartialAmount
       0.000,      --InitialAmount
       0.000,      --CurrentAmount
       0.000,      --TipsPendingToExtract
       NULL,       --OpenerUserId
       NULL,       --WarehouseId
       0,          --AllowCashTransactions
       0,          --AfterCloseTicketAction
       0,          --AfterPrintTicketAction
       0,          --AfterPrepareTicketAction
       0,          --AfterOpenCashdrawerAction
       0,          --SoldProductTranslationPolicy
       1,          --SearchMode
       1,          --MakeBalanceOnCloseDay
       0,          --PrintTotalBalanceOnCloseDay
       0,           --UseFingerprintReader
       0,          --AllowPrintTicketGif
       0,          --TicketWhenPrint
       0,          --TicketDefaultWhenPrint
       'Ticket',   --TicketPrinterName
       1,          --TicketNumberOfCopies
       1,          --TicketPrintTemplateId
       0,          --BasicInvoiceWhenPrint
       0,          --BasicInvoiceDefaultWhenPrint
       'Ticket',   --BasicInvoicePrinterName
       1,          --BasicInvoiceNumberOfCopies
       1,          --BasicInvoicePrintTemplateId
       0,          --StandardInvoiceWhenPrint
       0,          --StandardInvoiceDefaultWhenPrint
       'Ticket',   --StandardInvoicePrinterName
       1,          --StandardInvoiceNumberOfCopies
       1,          --StandardInvoicePrintTemplateId
       0,          --DeliveryNoteWhenPrint
       0,          --DeliveryNoteDefaultWhenPrint
       'Ticket',   --DeliveryNoteSettingsPrinterName
       1,          --NoteSettingsNumberOfCopies
       1,          --DeliveryNotePrintTemplateId
       0,          --UseAutomaticPreparation
       0,          --ShowTicketPreviewBeforePrint
       0,          --WarnOnTicketCreatedByOtherUser
       0,          --WarnOnTicketInUseByOtherUser
       'Ticket',   --CashdrawerPrinter
       'Ticket',   --CouponPrinter
       0,          --ShowLastSaleInLoginView
       0,          --ShowLastSaleInSelectLocationView
       0,          --IncludeProductSales
       0,          --IncludeUserSales
       0,          --IncludeFamilySales
       0,          --IncludeTableCompanionsSummary
       0,          --IncludeDiscrepancyAmount
       1,          --IncludeInvitationsByUser
       0,          --IncludeSalesCenterSales
       0,          --IncludeCancellationsByUser
       0,          --IncludeProductReturns
       0,          --IncludeUserPayments
       0,          --IncludeVerificationCode
       1,          --IncludePaymentTips
       0,          --IncludePendingOperations
       0,          --IncludeDeliveryPersonStatus
       0,          --UseDeliveryNoteData
       2,          --ActionDispayProfileId
       NULL,        --UseCashControl
       NULL,       --UseCashControlBlindOpening
       NULL,       --CashControlSettingsField
       0,          --UseCardProcessor
       NULL,       --CardProcessorSettingsField
       NULL,       --ScaleEnabled
       NULL,       --ScalePortName
       NULL,       --ScalePortBaudRate
       NULL,       --ScalePortDataBits
       NULL,       --ScalePortParity
       NULL,       --ScalePortStopBits
       NULL,       --ScalePortHandshake
       2,          --GroupId
       NULL,       --DefaultSaleCenterId
       NULL,       --DefaultSaleCenterName
       NULL,       --DefaultSaleLocationName
       0,          --OnSelectLocationAction
       NULL,       --DisplayType
       '00000000-0000-0000-0000-000000000000',       --ScreenImageId
       NULL,       --ScreenShowLineNotes
       NULL,       --DisplayPortName
       NULL,       --DisplayPortBaudRate
       NULL,       --DisplayPortDataBits
       NULL,       --DisplayPortParity
       NULL,       --DisplayPortBits
       NULL,       --DisplayPortHandshake
	    0,									    --DisplayScreenSaverEnabled
       0,									    --DisplayScreenSaverTimeToShowInSeconds
       '00000000-0000-0000-0000-000000000000',	--DisplayScreenSaverImageId
       0,									    --DisplayScreenSaverType
       NULL,									--DisplayScreenSaverUrl
       0,          --EnableAutoCloseSession
       60,         --SecondsToAutoCloseSession
       NULL        --MasterId
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].Pos
	WHERE [Name] = 'CMD5'
);

INSERT INTO [igtpos].[dbo].DisplayProfileQuickAction
SELECT 1, '4B5FD1D9-B86B-4954-8C80-2FD612E4EEF1', 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileQuickAction	WHERE DisplayProfileId = 1
	AND ActionButtonId = '4B5FD1D9-B86B-4954-8C80-2FD612E4EEF1'
	AND Position = 0
);

INSERT INTO [igtpos].[dbo].DisplayProfileQuickAction
SELECT 1, '70CA4472-2B93-4152-8A51-0E7855B7460B', 1
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileQuickAction	WHERE DisplayProfileId = 1
	AND ActionButtonId = '70CA4472-2B93-4152-8A51-0E7855B7460B'
	AND Position = 1
);

INSERT INTO [igtpos].[dbo].DisplayProfileQuickAction
SELECT 1, '0DCAE505-3BD6-4E6B-BB75-CA74D4CBF05F', 2
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileQuickAction	WHERE DisplayProfileId = 1
	AND ActionButtonId = '0DCAE505-3BD6-4E6B-BB75-CA74D4CBF05F'
	AND Position = 2
);

INSERT INTO [igtpos].[dbo].DisplayProfileQuickAction
SELECT 1, 'EF584278-F107-4548-80C2-C453C3FB9689', 3
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileQuickAction	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'EF584278-F107-4548-80C2-C453C3FB9689'
	AND Position = 3
);

INSERT INTO [igtpos].[dbo].DisplayProfileQuickAction
SELECT 1, '729D5BB5-6FE7-4FE2-9785-DAAAC57B8B28', 4
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileQuickAction	WHERE DisplayProfileId = 1
	AND ActionButtonId = '729D5BB5-6FE7-4FE2-9785-DAAAC57B8B28'
	AND Position = 4
);

INSERT INTO [igtpos].[dbo].DisplayProfileQuickAction
SELECT 1, '13950A43-E575-44B8-ACA4-B3006A4ED02F', 5
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileQuickAction	WHERE DisplayProfileId = 1
	AND ActionButtonId = '13950A43-E575-44B8-ACA4-B3006A4ED02F'
	AND Position = 5
);

INSERT INTO [igtpos].[dbo].DisplayProfileQuickAction
SELECT 1, '6BD07A93-79F9-4D78-A82B-1A6009543E79', 6
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileQuickAction	WHERE DisplayProfileId = 1
	AND ActionButtonId = '6BD07A93-79F9-4D78-A82B-1A6009543E79'
	AND Position = 6
);

INSERT INTO [igtpos].[dbo].DisplayProfileQuickAction
SELECT 1, 'E23C572D-E8CD-40AF-8B17-FAA492B11C87', 7
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileQuickAction	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'E23C572D-E8CD-40AF-8B17-FAA492B11C87'
	AND Position = 7
);

INSERT INTO [igtpos].[dbo].DisplayProfileQuickAction
SELECT 1, 'D0A15D1B-76E7-4D0D-A634-F05E9D742900', 8
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileQuickAction	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'D0A15D1B-76E7-4D0D-A634-F05E9D742900'
	AND Position = 8
);

INSERT INTO [igtpos].[dbo].DisplayProfileQuickAction
SELECT 2, 'EF584278-F107-4548-80C2-C453C3FB9689', 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileQuickAction
	WHERE DisplayProfileId = 2
	AND ActionButtonId = 'EF584278-F107-4548-80C2-C453C3FB9689'
	AND Position = 0
);

INSERT INTO [igtpos].[dbo].DisplayProfileQuickAction
SELECT 2, '729D5BB5-6FE7-4FE2-9785-DAAAC57B8B28', 1
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileQuickAction
	WHERE DisplayProfileId = 2
	AND ActionButtonId = '729D5BB5-6FE7-4FE2-9785-DAAAC57B8B28'
	AND Position = 1
);

INSERT INTO [igtpos].[dbo].DisplayProfileQuickAction
SELECT 2, '13950A43-E575-44B8-ACA4-B3006A4ED02F', 2
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileQuickAction
	WHERE DisplayProfileId = 2
	AND ActionButtonId = '13950A43-E575-44B8-ACA4-B3006A4ED02F'
	AND Position = 2
);

INSERT INTO [igtpos].[dbo].DisplayProfileQuickAction
SELECT 2, 'FC577191-A91E-42AB-B356-6FABFE67936E', 3
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileQuickAction
	WHERE DisplayProfileId = 2
	AND ActionButtonId = 'FC577191-A91E-42AB-B356-6FABFE67936E'
	AND Position = 3
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '8E699A70-0F23-4228-A9C1-4B7C786FB9D4', 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '8E699A70-0F23-4228-A9C1-4B7C786FB9D4'
	AND Position = 0
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '37760ED5-D867-4B34-AC4B-655C27D9191B', 1
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '37760ED5-D867-4B34-AC4B-655C27D9191B'
	AND Position = 1
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '926568E6-AC18-4831-837F-11E983035389', 2
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '926568E6-AC18-4831-837F-11E983035389'
	AND Position = 2
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'CF7EDD5A-C072-425A-BA50-DA59A8CF0FD5', 3
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'CF7EDD5A-C072-425A-BA50-DA59A8CF0FD5'
	AND Position = 3
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'ACA17932-E0EF-4313-A193-A186B8381BB3', 4
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'ACA17932-E0EF-4313-A193-A186B8381BB3'
	AND Position = 4
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'ACA17932-E0EF-4313-A193-A186B8381BB3', 5
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'ACA17932-E0EF-4313-A193-A186B8381BB3'
	AND Position = 5
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'ACA17932-E0EF-4313-A193-A186B8381BB3', 6
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'ACA17932-E0EF-4313-A193-A186B8381BB3'
	AND Position = 6
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'ACA17932-E0EF-4313-A193-A186B8381BB3', 7
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'ACA17932-E0EF-4313-A193-A186B8381BB3'
	AND Position = 7
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'ACA17932-E0EF-4313-A193-A186B8381BB3', 8
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'ACA17932-E0EF-4313-A193-A186B8381BB3'
	AND Position = 8
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'A7131F37-D9DD-4B29-BA1C-872F13CC6707', 9
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'A7131F37-D9DD-4B29-BA1C-872F13CC6707'
	AND Position = 9
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'A8DC8D02-3D4E-4836-81D5-6814CE1B0D9A', 10
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'A8DC8D02-3D4E-4836-81D5-6814CE1B0D9A'
	AND Position = 10
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'F3AF946D-3941-4E38-8FBE-5BE2C2C6FCE4', 11
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'F3AF946D-3941-4E38-8FBE-5BE2C2C6FCE4'
	AND Position = 11
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'E40C290C-685D-4A2F-B616-691F13500409', 12
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'E40C290C-685D-4A2F-B616-691F13500409'
	AND Position = 12
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'ACA17932-E0EF-4313-A193-A186B8381BB3', 13
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'ACA17932-E0EF-4313-A193-A186B8381BB3'
	AND Position = 13
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '4C9F8A93-76D2-4330-8E4C-7696FB8260C3', 14
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '4C9F8A93-76D2-4330-8E4C-7696FB8260C3'
	AND Position = 14
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '3C3DAD56-0EA8-4D6D-B0EA-ABCCD1232D51', 15
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '3C3DAD56-0EA8-4D6D-B0EA-ABCCD1232D51'
	AND Position = 15
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'AD91CF02-260C-4BBF-997B-B41D08214370', 16
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'AD91CF02-260C-4BBF-997B-B41D08214370'
	AND Position = 16
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '5B2F43B0-447E-41EB-B651-937557D7101C', 17
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '5B2F43B0-447E-41EB-B651-937557D7101C'
	AND Position = 17
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '9BC84CE2-FCD8-482B-A1C0-9D0772DE139B', 18
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '9BC84CE2-FCD8-482B-A1C0-9D0772DE139B'
	AND Position = 18
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'F87600DF-2224-448D-9E5F-0630B1CE2B2C', 19
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'F87600DF-2224-448D-9E5F-0630B1CE2B2C'
	AND Position = 19
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '7EA2E353-67FA-481A-AEB3-1B702B3305A1', 20
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '7EA2E353-67FA-481A-AEB3-1B702B3305A1'
	AND Position = 20
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '15DA7AA2-0B58-4E71-95D1-3473DF7DD7C0', 21
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '15DA7AA2-0B58-4E71-95D1-3473DF7DD7C0'
	AND Position = 21
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '2F7AE16D-12D0-4A39-8896-F6EC6F8D2564', 22
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '2F7AE16D-12D0-4A39-8896-F6EC6F8D2564'
	AND Position = 22
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '8B31410E-DC74-4253-A362-F90998EAD22C', 23
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '8B31410E-DC74-4253-A362-F90998EAD22C'
	AND Position = 23
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'C707EF14-BB93-46DC-9163-701494C156E1', 24
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'C707EF14-BB93-46DC-9163-701494C156E1'
	AND Position = 24
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '97CAA18E-85F9-4297-987A-3A9C2C787F81', 25
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '97CAA18E-85F9-4297-987A-3A9C2C787F81'
	AND Position = 25
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '243506DB-BAEA-447D-A8A7-69B59159940C', 26
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '243506DB-BAEA-447D-A8A7-69B59159940C'
	AND Position = 26
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'ACA17932-E0EF-4313-A193-A186B8381BB3', 27
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'ACA17932-E0EF-4313-A193-A186B8381BB3'
	AND Position = 27
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'D8CD73B8-B320-44B8-8546-D9E018A2865F', 28
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'D8CD73B8-B320-44B8-8546-D9E018A2865F'
	AND Position = 28
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'ACA17932-E0EF-4313-A193-A186B8381BB3', 29
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'ACA17932-E0EF-4313-A193-A186B8381BB3'
	AND Position = 29
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '4E6EB96B-FA1E-460F-8D98-4CF6E9F1B73F', 30
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '4E6EB96B-FA1E-460F-8D98-4CF6E9F1B73F'
	AND Position = 30
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'EC8B52B8-28B9-4220-AB20-541BDA2E3F67', 31
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'EC8B52B8-28B9-4220-AB20-541BDA2E3F67'
	AND Position = 31
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '317AB574-FDD6-4A3C-B05F-2FF524A0DD97', 32
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '317AB574-FDD6-4A3C-B05F-2FF524A0DD97'
	AND Position = 32
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'B7F6C3FE-33C4-47A9-BA8B-5B6074131FFC', 33
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'B7F6C3FE-33C4-47A9-BA8B-5B6074131FFC'
	AND Position = 33
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'ACA17932-E0EF-4313-A193-A186B8381BB3', 34
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'ACA17932-E0EF-4313-A193-A186B8381BB3'
	AND Position = 34
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'D85F0DDC-8192-46BC-A71E-FACEC6BBD641', 35
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'D85F0DDC-8192-46BC-A71E-FACEC6BBD641'
	AND Position = 35
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '035D009E-9C93-41EC-A3EC-CE72D615A98B', 36
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '035D009E-9C93-41EC-A3EC-CE72D615A98B'
	AND Position = 36
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'CCF23FB9-2615-4B49-8CE0-B2ED6C98325C', 37
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'CCF23FB9-2615-4B49-8CE0-B2ED6C98325C'
	AND Position = 37
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'F0CF3005-4F3E-4B4D-9EB7-32B4DCE1A0D2', 38
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'F0CF3005-4F3E-4B4D-9EB7-32B4DCE1A0D2'
	AND Position = 38
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '13BF4579-2370-4448-A0C6-3F867E0BE0A3', 39
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '13BF4579-2370-4448-A0C6-3F867E0BE0A3'
	AND Position = 39
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'ACA17932-E0EF-4313-A193-A186B8381BB3', 40
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'ACA17932-E0EF-4313-A193-A186B8381BB3'
	AND Position = 40
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'ACA17932-E0EF-4313-A193-A186B8381BB3', 41
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'ACA17932-E0EF-4313-A193-A186B8381BB3'
	AND Position = 41
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'ACA17932-E0EF-4313-A193-A186B8381BB3', 42
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'ACA17932-E0EF-4313-A193-A186B8381BB3'
	AND Position = 42
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'ACA17932-E0EF-4313-A193-A186B8381BB3', 43
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'ACA17932-E0EF-4313-A193-A186B8381BB3'
	AND Position = 43
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '1F5528BB-250B-4BDB-93E5-0A9F5F3DD6C9', 44
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '1F5528BB-250B-4BDB-93E5-0A9F5F3DD6C9'
	AND Position = 44
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'ACA17932-E0EF-4313-A193-A186B8381BB3', 45
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'ACA17932-E0EF-4313-A193-A186B8381BB3'
	AND Position = 45
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '39AE7B3C-83BD-4904-8FA7-8E12A8FF2DDF', 46
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '39AE7B3C-83BD-4904-8FA7-8E12A8FF2DDF'
	AND Position = 46
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '5989BD8E-3B73-461B-B56B-442AB021196D', 47
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '5989BD8E-3B73-461B-B56B-442AB021196D'
	AND Position = 47
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '3BE28070-2151-4BE5-802E-BE23F849BC3D', 48
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '3BE28070-2151-4BE5-802E-BE23F849BC3D'
	AND Position = 48
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'CE626EC3-8F35-4572-9C29-F0A08B04DEF4', 49
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'CE626EC3-8F35-4572-9C29-F0A08B04DEF4'
	AND Position = 49
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'E920F2EB-848E-4BA1-8C5D-67C1EC239F49', 50
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'E920F2EB-848E-4BA1-8C5D-67C1EC239F49'
	AND Position = 50
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '00C659B0-5235-47A3-ACE8-3F323EA244F2', 51
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '00C659B0-5235-47A3-ACE8-3F323EA244F2'
	AND Position = 51
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'D007E3C7-3E65-4ADF-940C-E0E3C2881841', 52
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'D007E3C7-3E65-4ADF-940C-E0E3C2881841'
	AND Position = 52
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'ACA17932-E0EF-4313-A193-A186B8381BB3', 53
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'ACA17932-E0EF-4313-A193-A186B8381BB3'
	AND Position = 53
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'FF2C06C1-6219-4455-872A-3D0AF324D84E', 54
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'FF2C06C1-6219-4455-872A-3D0AF324D84E'
	AND Position = 54
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '1B4B4F43-2FB1-4209-84C2-1FB30BA5A3A8', 55
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '1B4B4F43-2FB1-4209-84C2-1FB30BA5A3A8'
	AND Position = 55
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '3208E642-C860-4241-8F84-08CABB99C3E2', 56
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '3208E642-C860-4241-8F84-08CABB99C3E2'
	AND Position = 56
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'F074F325-4522-4C93-95EA-316F09724CEB', 57
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'F074F325-4522-4C93-95EA-316F09724CEB'
	AND Position = 57
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '9EA742D8-3F03-4FE1-A130-FCA1AAA4F026', 58
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '9EA742D8-3F03-4FE1-A130-FCA1AAA4F026'
	AND Position = 58
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '7A96A1ED-2331-4D22-942C-1BD083B6816D', 59
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '7A96A1ED-2331-4D22-942C-1BD083B6816D'
	AND Position = 59
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '46AFB238-6736-42ED-BF62-C48755AA364F', 60
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '46AFB238-6736-42ED-BF62-C48755AA364F'
	AND Position = 60
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '5232C142-714F-41D6-BA24-038BDC0A79A0', 61
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '5232C142-714F-41D6-BA24-038BDC0A79A0'
	AND Position = 61
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '55956D5D-BA8D-4B16-927A-2EE915FFF4DE', 62
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '55956D5D-BA8D-4B16-927A-2EE915FFF4DE'
	AND Position = 62
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'ACA17932-E0EF-4313-A193-A186B8381BB3', 63
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'ACA17932-E0EF-4313-A193-A186B8381BB3'
	AND Position = 63
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'B76DF138-9C30-497E-A24E-A8DD20D82759', 64
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'B76DF138-9C30-497E-A24E-A8DD20D82759'
	AND Position = 64
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '9DD6685F-846C-442C-A287-E71CDC9A4EFD', 65
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '9DD6685F-846C-442C-A287-E71CDC9A4EFD'
	AND Position = 65
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '5F3E22CB-2B4E-46E6-BF05-168437E35183', 66
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '5F3E22CB-2B4E-46E6-BF05-168437E35183'
	AND Position = 66
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '109D1A70-2C7A-45C3-8124-CC3DE67DA464', 67
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '109D1A70-2C7A-45C3-8124-CC3DE67DA464'
	AND Position = 67
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'FC577191-A91E-42AB-B356-6FABFE67936E', 68
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'FC577191-A91E-42AB-B356-6FABFE67936E'
	AND Position = 68
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '345E638C-0587-40A4-8183-FC396F52BA66', 69
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '345E638C-0587-40A4-8183-FC396F52BA66'
	AND Position = 69
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '65BBCF8F-E7A9-4C11-AE6D-518D5F0D83C2', 70
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '65BBCF8F-E7A9-4C11-AE6D-518D5F0D83C2'
	AND Position = 70
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'ACA17932-E0EF-4313-A193-A186B8381BB3', 71
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'ACA17932-E0EF-4313-A193-A186B8381BB3'
	AND Position = 71
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '312577B3-7E04-4291-A17A-39C17901F810', 72
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '312577B3-7E04-4291-A17A-39C17901F810'
	AND Position = 72
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '63F310FF-7719-4FC1-93D3-DB06449C88B6', 73
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '63F310FF-7719-4FC1-93D3-DB06449C88B6'
	AND Position = 73
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '4D8FA874-4EBB-4FE7-9C5C-54FEAC2CF114', 74
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '4D8FA874-4EBB-4FE7-9C5C-54FEAC2CF114'
	AND Position = 74
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'B8DC9BCA-4CEB-464F-B88B-7FB877937819', 75
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'B8DC9BCA-4CEB-464F-B88B-7FB877937819'
	AND Position = 75
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'AC1F78D0-76D5-47AF-9192-D4691EBFB944', 76
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'AC1F78D0-76D5-47AF-9192-D4691EBFB944'
	AND Position = 76
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '1ED093E4-4EB7-4F28-8470-A071EB69F37C', 77
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '1ED093E4-4EB7-4F28-8470-A071EB69F37C'
	AND Position = 77
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, '86DB8AA7-451E-4DF8-90E1-BBDA92F0324E', 78
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = '86DB8AA7-451E-4DF8-90E1-BBDA92F0324E'
	AND Position = 78
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 1, 'D6B8D2B1-8B67-4540-9BFD-F053380CCA0F', 79
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction
	WHERE DisplayProfileId = 1
	AND ActionButtonId = 'D6B8D2B1-8B67-4540-9BFD-F053380CCA0F'
	AND Position = 79
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, 'E23C572D-E8CD-40AF-8B17-FAA492B11C87', 0
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = 'E23C572D-E8CD-40AF-8B17-FAA492B11C87'
	AND Position = 0
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, 'DEC524DA-56FE-4B86-815F-2C75B1BB9CBD', 1
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = 'DEC524DA-56FE-4B86-815F-2C75B1BB9CBD'
	AND Position = 1
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, 'D6B8D2B1-8B67-4540-9BFD-F053380CCA0F', 2
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = 'D6B8D2B1-8B67-4540-9BFD-F053380CCA0F'
	AND Position = 2
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, '0661116C-BA13-4063-ACF6-73F76F6B31E0', 3
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = '0661116C-BA13-4063-ACF6-73F76F6B31E0'
	AND Position = 3
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, 'F074F325-4522-4C93-95EA-316F09724CEB', 4
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = 'F074F325-4522-4C93-95EA-316F09724CEB'
	AND Position = 4
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, '9EA742D8-3F03-4FE1-A130-FCA1AAA4F026', 5
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = '9EA742D8-3F03-4FE1-A130-FCA1AAA4F026'
	AND Position = 5
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, '39AE7B3C-83BD-4904-8FA7-8E12A8FF2DDF', 6
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = '39AE7B3C-83BD-4904-8FA7-8E12A8FF2DDF'
	AND Position = 6
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, '0DCAE505-3BD6-4E6B-BB75-CA74D4CBF05F', 7
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = '0DCAE505-3BD6-4E6B-BB75-CA74D4CBF05F'
	AND Position = 7
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, 'AC1F78D0-76D5-47AF-9192-D4691EBFB944', 8
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = 'AC1F78D0-76D5-47AF-9192-D4691EBFB944'
	AND Position = 8
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, 'B76DF138-9C30-497E-A24E-A8DD20D82759', 9
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = 'B76DF138-9C30-497E-A24E-A8DD20D82759'
	AND Position = 9
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, '5F3E22CB-2B4E-46E6-BF05-168437E35183', 10
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = '5F3E22CB-2B4E-46E6-BF05-168437E35183'
	AND Position = 10
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, 'C707EF14-BB93-46DC-9163-701494C156E1', 11
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = 'C707EF14-BB93-46DC-9163-701494C156E1'
	AND Position = 11
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, '7A96A1ED-2331-4D22-942C-1BD083B6816D', 12
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = '7A96A1ED-2331-4D22-942C-1BD083B6816D'
	AND Position = 12
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, '3208E642-C860-4241-8F84-08CABB99C3E2', 13
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = '3208E642-C860-4241-8F84-08CABB99C3E2'
	AND Position = 13
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, '3BE28070-2151-4BE5-802E-BE23F849BC3D', 14
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = '3BE28070-2151-4BE5-802E-BE23F849BC3D'
	AND Position = 14
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, 'EC8B52B8-28B9-4220-AB20-541BDA2E3F67', 15
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = 'EC8B52B8-28B9-4220-AB20-541BDA2E3F67'
	AND Position = 15
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, '109D1A70-2C7A-45C3-8124-CC3DE67DA464', 16
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = '109D1A70-2C7A-45C3-8124-CC3DE67DA464'
	AND Position = 16
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, 'CCF23FB9-2615-4B49-8CE0-B2ED6C98325C', 17
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = 'CCF23FB9-2615-4B49-8CE0-B2ED6C98325C'
	AND Position = 17
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, '9DD6685F-846C-442C-A287-E71CDC9A4EFD', 18
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = '9DD6685F-846C-442C-A287-E71CDC9A4EFD'
	AND Position = 18
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, '2F7AE16D-12D0-4A39-8896-F6EC6F8D2564', 19
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = '2F7AE16D-12D0-4A39-8896-F6EC6F8D2564'
	AND Position = 19
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, '1B4B4F43-2FB1-4209-84C2-1FB30BA5A3A8', 20
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = '1B4B4F43-2FB1-4209-84C2-1FB30BA5A3A8'
	AND Position = 20
);

INSERT INTO [igtpos].[dbo].DisplayProfileCommonAction
SELECT 2, 'F0CF3005-4F3E-4B4D-9EB7-32B4DCE1A0D2', 21
WHERE NOT EXISTS
(
	SELECT 1
	FROM [igtpos].[dbo].DisplayProfileCommonAction	WHERE DisplayProfileId = 2
	AND ActionButtonId = 'F0CF3005-4F3E-4B4D-9EB7-32B4DCE1A0D2'
	AND Position = 21
);

SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Barra';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinter
	SELECT 'Barra', 'Barra', 1, 1, 1, 1, 1, 1, 0, 0, 0, 1
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinter
		WHERE [Name] = 'Barra'
		AND PosId = 1
	);

SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Cocina';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinter
	SELECT 'Cocina', 'Cocina', 1, 1, 1, 1, 1, 1, 0, 0, 0, 1
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinter
		WHERE [Name] = 'Cocina'
		AND PosId = 1
	);

SELECT @idImpresora = Id FROM [igtpos].[dbo].KitchenPrinter WHERE [Name] = 'Barra' AND PosId = 1;
SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Barra';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinterPreparationType
	SELECT @idImpresora, 1
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinterPreparationType
		WHERE KitchenPrinterId = @idImpresora
		AND PreparationTypeId = 1
	);

SELECT @idImpresora = Id FROM [igtpos].[dbo].KitchenPrinter WHERE [Name] = 'Cocina' AND PosId = 1;
SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Cocina';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinterPreparationType
	SELECT @idImpresora, 2
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinterPreparationType
		WHERE KitchenPrinterId = @idImpresora
		AND PreparationTypeId = 2
	);

SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Barra';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinter
	SELECT 'Barra', 'Barra', 1, 1, 1, 1, 1, 1, 0, 0, 0, 2
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinter
		WHERE [Name] = 'Barra'
		AND PosId = 2
	);

SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Cocina';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinter
	SELECT 'Cocina', 'Cocina', 1, 1, 1, 1, 1, 1, 0, 0, 0, 2
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinter
		WHERE [Name] = 'Cocina'
		AND PosId = 2
	);

SELECT @idImpresora = Id FROM [igtpos].[dbo].KitchenPrinter WHERE [Name] = 'Barra' AND PosId = 2;
SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Barra';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinterPreparationType
	SELECT @idImpresora, 1
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinterPreparationType
		WHERE KitchenPrinterId = @idImpresora
		AND PreparationTypeId = 1
	);

SELECT @idImpresora = Id FROM [igtpos].[dbo].KitchenPrinter WHERE [Name] = 'Cocina' AND PosId = 2;
SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Cocina';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinterPreparationType
	SELECT @idImpresora, 2
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinterPreparationType
		WHERE KitchenPrinterId = @idImpresora
		AND PreparationTypeId = 2
	);

SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Barra';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinter
	SELECT 'Barra', 'Barra', 1, 1, 1, 1, 1, 1, 0, 0, 0, 3
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinter
		WHERE [Name] = 'Barra'
		AND PosId = 3
	);

SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Cocina';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinter
	SELECT 'Cocina', 'Cocina', 1, 1, 1, 1, 1, 1, 0, 0, 0, 3
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinter
		WHERE [Name] = 'Cocina'
		AND PosId = 3
	);

SELECT @idImpresora = Id FROM [igtpos].[dbo].KitchenPrinter WHERE [Name] = 'Barra' AND PosId = 3;
SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Barra';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinterPreparationType
	SELECT @idImpresora, 1
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinterPreparationType
		WHERE KitchenPrinterId = @idImpresora
		AND PreparationTypeId = 1
	);

SELECT @idImpresora = Id FROM [igtpos].[dbo].KitchenPrinter WHERE [Name] = 'Cocina' AND PosId = 3;
SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Cocina';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinterPreparationType
	SELECT @idImpresora, 2
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinterPreparationType
		WHERE KitchenPrinterId = @idImpresora
		AND PreparationTypeId = 2
	);

SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Barra';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinter
	SELECT 'Barra', 'Barra', 1, 1, 1, 1, 1, 1, 0, 0, 0, 4
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinter
		WHERE [Name] = 'Barra'
		AND PosId = 4
	);

SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Cocina';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinter
	SELECT 'Cocina', 'Cocina', 1, 1, 1, 1, 1, 1, 0, 0, 0, 4
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinter
		WHERE [Name] = 'Cocina'
		AND PosId = 4
	);

SELECT @idImpresora = Id FROM [igtpos].[dbo].KitchenPrinter WHERE [Name] = 'Barra' AND PosId = 4;
SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Barra';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinterPreparationType
	SELECT @idImpresora, 1
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinterPreparationType
		WHERE KitchenPrinterId = @idImpresora
		AND PreparationTypeId = 1
	);

SELECT @idImpresora = Id FROM [igtpos].[dbo].KitchenPrinter WHERE [Name] = 'Cocina' AND PosId = 4;
SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Cocina';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinterPreparationType
	SELECT @idImpresora, 2
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinterPreparationType
		WHERE KitchenPrinterId = @idImpresora
		AND PreparationTypeId = 2
	);

SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Barra';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinter
	SELECT 'Barra', 'Barra', 1, 1, 1, 1, 1, 1, 0, 0, 0, 5
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinter
		WHERE [Name] = 'Barra'
		AND PosId = 5
	);

SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Cocina';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinter
	SELECT 'Cocina', 'Cocina', 1, 1, 1, 1, 1, 1, 0, 0, 0, 5
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinter
		WHERE [Name] = 'Cocina'
		AND PosId = 5
	);

SELECT @idImpresora = Id FROM [igtpos].[dbo].KitchenPrinter WHERE [Name] = 'Barra' AND PosId = 5;
SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Barra';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinterPreparationType
	SELECT @idImpresora, 1
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinterPreparationType
		WHERE KitchenPrinterId = @idImpresora
		AND PreparationTypeId = 1
	);

SELECT @idImpresora = Id FROM [igtpos].[dbo].KitchenPrinter WHERE [Name] = 'Cocina' AND PosId = 5;
SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Cocina';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinterPreparationType
	SELECT @idImpresora, 2
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinterPreparationType
		WHERE KitchenPrinterId = @idImpresora
		AND PreparationTypeId = 2
	);

SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Barra';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinter
	SELECT 'Barra', 'Barra', 1, 1, 1, 1, 1, 1, 0, 0, 0, 6
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinter
		WHERE [Name] = 'Barra'
		AND PosId = 6
	);

SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Cocina';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinter
	SELECT 'Cocina', 'Cocina', 1, 1, 1, 1, 1, 1, 0, 0, 0, 6
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinter
		WHERE [Name] = 'Cocina'
		AND PosId = 6
	);

SELECT @idImpresora = Id FROM [igtpos].[dbo].KitchenPrinter WHERE [Name] = 'Barra' AND PosId = 6;
SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Barra';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinterPreparationType
	SELECT @idImpresora, 1
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinterPreparationType
		WHERE KitchenPrinterId = @idImpresora
		AND PreparationTypeId = 1
	);

SELECT @idImpresora = Id FROM [igtpos].[dbo].KitchenPrinter WHERE [Name] = 'Cocina' AND PosId = 6;
SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Cocina';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinterPreparationType
	SELECT @idImpresora, 2
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinterPreparationType
		WHERE KitchenPrinterId = @idImpresora
		AND PreparationTypeId = 2
	);

SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Barra';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinter
	SELECT 'Barra', 'Barra', 1, 1, 1, 1, 1, 1, 0, 0, 0, 7
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinter
		WHERE [Name] = 'Barra'
		AND PosId = 7
	);

SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Cocina';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinter
	SELECT 'Cocina', 'Cocina', 1, 1, 1, 1, 1, 1, 0, 0, 0, 7
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinter
		WHERE [Name] = 'Cocina'
		AND PosId = 7
	);

SELECT @idImpresora = Id FROM [igtpos].[dbo].KitchenPrinter WHERE [Name] = 'Barra' AND PosId = 7;
SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Barra';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinterPreparationType
	SELECT @idImpresora, 1
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinterPreparationType
		WHERE KitchenPrinterId = @idImpresora
		AND PreparationTypeId = 1
	);

SELECT @idImpresora = Id FROM [igtpos].[dbo].KitchenPrinter WHERE [Name] = 'Cocina' AND PosId = 7;
SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Cocina';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinterPreparationType
	SELECT @idImpresora, 2
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinterPreparationType
		WHERE KitchenPrinterId = @idImpresora
		AND PreparationTypeId = 2
	);

SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Barra';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinter
	SELECT 'Barra', 'Barra', 1, 1, 1, 1, 1, 1, 0, 0, 0, 8
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinter
		WHERE [Name] = 'Barra'
		AND PosId = 8
	);

SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Cocina';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinter
	SELECT 'Cocina', 'Cocina', 1, 1, 1, 1, 1, 1, 0, 0, 0, 8
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinter
		WHERE [Name] = 'Cocina'
		AND PosId = 8
	);

SELECT @idImpresora = Id FROM [igtpos].[dbo].KitchenPrinter WHERE [Name] = 'Barra' AND PosId = 8;
SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Barra';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinterPreparationType
	SELECT @idImpresora, 1
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinterPreparationType
		WHERE KitchenPrinterId = @idImpresora
		AND PreparationTypeId = 1
	);

SELECT @idImpresora = Id FROM [igtpos].[dbo].KitchenPrinter WHERE [Name] = 'Cocina' AND PosId = 8;
SET @idTipoPreparacion = NULL;
SELECT @idTipoPreparacion = Id FROM [igtpos].[dbo].PreparationType WHERE [Name] = 'Cocina';

IF @idTipoPreparacion IS NOT NULL
	INSERT INTO [igtpos].[dbo].KitchenPrinterPreparationType
	SELECT @idImpresora, 2
	WHERE NOT EXISTS
	(
		SELECT 1
		FROM [igtpos].[dbo].KitchenPrinterPreparationType
		WHERE KitchenPrinterId = @idImpresora
		AND PreparationTypeId = 2
	);

-- Punto de venta por defecto
UPDATE [igtpos].[dbo].Pos
SET    PrintTotalBalanceOnCloseDay = 1,
       TicketPrinterName = 'Ticket',
       BasicInvoicePrinterName = 'Ticket',
       StandardInvoicePrinterName = 'Ticket',
       DeliveryNoteSettingsPrinterName = 'Ticket',
       CashdrawerPrinter = 'Ticket',
       CouponPrinter = 'Ticket',
       IncludeInvitationsByUser = 1,
       IncludePaymentTips = 1,
       EnableAutoCloseSession = 1
WHERE Id = 1;UPDATE [igtpos].[dbo].Pos
SET    [Name] = 'TPV1'
WHERE Id = 1;