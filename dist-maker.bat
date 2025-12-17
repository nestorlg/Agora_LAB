@echo off

py "chooseProject.py"

echo Instalando posibles dependencias del sistema...
py -m pip install --upgrade pip
py -m pip install -U -q openpyxl
py -m pip install -U -q numpy
py -m pip install -U -q configparser
py -m pip install -U -q unidecode
py -m pip install -U -q pillow
py -m pip install -U -q deepl
py -m pip install -U -q python-docx
py -m pip install -U -q rapidfuzz

echo "Realizando limpieza de la base de datos..."
sqlcmd -S localhost\agora -U sa -P igt123 -i "sql/database-clear.sql" > nul

echo "Habilitando impuesto IGIC..."
sqlcmd -S localhost\agora -U sa -P igt123 -i "sql/igic-enabler.sql"

echo "Habilitando tarifa General..."
sqlcmd -S localhost\agora -U sa -P igt123 -i "sql/price-list-setter.sql"

echo "Generando Excel de salida..."
py "outputExcelCreator/main.py"

echo "Creando categorias y familias..."
py "SQLSentencesCreator/categories_and_families.py"
sqlcmd -S localhost\agora -U sa -P igt123 -i "sql/categories-and-families.sql"

echo "Creando tipos y ordenes de preparacion..."
py "SQLSentencesCreator/preparation_types_and_orders.py"
sqlcmd -S localhost\agora -U sa -P igt123 -i "sql/preparation-types-and-orders.sql"

echo "Creando productos..."
py "SQLSentencesCreator/products.py"
sqlcmd -S localhost\agora -U sa -P igt123 -i "sql/products.sql"

echo "Creando formatos de venta..."
py "SQLSentencesCreator/sale_formats.py"
sqlcmd -S localhost\agora -U sa -P igt123 -i "sql/sale-formats.sql"

echo "Insertando anyadidos..."
py "SQLSentencesCreator/addins.py"
sqlcmd -S localhost\agora -U sa -P igt123 -i "sql/addins.sql"

echo "Insertando notas de preparacion..."
py "SQLSentencesCreator/predefined_notes.py"
sqlcmd -S localhost\agora -U sa -P igt123 -i "sql/predefined-notes.sql"

echo "Creando usuarios y perfiles..."
py "SQLSentencesCreator/users_and_profiles.py"
sqlcmd -S localhost\agora -U sa -P igt123 -i "sql/users-and-profiles.sql"

echo "Creando diferentes versiones del logo..."
py "SQLSentencesCreator/logo_creator.py"

echo "Estableciendo logo para la Administracion Web..."
py "SQLSentencesCreator/webadmin_logo.py"
sqlcmd -S localhost\agora -U sa -P igt123 -i "sql/webadmin-logo.sql"

echo "Creando carta digital..."
py "SQLSentencesCreator/digital_menu.py"
sqlcmd -S localhost\agora -U sa -P igt123 -i "sql/digital-menu.sql"

echo "Estableciendo datos fiscales..."
py "SQLSentencesCreator/fiscal_data.py"
sqlcmd -S localhost\agora -U sa -P igt123 -i "sql/fiscal-data.sql"

echo "Configurando plantillas de Ticket, A4 y comanda..."
py "SQLSentencesCreator/ticket.py"
sqlcmd -S localhost\agora -U sa -P igt123 -i "sql/ticket.sql"

echo "Creando y configurando puntos de venta..."
py "SQLSentencesCreator/pos.py"
sqlcmd -S localhost\agora -U sa -P igt123 -i "sql/pos.sql"

echo "Creando centros de venta y planos de mesa..."
py "SQLSentencesCreator/map.py"
sqlcmd -S localhost\agora -U sa -P igt123 -i "sql/map.sql"

echo "Creando monitores de cocina..."
py "SQLSentencesCreator/display.py"
sqlcmd -S localhost\agora -U sa -P igt123 -i "sql/display.sql"

echo "Generando fichero go-live con informacion sobre el catalogo..."

sqlcmd -S localhost\agora -U sa -P igt123 -i "sql/products-and-prices.sql" -o "go-live/products-and-prices.txt" -s "|" -h -1
sqlcmd -S localhost\agora -U sa -P igt123 -i "sql/products-addins.sql" -o "go-live/products-addins.txt" -s "|" -h -1
sqlcmd -S localhost\agora -U sa -P igt123 -i "sql/users-and-passwords.sql" -o "go-live/users-and-passwords.txt" -s "|" -h -1

py "go-live/main.py"

echo "Realizando copia de seguridad de la cache..."
py "cacheBackUp.py"

echo "Proceso terminado. Puede cerrar esta ventana."

pause