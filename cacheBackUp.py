import os
import sys

import openpyxl as op


def sort_hoja(hoja, criterio):
    last_swaped_element = hoja[-1]
    swaped_element = True

    while swaped_element:
        swaped_element = False

        for i in range(len(hoja) - 1):
            if hoja[i] == last_swaped_element:
                break

            if hoja[i][criterio] > hoja[i + 1][criterio]:
                hoja[i], hoja[i + 1] = hoja[i + 1], hoja[i]

                last_swaped_element = hoja[i]
                swaped_element = True


# Leer la cache de la carpeta de datos de OutputExcelCreator
cache = op.load_workbook("outputExcelCreator/data/cache.xlsx")

# Hoja de productos
productos = []
hoja_productos = cache["Productos"]

i = 2
while hoja_productos["A" + str(i)].value is not None:
    productos.append([
        str(hoja_productos["A" + str(i)].value).strip() if hoja_productos["A" + str(i)].value is not None else "",
        str(hoja_productos["B" + str(i)].value).strip() if hoja_productos["B" + str(i)].value is not None else "",
        str(hoja_productos["C" + str(i)].value).strip() if hoja_productos["C" + str(i)].value is not None else "",
        str(hoja_productos["D" + str(i)].value).strip() if hoja_productos["D" + str(i)].value is not None else "",
        str(hoja_productos["E" + str(i)].value).strip() if hoja_productos["E" + str(i)].value is not None else "",
        str(hoja_productos["F" + str(i)].value).strip() if hoja_productos["F" + str(i)].value is not None else "",
        str(hoja_productos["G" + str(i)].value).strip() if hoja_productos["G" + str(i)].value is not None else "",
        str(hoja_productos["H" + str(i)].value).strip() if hoja_productos["H" + str(i)].value is not None else "",
        str(hoja_productos["I" + str(i)].value).strip() if hoja_productos["I" + str(i)].value is not None else "",
        str(hoja_productos["J" + str(i)].value).strip() if hoja_productos["J" + str(i)].value is not None else "",
        str(hoja_productos["K" + str(i)].value).strip() if hoja_productos["K" + str(i)].value is not None else ""
    ])

    i += 1

sort_hoja(productos, criterio=1)  # Ordenar por familia
sort_hoja(productos, criterio=0)  # Ordenar por nombre

i = 2
for producto in productos:
    hoja_productos["A" + str(i)].value = producto[0]
    hoja_productos["B" + str(i)].value = producto[1]
    hoja_productos["C" + str(i)].value = producto[2]
    hoja_productos["D" + str(i)].value = producto[3]
    hoja_productos["E" + str(i)].value = producto[4]
    hoja_productos["F" + str(i)].value = producto[5]
    hoja_productos["G" + str(i)].value = producto[6]
    hoja_productos["H" + str(i)].value = producto[7]
    hoja_productos["I" + str(i)].value = producto[8]
    hoja_productos["J" + str(i)].value = producto[9]
    hoja_productos["K" + str(i)].value = producto[10]

    i += 1

# Hoja de familias
familias = []
hoja_familias = cache["Familias"]

i = 2
while hoja_familias["A" + str(i)].value is not None:
    familias.append([
        str(hoja_familias["A" + str(i)].value).strip() if hoja_familias["A" + str(i)].value is not None else "",
        str(hoja_familias["B" + str(i)].value).strip() if hoja_familias["B" + str(i)].value is not None else "",
        str(hoja_familias["C" + str(i)].value).strip() if hoja_familias["C" + str(i)].value is not None else "",
        str(hoja_familias["D" + str(i)].value).strip() if hoja_familias["D" + str(i)].value is not None else "",
        str(hoja_familias["E" + str(i)].value).strip() if hoja_familias["E" + str(i)].value is not None else "",
        str(hoja_familias["F" + str(i)].value).strip() if hoja_familias["F" + str(i)].value is not None else "",
    ])

    i += 1

sort_hoja(familias, criterio=0)  # Ordenar por nombre

i = 2
for familia in familias:
    hoja_familias["A" + str(i)].value = familia[0]
    hoja_familias["B" + str(i)].value = familia[1]
    hoja_familias["C" + str(i)].value = familia[2]
    hoja_familias["D" + str(i)].value = familia[3]
    hoja_familias["E" + str(i)].value = familia[4]
    hoja_familias["F" + str(i)].value = familia[5]

    i += 1

# Hoja de traducciones
traducciones = []
hoja_traducciones = cache["Traducciones"]

i = 2
while hoja_traducciones["A" + str(i)].value is not None:
    traducciones.append([
        str(hoja_traducciones["A" + str(i)].value).strip() if hoja_traducciones["A" + str(i)].value is not None else "",
        str(hoja_traducciones["B" + str(i)].value).strip() if hoja_traducciones["B" + str(i)].value is not None else "",
        str(hoja_traducciones["C" + str(i)].value).strip() if hoja_traducciones["C" + str(i)].value is not None else "",
        str(hoja_traducciones["D" + str(i)].value).strip() if hoja_traducciones["D" + str(i)].value is not None else "",
        str(hoja_traducciones["E" + str(i)].value).strip() if hoja_traducciones["E" + str(i)].value is not None else "",
        str(hoja_traducciones["F" + str(i)].value).strip() if hoja_traducciones["F" + str(i)].value is not None else "",
        str(hoja_traducciones["G" + str(i)].value).strip() if hoja_traducciones["G" + str(i)].value is not None else "",
        str(hoja_traducciones["H" + str(i)].value).strip() if hoja_traducciones["H" + str(i)].value is not None else "",
        str(hoja_traducciones["I" + str(i)].value).strip() if hoja_traducciones["I" + str(i)].value is not None else "",
        str(hoja_traducciones["J" + str(i)].value).strip() if hoja_traducciones["J" + str(i)].value is not None else "",
        str(hoja_traducciones["K" + str(i)].value).strip() if hoja_traducciones["K" + str(i)].value is not None else ""
    ])

    i += 1

sort_hoja(traducciones, criterio=0)  # Ordenar por texto en español

i = 2
for traduccion in traducciones:
    hoja_traducciones["A" + str(i)].value = traduccion[0]
    hoja_traducciones["B" + str(i)].value = traduccion[1]
    hoja_traducciones["C" + str(i)].value = traduccion[2]
    hoja_traducciones["D" + str(i)].value = traduccion[3]
    hoja_traducciones["E" + str(i)].value = traduccion[4]
    hoja_traducciones["F" + str(i)].value = traduccion[5]
    hoja_traducciones["G" + str(i)].value = traduccion[6]
    hoja_traducciones["H" + str(i)].value = traduccion[7]
    hoja_traducciones["I" + str(i)].value = traduccion[8]
    hoja_traducciones["J" + str(i)].value = traduccion[9]
    hoja_traducciones["K" + str(i)].value = traduccion[10]

    i += 1

cache.save("outputExcelCreator/data/cache.xlsx")
cache.save("cache.xlsx")
