import openpyxl as op
import random as rd
import string as st
import re
import os

from unidecode import unidecode as ud

import Global as glb

consonantes = "BCDFGHJKLMNÑPRSTVWXYZ"
punto = "."
barra = "/"
max_len = 0
palabra_original = ""


def find_in_cache(flag, nombre, categoria=""):
    # Se abre la cache y se busca el producto por su nombre
    archivo_cache = op.load_workbook(glb.ruta_cache)
    cache = archivo_cache["Productos"]

    i = 2
    if flag == "CAT":
        while cache["A" + str(i)].value is not None:
            # Si se encuentra el producto, se devuelve el valor de la segunda columna de la cache
            if ud(cache["A" + str(i)].value.upper()) == ud(nombre.upper()):
                if cache["B" + str(i)].value is None:
                    break

                return cache["B" + str(i)].value

            i += 1

        return ""

    elif flag == "IMG":
        # Puede que no sea necesaria una imagen
        if ud(categoria.upper()) not in [
            "PASTAS", "CARNES", "PESCADOS", "BOCADILLOS", "OTROS", "VINOS TINTOS", "VINOS BLANCOS", "VINOS ROSADOS",
            "PIZZAS", "HAMBURGUESAS", "SANDWICHES", "CROISSANTS"
        ]:
            while cache["A" + str(i)].value is not None:
                # Si se encuentra el producto, se devuelve el valor de la quinta columna de la cache
                if ud(cache["A" + str(i)].value.upper()) == ud(nombre.upper()):
                    if cache["E" + str(i)].value is None or not os.path.exists(
                            os.getcwd() + "\\" + str(cache["E" + str(i)].value)):
                        break

                    return cache["E" + str(i)].value

                i += 1
        else:
            return ""

    elif flag == "TIP":
        while cache["A" + str(i)].value is not None:
            # Si se encuentra el producto, se devuelve el valor de la tercera columna de la cache
            if ud(cache["A" + str(i)].value.upper()) == ud(nombre.upper()):
                if cache["C" + str(i)].value is None:
                    break

                tipo = cache["C" + str(i)].value

                return tipo

            i += 1

        # Si no se ha encontrado ninguna coincidencia en la cache, se consulta en el diccionario de tipos y ordenes

        return get_preparation_type_order(categoria, flag=1)

    elif flag == "ORD":
        while cache["A" + str(i)].value is not None:
            # Si se encuentra el producto, se devuelve el valor de la cuarta columna de la cache
            if ud(cache["A" + str(i)].value.upper()) == ud(nombre.upper()):
                if cache["D" + str(i)].value is None:
                    break

                orden = cache["D" + str(i)].value

                return orden

            i += 1

        # Si no se ha encontrado ninguna coincidencia en la cache, se consulta en el diccionario de tipos y ordenes

        return get_preparation_type_order(categoria, flag=2)

    else:
        print("ATENCIÓN: el valor del flag (%s) es incorrecto" % flag)
        return "ERROR!!!"


def get_allergens(nombre, categoria):
    alergenos = []

    if (
            "VINOS" in categoria
            or
            categoria == "CHAMPAGNE"
            or
            categoria == "ZUMOS"):
        alergenos.append("Sulfitos")

    if (
            categoria == "PESCADOS"
            or
            "ATÚN" in nombre):
        alergenos.append("Pescado")

    if (
            categoria == "CAFÉ" and "SOLO" not in nombre and "ESPRESSO" not in nombre
            or
            categoria == "POSTRES" and "HELADO" in nombre
            or "QUESO" in nombre):
        alergenos.append("Lácteos")

    if (
            categoria == "CERVEZAS" and " SIN " not in nombre
            or categoria == "CAFÉ"
            or categoria == "POSTRES"):
        alergenos.append("Gluten")

    if (
            "TORTILLA" in nombre
            or
            "HUEVO" in nombre):
        alergenos.append("Huevos")

    if (
            "CANGREJO" in nombre
            or
            "GAMBA" in nombre
            or
            "LANGOST" in nombre):
        alergenos.append("Crustáceos")

    if (
            categoria == "SALSAS"
            or
            categoria == "ENSALADAS"):
        alergenos.append("Mostaza")

    alergenos_con_comas = ", ".join(alergenos)

    return alergenos_con_comas


