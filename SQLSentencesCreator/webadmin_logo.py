import base64 as b64


with open("temp.txt", "r") as f:
    lineas = f.readlines()

project = lineas[0][:-1]

imagen = "projects/" + project + "/logos/logo-admin-web.png"

with open(imagen, "rb") as image_file:
    base64_string = b64.b64encode(image_file.read()).decode('utf-8')

sql_script = open("sql/webadmin-logo.sql", "w")

query = (
    "SET NOCOUNT ON;\n\n"
    
    "UPDATE [igtpos].[dbo].WebAdmin\n"
    "SET LogoImageData = '%s';\n\n"
    % base64_string
)

sql_script.write(query)
sql_script.close()
