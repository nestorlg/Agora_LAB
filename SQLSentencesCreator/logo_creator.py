import os

from PIL import Image, ImageFilter


def generate_logos(folder_path):
    image_files = [f for f in os.listdir(folder_path) if
                   os.path.isfile(os.path.join(folder_path, f))]  # Carpeta de la imagen

    if not image_files:
        raise ValueError("No se encontró ninguna imagen en la carpeta especificada.")

    image_path = os.path.join(folder_path, image_files[0])  # Primera imagen que encuentra el programa

    img = Image.open(image_path)

    # Diferentes tamaños y nombres de los logos
    sizes = [
        {'filename': 'logo-asistencia.png', 'dimensions': (250, 250), 'bw': False},
        {'filename': 'logo-a4.png', 'dimensions': (250, 250), 'bw': True},
        {'filename': 'logo-admin-web.png', 'dimensions': (360, 112), 'bw': False},
        {'filename': 'logo-qr.png', 'dimensions': (250, 250), 'bw': True},
        {'filename': 'logo-smartmenu.png', 'dimensions': (960, 540), 'bw': False},
        {'filename': 'logo-ticket.png', 'dimensions': (512, 192), 'bw': True},
    ]

    for size_info in sizes:
        filename = size_info['filename']
        dimensions = size_info['dimensions']
        convert_to_bw = size_info.get('bw', False)

        if convert_to_bw:
            # Aumentar la resolución antes de reducir para preservar detalles
            scale_factor = 4
            large_size = (dimensions[0] * scale_factor, dimensions[1] * scale_factor)
            img_resized = img.resize(large_size, Image.Resampling.LANCZOS)

            # Convertir a escala de grises
            img_resized = img_resized.convert('L')

            # Aplicar un desenfoque leve para suavizar el ruido
            img_resized = img_resized.filter(ImageFilter.GaussianBlur(radius=1))

            # Binarización con un umbral ajustado y menor agresividad
            img_resized = img_resized.point(lambda p: 0 if p < 220 else 255, mode='1')

            # Reducir al tamaño final requerido
            img_resized = img_resized.resize(dimensions, Image.Resampling.LANCZOS)

            # Aplicar un filtro de contorno suave para mejorar la definición
            img_resized = img_resized.filter(ImageFilter.EDGE_ENHANCE_MORE)
        else:
            # Redimensionar la imagen usando la máxima calidad sin sobreescalar
            img_resized = img.resize(dimensions, Image.Resampling.LANCZOS)

        # Guardar la imagen con la máxima calidad en la misma carpeta
        save_path = os.path.join(folder_path, filename)
        img_resized.save(save_path, quality=100)


with open("temp.txt", "r") as f:
    lineas = f.readlines()

project = lineas[0][:-1]
log_file_name = lineas[1]

# Define la ruta de la carpeta donde está la imagen
generate_logos("projects/" + project + "/logos")