def get_preparation_type_order(categoria, flag):
    with open("outputExcelCreator/data/diccionario_tipos_ordenes.txt", "r", encoding="utf-8") as diccionario:
        for linea in diccionario.readlines():
            if categoria == linea[:-1].split(";")[0]:
                return linea[:-1].split(";")[flag]

    return ""


def text_generator(nombre, con_imagen, limite=0):
    global max_len

    if limite == 0:
        max_len = 20
    else:
        max_len = limite

    texto_documento = cut_word(nombre.upper().strip())
    if con_imagen:
        max_len = 10
        texto_boton = cut_word(nombre.upper().strip())
        if len(texto_boton) > max_len:
            texto_boton = texto_documento
        return texto_boton, texto_documento
    else:
        texto_boton = botton_text_without_image(nombre.upper().strip())
        return texto_boton, texto_documento


def botton_text_without_image(producto):
    global max_len
    max_len = 10

    palabras_texto = producto.split(" ")
    resultado = ""

    for palabra_texto in palabras_texto:
        resultado += cut_word(palabra_texto) + " "

    return resultado.strip()


def cut_word(palabra):
    if len(palabra) <= max_len:
        return palabra  # Si la palabra no supera el máximo, no es necesario abreviar
    else:
        global palabra_original

        # La palabra "DE" se puede omitir
        if " DE " in palabra:
            palabra = palabra.replace(" DE ", " ")

        # La palabra "EN" se puede omitir
        if " EN " in palabra:
            palabra = palabra.replace(" EN ", " ")

        # La palabra "A LA" se puede convertir en AL
        if " A LA " in palabra:
            palabra = palabra.replace(" A LA ", " AL ")

        # Si la palabra es "Y" o "AND", se sustituye por "&"
        if "Y" in palabra:
            palabra = palabra.replace(" Y ", " & ")

        # Si la palabra es "MEDIA", se sustituye por "1/2"
        if "Y" in palabra:
            palabra = palabra.replace("MEDIA RACIÓN", "MEDIA")

        if "AND" in palabra:
            palabra = palabra.replace(" AND ", " & ")

        # Cambiamos los guiones por espacios
        if "-" in palabra:
            palabra = palabra.replace("-", " ")

        palabra_original = palabra

        sub_palabras = palabra.split(' ')
        posibilidades = [palabra]  # La primera posibilidad es la palabra sin abreviar

        i = 0
        for sub_palabra in sub_palabras:  # Intentamos abreviar cada una de las palabras
            # Si la palabra consta de una o dos letras, o es una cadena numérica, se añade tal cual, sin abreviar
            if len(sub_palabra) > 2 and not re.match(r"^[+-]?\d+(?:[,|.]\d*)?$", sub_palabra):
                # Algunas palabras no se van a abreviar en este bucle
                if (sub_palabra != "EXTRA" and sub_palabra != "CON" and sub_palabra != "SIN" and sub_palabra != "AL"
                        and sub_palabra != "SIN" and sub_palabra != "AÑOS"):
                    posibilidades_actual = posibilidades.copy()
                    for posibilidad in posibilidades_actual:
                        # Abreviamos con solo la primera letra
                        nueva_sub_palabra = sub_palabra[0] + punto
                        if len(nueva_sub_palabra) < len(sub_palabra):
                            nueva_posibilidad = posibilidad.replace(sub_palabra, nueva_sub_palabra)
                            posibilidades.append(nueva_posibilidad)

                        # Abreviamos hasta la primera consonante
                        nueva_sub_palabra = sub_palabra[0:next_cons_pos(sub_palabra, 1)] + punto
                        if len(nueva_sub_palabra) < len(sub_palabra):
                            nueva_posibilidad = posibilidad.replace(sub_palabra, nueva_sub_palabra)
                            posibilidades.append(nueva_posibilidad)

                        # Abreviamos hasta la segunda consonante
                        nueva_sub_palabra = sub_palabra[0:next_cons_pos(sub_palabra, 2)] + punto
                        if len(nueva_sub_palabra) < len(sub_palabra):
                            nueva_posibilidad = posibilidad.replace(sub_palabra, nueva_sub_palabra)
                            posibilidades.append(nueva_posibilidad)

            i += 1

        for i in range(len(posibilidades)):
            posibilidad = posibilidades[i]
            # Comprobamos si a la palabra actual se le puede aplicar alguna regla especial
            if "EXTRA " in posibilidad and posibilidad.startswith("EXTRA") is False:
                # Si la palabra es "EXTRA" y no es la primera palabra del texto de producto, se sustituye por "X-"
                posibilidades[i] = posibilidad.replace(" EXTRA ", " x/")
                posibilidad = posibilidades[i]
            if "SIN " in posibilidad:
                # Si la palabra es "SIN", se sustituye por "s/"
                posibilidades[i] = posibilidad.replace(" SIN ", " s/")
                posibilidad = posibilidades[i]
            if "CON " in posibilidad:
                # Si la palabra es "CON", se sustituye por "c/"
                posibilidades[i] = posibilidad.replace(" CON ", " c/")
                posibilidad = posibilidades[i]
            if "AL " in posibilidad:
                # Si la palabra es "AL", se sustituye por "a/"
                posibilidades[i] = posibilidad.replace(" AL ", " a/")
                posibilidad = posibilidades[i]
            if " AÑOS" in posibilidad:
                # Si la palabra es "AÑOS", se sustituye por "a"
                posibilidades[i] = posibilidad.replace(" AÑOS", "yr")

            # Las posibilidades que contienen varias abreviaturas seguidas con una sola letra son poco atractivas.
            # Se procede a eliminar los puntos y espacios en esos casos

            posibilidad = posibilidades[i]

            for j in range(len(posibilidad) - 4):
                if posibilidad[j + 1] == punto and posibilidad[j + 2] == ' ' and posibilidad[j + 4] == punto and j == 0:
                    posibilidades[i] = posibilidad.replace(posibilidad[j:j + 5], posibilidad[j] + posibilidad[j + 3])
                    break
                elif (posibilidad[j + 1] == punto and posibilidad[j + 2] == ' ' and posibilidad[j + 4] == punto
                      and j > 0 and posibilidad[j - 1] == " "):
                    posibilidades[i] = posibilidad.replace(posibilidad[j:j + 5], posibilidad[j] + posibilidad[j + 3])
                    break

            # Las posibilidades que contienen varias abreviaturas seguidas con una sola letra y separados por 'Y' son
            # poco atractivas. Se procede a eliminar los puntos y espacios en esos casos, y cambiar 'Y' por '&'

            posibilidad = posibilidades[i]

            for j in range(len(posibilidad) - 6):
                if (posibilidad[j + 1] == punto and posibilidad[j + 2] == ' ' and posibilidad[j + 3] == '&'
                        and posibilidad[j + 4] == ' ' and posibilidad[j + 6] == punto and j == 0):
                    posibilidades[i] = (
                        posibilidad.replace(posibilidad[j:j + 7], posibilidad[j] + "&" + posibilidad[j + 5]))
                    break
                elif (posibilidad[j + 1] == punto and posibilidad[j + 2] == ' ' and posibilidad[j + 3] == '&'
                      and posibilidad[j + 4] == ' ' and posibilidad[j + 6] == punto
                      and j > 0 and posibilidad[j - 1] == " "):
                    posibilidades[i] = (
                        posibilidad.replace(posibilidad[j:j + 7], posibilidad[j] + "&" + posibilidad[j + 5]))
                    break

        # Ordenamos en funcion del numero de abreviaciones que existan
        posibilidades = sorted(posibilidades, key=sorting_criteria, reverse=False)

        i = 0
        for posibilidad in posibilidades:
            if len(posibilidad) <= max_len:
                break
            i += 1

        if i >= len(posibilidades):
            return palabra

        return posibilidades[i]


