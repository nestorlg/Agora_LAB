import re

consonantes = "BCDFGHJKLMNÑPRSTVWXYZ"
punto = "."
barra = "/"
max_len = 0
palabra_original = ""


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


def get_main_sale_formats(nombre_grupo, hoja):
    resultado = []

    i = 2
    while hoja["A" + str(i)].value is not None:
        grupos_asignados = hoja["J" + str(i)].value
        producto_principal = hoja["A" + str(i)].value.upper()
        ratio = hoja["B" + str(i)].value
        if grupos_asignados is not None and nombre_grupo in grupos_asignados:
            if ratio is None:
                resultado.append(producto_principal)
            else:
                base = producto_principal.split("(")[0][:-1]
                formato = producto_principal.split("(")[1][:-1]
                resultado.append(formato + " " + base)

        i += 1

    return resultado


def get_addin_sale_formats(nombre_grupo, hoja):
    resultado = []

    i = 2
    while hoja["A" + str(i)].value is not None:
        grupos_asignados = hoja["K" + str(i)].value
        producto_principal = hoja["A" + str(i)].value.upper()
        ratio = hoja["B" + str(i)].value
        if grupos_asignados is not None and nombre_grupo in grupos_asignados:
            if ratio is None:
                resultado.append(producto_principal)
            else:
                base = producto_principal.split("(")[0][:-1]
                formato = producto_principal.split("(")[1][:-1]
                resultado.append(formato + " " + base)

        i += 1

    return resultado


def create_map(sale_centers, width, height):
    map_content = (
        "<map>\n"
        "\t<size width=\"%d\" height=\"%d\" resizeMode=\"shrink\"/>\n"
        "\t<background>LargeTile10</background>\n"
        "\t<tables>\n" % (width, height)
    )

    x = 25
    y = 25

    for i, sale_center in enumerate(sale_centers):
        if sale_center[0].find("B") != -1:
            image = "_Bar00"
        elif sale_center[0].find("S") != -1:
            image = "_Table00"
        elif sale_center[0].find("T") != -1:
            image = "_Table10"
        else:
            image = "_Table11"

        sale_center_id = i + 1

        for location in sale_center[3]:
            map_content += (
                "\t\t<table "
                "x=\"%d\" "
                "y=\"%d\" "
                "saleCenterId=\"%s\" "
                "saleLocationName=\"%s\" "
                "image=\"%s\" "
                "rotation=\"0\" "
                "deltaX=\"0\" "
                "deltaY=\"0\"/>\n" % (
                    x, y, sale_center_id, location, image
                )
            )

            if sale_center_id == 1:
                x += 50
            else:
                x += 75

            if width - x < 75:
                x = 25
                y += 100

    map_content += (
        "\t</tables>\n"
        "\t<furnitures/>\n"
        "</map>"
    )

    return map_content
