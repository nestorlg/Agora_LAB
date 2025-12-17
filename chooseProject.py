import os
from datetime import datetime as dt

# Obtiene la ruta del directorio actual
directorio_actual = os.getcwd() + "/projects"

# Lista todos los elementos dentro del directorio actual
elementos = os.listdir(directorio_actual)

# Filtra solo los directorios
directorios = [elemento for elemento in elementos if os.path.isdir(os.path.join(directorio_actual, elemento))]

# Muestra los nombres de los directorios
for i, directorio in enumerate(directorios):
    print("%d) %s" % (i + 1, directorio))

valid = True

option = input("Por favor elija el número del proyecto con el que desea trabajar: ")

directorio = ""

if int(option) < 1 or int(option) > len(directorios):
    valid = False
else:
    directorio = directorios[int(option) - 1]
    if (
        not os.path.exists(directorio_actual + "/" + directorio + "/entrada.xlsx") or
        not os.path.exists(directorio_actual + "/" + directorio + "/logos/")
    ):
        valid = False
    else:
        valid = True

while not valid:
    option = input("Por favor, elija un proyecto válido, o introduzca en el una carpeta de logos y un archivo excel de entrada: ")

    if int(option) < 1 or int(option) > len(directorios):
        valid = False
    else:
        directorio = directorios[int(option) - 1]
        if (
            not os.path.exists(directorio_actual + "/" + directorio + "/entrada.xlsx") or
            not os.path.exists(directorio_actual + "/" + directorio + "/logos/")
        ):
            valid = False
        else:
            valid = True

temp_file = open("temp.txt", "a")
temp_file.truncate(0)

temp_file.write(directorio + "\n")
temp_file.write(str(dt.now()).replace(" ", "-").replace(":", "-").split(".")[0])

temp_file.close()