def sorting_criteria(palabra):
    count = 0

    siglas_palabra = ""
    for sub_palabra_original in palabra_original.split(" "):
        siglas_palabra += sub_palabra_original[0]

    sub_palabras = palabra.split(" ")
    for sub_palabra in sub_palabras:
        if punto in sub_palabra:
            count += 1

        if barra in sub_palabra:
            count += 1

        if sub_palabra in siglas_palabra:
            count += 1

    return count, -len(palabra)


def next_cons_pos(palabra, orden_consonante):
    consonantes_encontradas = orden_consonante
    for i in range(1, len(palabra) - 1):
        if palabra[i] in consonantes:
            consonantes_encontradas -= 1

        if consonantes_encontradas == 0:
            return i + 1

    return len(palabra) - 1


def get_abreviated_format(formato):
    if formato == "CHUPITO":
        return "CHP"

    if formato == "BOTELLA":
        return "BOT"

    if formato == "RACIÓN":
        return "RAC"

    if formato == "MEDIA RACIÓN":
        return "MED"

    return formato


def check_password(clave, perfil, admin):
    if admin:
        if perfil == "Administrador":
            if clave == "None" or clave == "":
                print("Se ha generado la clave aleatoria", clave)

            clave = str(clave)
            if (
                    not any(caracter.islower() for caracter in clave)
                    or not any(caracter.isupper() for caracter in clave)
                    or not any(caracter.isdigit() for caracter in clave)
                    or all(caracter.isalnum() for caracter in clave)):
                clave = generate_random_key(admin)

    else:
        clave = generate_random_key(admin)

    return clave


