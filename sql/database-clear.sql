IF	(SELECT COUNT(*) FROM [igtpos].[dbo].AddinRoleAddin) <> 0
	DELETE	FROM [igtpos].[dbo].AddinRoleAddin;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].AddinRole) <> 0
	DELETE	FROM [igtpos].[dbo].AddinRole;
	DBCC	CHECKIDENT ('[igtpos].[dbo].AddinRole', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].SaleFormatPrice) <> 0
	DELETE	FROM [igtpos].[dbo].SaleFormatPrice;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].KitchenPrinterSaleCenter) <> 0
	DELETE	FROM [igtpos].[dbo].KitchenPrinterSaleCenter;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].KitchenDisplaySaleCenter) <> 0
	DELETE	FROM [igtpos].[dbo].KitchenDisplaySaleCenter;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].SaleLocation) <> 0
	DELETE	FROM [igtpos].[dbo].SaleLocation;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].SaleCenter) <> 0
	DELETE	FROM [igtpos].[dbo].SaleCenter;
	DBCC	CHECKIDENT ('[igtpos].[dbo].SaleCenter', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].PriceList) <> 1
	DELETE	FROM [igtpos].[dbo].PriceList WHERE Id > 1;
	DBCC	CHECKIDENT ('[igtpos].[dbo].PriceList', RESEED, 1);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].SaleFormat) <> 0
	DELETE	FROM [igtpos].[dbo].SaleFormat;
	DBCC	CHECKIDENT ('[igtpos].[dbo].SaleFormat', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].ProductDataSheet) <> 0
	DELETE	FROM [igtpos].[dbo].ProductDataSheet;
	DBCC	CHECKIDENT ('[igtpos].[dbo].ProductDataSheet', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].ProductCategory) <> 0
	DELETE	FROM [igtpos].[dbo].ProductCategory;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].ProductAllergen) <> 0
	DELETE	FROM [igtpos].[dbo].ProductAllergen;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].CostPriceByWarehouse) <> 0
	DELETE	FROM [igtpos].[dbo].CostPriceByWarehouse;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].StorageOptions) <> 0
	DELETE	FROM [igtpos].[dbo].StorageOptions;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].PurchaseCondition) <> 0
	DELETE	FROM [igtpos].[dbo].PurchaseCondition;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].RegularSupplier) <> 0
	DELETE	FROM [igtpos].[dbo].RegularSupplier;
	DBCC	CHECKIDENT ('[igtpos].[dbo].RegularSupplier', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].ContactPerson) <> 0
	DELETE	FROM [igtpos].[dbo].ContactPerson;
	DBCC	CHECKIDENT ('[igtpos].[dbo].ContactPerson', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].Supplier) <> 0
	DELETE	FROM [igtpos].[dbo].Supplier;
	DBCC	CHECKIDENT ('[igtpos].[dbo].Supplier', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].MenuGroup) <> 0
	DELETE	FROM [igtpos].[dbo].MenuGroup;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].ProductBarcode) <> 0
	DELETE	FROM [igtpos].[dbo].ProductBarcode;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].Product) <> 0
	DELETE	FROM [igtpos].[dbo].Product;
	DBCC	CHECKIDENT ('[igtpos].[dbo].Product', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].Family) <> 0
	DELETE	FROM [igtpos].[dbo].Family;
	DBCC	CHECKIDENT ('[igtpos].[dbo].Family', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].DigitalMenuCategory) <> 0
	DELETE	FROM [igtpos].[dbo].DigitalMenuCategory;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].CategoryTags) <> 0
	DELETE	FROM [igtpos].[dbo].CategoryTags;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].Category) <> 0
	DELETE	FROM [igtpos].[dbo].Category;
	DBCC	CHECKIDENT ('[igtpos].[dbo].Category', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].KitchenPrinterPreparationType) <> 0
	DELETE  FROM [igtpos].[dbo].KitchenPrinterPreparationType;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].KitchenPrinter) <> 0
	DELETE  FROM [igtpos].[dbo].KitchenPrinter;
	DBCC	CHECKIDENT ('[igtpos].[dbo].KitchenPrinter', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].TicketLineAddin) <> 0
	DELETE	FROM [igtpos].[dbo].TicketLineAddin;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].TicketLine) <> 0
	DELETE	FROM [igtpos].[dbo].TicketLine;
	DBCC	CHECKIDENT ('[igtpos].[dbo].TicketLine', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].InvoiceItem) <> 0
	DELETE	FROM [igtpos].[dbo].InvoiceItem;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].DocumentPayment) <> 0
	DELETE	FROM [igtpos].[dbo].DocumentPayment;
	DBCC	CHECKIDENT ('[igtpos].[dbo].DocumentPayment', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].Invoice) <> 0
	DELETE	FROM [igtpos].[dbo].Invoice;
	DBCC	CHECKIDENT ('[igtpos].[dbo].Invoice', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].SalesOrderDraft) <> 0
	DELETE	FROM [igtpos].[dbo].SalesOrderDraft;
	DBCC	CHECKIDENT ('[igtpos].[dbo].SalesOrderDraft', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].Ticket) <> 0
	DELETE	FROM [igtpos].[dbo].Ticket;
	DBCC	CHECKIDENT ('[igtpos].[dbo].Ticket', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].KitchenDisplayPreparationOrder) <> 0
	DELETE	FROM [igtpos].[dbo].KitchenDisplayPreparationOrder;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].PreparationOrder) <> 0
	DELETE	FROM [igtpos].[dbo].PreparationOrder;
	DBCC	CHECKIDENT ('[igtpos].[dbo].PreparationOrder', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].KitchenPrinterPreparationType) <> 0
	DELETE	FROM [igtpos].[dbo].KitchenPrinterPreparationType;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].KitchenDisplayPreparationType) <> 0
	DELETE	FROM [igtpos].[dbo].KitchenDisplayPreparationType;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].PreparationType) <> 0
	DELETE	FROM [igtpos].[dbo].PreparationType;
	DBCC	CHECKIDENT ('[igtpos].[dbo].PreparationType', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].KitchenDisplayMainLineStatus) <> 0
	DELETE	FROM [igtpos].[dbo].KitchenDisplayMainLineStatus;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].KitchenDisplaySecondaryLineStatus) <> 0
	DELETE	FROM [igtpos].[dbo].KitchenDisplaySecondaryLineStatus;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].PredefinedNotesGroups) <> 0
	DELETE	FROM [igtpos].[dbo].PredefinedNotesGroups;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].PredefinedNote) <> 0
	DELETE	FROM [igtpos].[dbo].PredefinedNote;
	DBCC	CHECKIDENT ('[igtpos].[dbo].PredefinedNote', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].PosCloseOutBalance) <> 0
	DELETE	FROM [igtpos].[dbo].PosCloseOutBalance;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].PosCloseOut) <> 0
	DELETE	FROM [igtpos].[dbo].PosCloseOut;
	DBCC	CHECKIDENT ('[igtpos].[dbo].PosCloseOut', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].SystemCloseOut) <> 0
	DELETE	FROM [igtpos].[dbo].SystemCloseOut;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].Pos) <> 0
	DELETE	FROM [igtpos].[dbo].Pos;
	DBCC	CHECKIDENT ('[igtpos].[dbo].Pos', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].MapPosGroups) <> 0
	DELETE	FROM [igtpos].[dbo].MapPosGroups;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].PosGroup) <> 0
	DELETE	FROM [igtpos].[dbo].PosGroup;
	DBCC	CHECKIDENT ('[igtpos].[dbo].PosGroup', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].[User]) <> 0
	DELETE	FROM [igtpos].[dbo].[User];
	DBCC	CHECKIDENT ('[igtpos].[dbo].User', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].UserProfile) <> 3
	DELETE	FROM [igtpos].[dbo].UserProfile WHERE Id > 3;
	DBCC	CHECKIDENT ('[igtpos].[dbo].UserProfile', RESEED, 3);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].MapPosGroups) <> 0
	DELETE	FROM [igtpos].[dbo].MapPosGroups;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].DisplayProfileQuickAction) <> 0
	DELETE  FROM [igtpos].[dbo].DisplayProfileQuickAction;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].DisplayProfileCommonAction) <> 0
	DELETE  FROM [igtpos].[dbo].DisplayProfileCommonAction;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].DisplayProfileSelectLocationAction) <> 0
	DELETE  FROM [igtpos].[dbo].DisplayProfileSelectLocationAction;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].DisplayProfile) <> 0
	DELETE  FROM [igtpos].[dbo].DisplayProfile;
	DBCC	CHECKIDENT ('[igtpos].[dbo].DisplayProfile', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].[Image]) <> 0
	DELETE	FROM [igtpos].[dbo].[Image];

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].TextElement WHERE Id < 3 OR Id > 15) <> 0
	DELETE  FROM [igtpos].[dbo].TextElement WHERE Id < 3 OR Id > 15;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].ImageElement) <> 0
	DELETE  FROM [igtpos].[dbo].ImageElement;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].EscPosTemplateElement WHERE Id > 15) <> 0
	DELETE  FROM [igtpos].[dbo].EscPosTemplateElement WHERE Id > 15;
	DBCC	CHECKIDENT ('[igtpos].[dbo].EscPosTemplateElement', RESEED, 15);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].RdlTemplate) <> 3
	DELETE  FROM [igtpos].[dbo].RdlTemplate;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].PrintTemplate) <> 3
	DELETE  FROM [igtpos].[dbo].PrintTemplate WHERE Id > 3;
	DBCC	CHECKIDENT ('[igtpos].[dbo].PrintTemplate', RESEED, 3);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].DigitalMenu) <> 0
	DELETE	FROM [igtpos].[dbo].DigitalMenu;
	DBCC	CHECKIDENT ('[igtpos].[dbo].DigitalMenu', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].KitchenDisplayCounterFilterStatus) <> 0
	DELETE	FROM [igtpos].[dbo].KitchenDisplayCounterFilterStatus;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].KitchenDisplay) <> 0
	DELETE	FROM [igtpos].[dbo].KitchenDisplay;
	DBCC	CHECKIDENT ('[igtpos].[dbo].KitchenDisplay', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].Map) <> 0
	DELETE	FROM [igtpos].[dbo].Map;
	DBCC	CHECKIDENT ('[igtpos].[dbo].Map', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].IndexItem) <> 0
	DELETE	FROM [igtpos].[dbo].IndexItem;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].IndexedGroup) <> 0
	DELETE	FROM [igtpos].[dbo].IndexedGroup;
	DBCC	CHECKIDENT ('[igtpos].[dbo].IndexedGroup', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].DigitalMenuResourceItems) <> 0
	DELETE  FROM [igtpos].[dbo].DigitalMenuResourceItems;

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].DigitalMenuResourceItem) <> 0
	DELETE  FROM [igtpos].[dbo].DigitalMenuResourceItem;
	DBCC	CHECKIDENT ('[igtpos].[dbo].DigitalMenuResourceItem', RESEED, 0);

IF	(SELECT COUNT(*) FROM [igtpos].[dbo].DigitalMenuResources) <> 0
	DELETE  FROM [igtpos].[dbo].DigitalMenuResources;
	DBCC	CHECKIDENT ('[igtpos].[dbo].DigitalMenuResources', RESEED, 0);

UPDATE	[igtpos].[dbo].Company
SET		BusinessName = '',
		FiscalName = '',
		Cif = '',
		Telephone = '',
		Email = '',
		Web = '',
		Contact = '',
		Street = '',
		City = '',
		Region = '',
		ZipCode = ''
WHERE	Id = 1;