def generate_random_key(admin):
    if admin:
        caracteres = st.ascii_letters + st.digits + st.punctuation
        while True:
            clave = ''.join(rd.choice(caracteres) for _ in range(rd.randint(7, 12)))
            if (
                    any(c.islower() for c in clave) and
                    any(c.isupper() for c in clave) and
                    any(c.isdigit() for c in clave) and
                    any(c in st.punctuation for c in clave) and
                    sum(clave.count(caracter_especial) for caracter_especial in st.punctuation) < 3):
                return clave
    else:
        return ''.join(rd.choice(st.digits) for _ in range(4))


def normalizar_nombre_archivo(nombre_archivo):
    if not isinstance(nombre_archivo, str):
        nombre_archivo = str(nombre_archivo)
    # Remover la extensión
    nombre_sin_extension, extension = os.path.splitext(nombre_archivo)
    # Insertar guiones entre minúsculas y mayúsculas, y entre letras y números
    nombre_con_guiones = re.sub(r'(?<=[a-záéíóúüñ])(?=[A-ZÁÉÍÓÚÜÑ0-9])', '-', nombre_sin_extension)
    nombre_con_guiones = re.sub(r'(?<=[A-ZÁÉÍÓÚÜÑ])(?=[A-ZÁÉÍÓÚÜÑ][a-záéíóúüñ])', '-', nombre_con_guiones)
    nombre_con_guiones = re.sub(r'(?<=[0-9])(?=[A-Za-zÁÉÍÓÚÜÑáéíóúüñ])', '-', nombre_con_guiones)
    # Convertir a minúsculas
    nombre_con_guiones = nombre_con_guiones.lower()
    # Reemplazar caracteres no alfanuméricos y '&' por guiones
    nombre_normalizado = re.sub(r'[^a-z0-9ñáéíóúü&]+', '-', nombre_con_guiones, flags=re.IGNORECASE)
    # Eliminar guiones duplicados
    nombre_normalizado = re.sub(r'-+', '-', nombre_normalizado)
    # Eliminar guiones al inicio y al final
    nombre_normalizado = nombre_normalizado.strip('-')
    return nombre_normalizado
