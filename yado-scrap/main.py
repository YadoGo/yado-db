from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.options import Options
from bs4 import BeautifulSoup
from get_data import get_data
from datetime import datetime
from generate_uuid import generate_uuid
import random

import time
import re

output_file_hotels = open("output/Hotels.sql", "a", encoding="utf-8")
output_file_sites = open("output/Sites.sql", "a", encoding="utf-8")
output_file_reviews = open("output/Reviews.sql", "a", encoding="utf-8")
output_file_images = open("output/Images.sql", "a", encoding="utf-8")
output_file_parametres = open("output/Parameters.sql", "a", encoding="utf-8")
output_file_owners = open("output/Owners.sql", "a", encoding="utf-8")

# data = get_data()

data = [(9309, 'Tarragona, Spain')]
for city in data:
    try:

        # Crear una instancia del controlador de Chrome
        chrome_options = Options()
        chrome_options.add_argument("--headless")

        driver = webdriver.Chrome()
        driver.get("https://www.kayak.com/hotels")

        # Abrir una nueva pestaña para buscar la ciudad
        driver.execute_script("window.open('', '_blank');")
        driver.switch_to.window(driver.window_handles[-1])
        driver.get("https://www.kayak.com/hotels")

        search_bar = driver.find_element(By.CSS_SELECTOR,
                                         "input[placeholder='Enter a city, hotel, airport or landmark']")
        time.sleep(2)
        search_bar.clear()
        search_bar.send_keys(city[1])

        time.sleep(3)

        # Simular presionar la tecla Enter
        search_bar.send_keys(Keys.RETURN)

        # Encontrar el icono de búsqueda y hacer clic en él
        search_icon = driver.find_element(By.XPATH, "//button[@aria-label='Search']")
        search_icon.click()

        # Simular esperar a que se carguen los resultados
        time.sleep(10)

        try:
            # Intentar localizar el elemento de la casilla de verificación por su ID
            checkbox_element = driver.find_element(By.ID, 'RYtK-RENTALS')

            # Obtener el valor actual del atributo 'checked'
            is_checked = checkbox_element.get_attribute('aria-checked')

            if is_checked == 'true':
                # Desmarcar la casilla de verificación si está marcada
                driver.execute_script("arguments[0].setAttribute('aria-checked', 'false')", checkbox_element)

        except:
            # El elemento no se encontró en la página
            pass  # No hacer nada si no se encuentra el elemento

        # Hacer clic en el botón "Show More" hasta que no haya más resultados
        first_time = True  # Bandera para controlar el tiempo de espera
        while True:
            try:
                show_more_button = driver.find_element(By.XPATH, "//div[@class='ULvh-button show-more-button']")
                show_more_button.click()
                if first_time:
                    time.sleep(15)  # Esperar 15 segundos la primera vez
                    first_time = False
                else:
                    time.sleep(5)  # Esperar 5 segundos en las siguientes iteraciones
            except:
                break  # Detener el bucle cuando no haya más botón "Show More"

        # Obtener los elementos de información del hotel
        hotel_elements = driver.find_elements(By.CSS_SELECTOR, ".FLpo-hotel-name a, .c3xth-hotel-name")

        for hotel_element in hotel_elements:

            hotel_id = generate_uuid()
            personal_id = '3c7b4247-dc17-4866-8d85-a10ac22576cf'

            

            try:
                # Obtener el nombre del hotel
                hotel_name = hotel_element.text.strip()

                # Obtener el enlace del hotel y abrirlo en una nueva ventana
                hotel_link = hotel_element.get_attribute("href")
                driver.execute_script("window.open('', '_blank');")
                driver.switch_to.window(driver.window_handles[-1])
                driver.get(hotel_link)

                # Esperar hasta que la nueva ventana se cargue completamente
                wait = WebDriverWait(driver, 10)
                wait.until(EC.title_contains(hotel_name))

                try:

                    # Localizar el botón "Leer más" y hacer clic en él si está presente
                    button_element = driver.find_element(By.XPATH,
                                                         "//button[contains(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'leer más')]")
                    button_element.click()
                    time.sleep(3)  # Esperar para que se cargue la descripción completa
                except:
                    pass

                # Obtener la descripción del hotel
                try:
                    description_element = driver.find_element(By.CLASS_NAME, "b40a-description-simple")
                    description = description_element.text.strip()
                except:
                    try:
                        description_element = driver.find_element(By.CLASS_NAME, "b40a-desc-text")
                        description = description_element.text.strip()
                    except:
                        description = "No description available"

                # Obtener la información de las estrellas del hotel
                try:
                    stars_element = driver.find_element(By.XPATH, "//div[contains(@aria-label, 'stars')]")
                    stars = int(stars_element.get_attribute("aria-label")[0])  # Obtener el número de estrellas
                except:
                    stars = 0

                try:
                    # Esperar a que la página cargue completamente (ajusta el tiempo de espera según sea necesario)
                    driver.implicitly_wait(5)
                    # Simular esperar a que se carguen los resultados
                    time.sleep(8)

                    # Obtener el contenido de la página web después de la carga completa
                    page_source = driver.page_source

                    # Parsear el HTML con BeautifulSoup
                    soup = BeautifulSoup(page_source, 'html.parser')

                    # Encuentra todos los elementos con la clase "LK1E-groupedRoomType"
                    habitaciones = soup.find_all(class_="LK1E-groupedRoomType")

                    if len(habitaciones) == 0:
                        print("No se encontraron habitaciones.")

                    while True:

                        # Itera a través de cada elemento de habitación
                        for habitacion in habitaciones:

                            # Encuentra el tipo de habitación
                            tipo_habitacion = habitacion.find(class_="LK1E-group-header-title").text

                            # Encuentra todos los proveedores y precios
                            proveedores = habitacion.find_all(class_="c5l3f-groupedRoomType")

                            # Itera a través de los proveedores
                            for proveedor in proveedores:

                                wait = WebDriverWait(driver, 10)
                                show_more_button = driver.find_element(By.XPATH, "//div[@class='c5l3f-deal-button']")
                                show_more_button.click()

                                # Espera un momento para que la nueva pestaña se abra
                                time.sleep(2)  # Ajusta el tiempo de espera según sea necesario

                                # Cambia el control a la nueva pestaña
                                driver.switch_to.window(driver.window_handles[-1])

                                # Obtiene la URL de la nueva pestaña
                                new_window_url = driver.current_url

                                # Cierra la nueva pestaña
                                driver.close()

                                driver.switch_to.window(driver.window_handles[-1])  # Cambiar a la ventana del hotel

                                nombre_proveedor = proveedor.find(class_="c5l3f-logo-col").img['alt']
                                print(f"Proveedor: {nombre_proveedor}")


                                def switch_case(case):
                                    switch_dict = {
                                        'Agoda.com': '1',
                                        'Booking.com': '2',
                                        'eDreams': '3',
                                        'Expedia': '4',
                                        'Homestay.com': '5',
                                        'Hotels.com': '6',
                                        'Preferred Hotels & Resorts': '7',
                                        'roomsXXL': '8',
                                        'Rumbo': '9',
                                        'Sembo': '10',
                                        'Stayforlong': '11',
                                        'Trip.com': '12',
                                        'Vrbo': '13'

                                    }
                                    return switch_dict.get(case, '0')


                                CompanyId = switch_case(nombre_proveedor)

                                if CompanyId != '0':
                                    precio_element = proveedor.find(class_="c5l3f-price-col").a
                                    if precio_element is not None:
                                        precio = precio_element.text.strip()
                                        precio = int(precio.replace("$", ""))

                                        # Generar la declaración SQL INSERT
                                        insert_statement_sites = f"INSERT INTO Sites (Id ,  OriginUrl , NightlyPrice , HotelId , CompanyId,TypeRomm) VALUES ('{generate_uuid()}','{new_window_url}', {precio}, '{hotel_id}', {CompanyId},'{tipo_habitacion}');"

                                        # Escribir el INSERT en el archivo hotels_insert.txt
                                        print(insert_statement_sites + "\n")
                                        output_file_sites.write(insert_statement_sites + "\n")

                        # Comprueba si el botón "Show fewer deals" está presente, si no, sale del bucle
                        if not driver.find_elements(By.XPATH, "//div[contains(@class, 'c5V50-show-fewer-deals')]"):
                            break
                except Exception as e:
                    print(f"Ocurrió un error: {e}")

                # Obtener todas las revisiones
                reviews = driver.find_elements(By.XPATH, "//div[@class='JxVY']")

                for review in reviews:
                    try:
                        rating_element = review.find_element(By.XPATH, ".//p[contains(@class, 'JxVY-heading')]")
                        rating_text = rating_element.text.strip()

                        # Extract the positive and negative comment elements within the same <div> element
                        comment_elements = review.find_elements(By.XPATH, ".//div/p[contains(@class, 'JxVY-text')]")

                        if len(comment_elements) >= 2:
                            # The first element is the positive comment, and the second is the negative comment
                            positive_comment_text = comment_elements[0].text.strip()
                            negative_comment_text = comment_elements[1].text.strip()
                        else:
                            positive_comment_text = "No positive comment available"
                            negative_comment_text = "No negative comment available"

                        rating_parts = rating_text.split()  # Dividir el texto en partes

                        # Verificar si hay al menos dos partes (número y texto)
                        if len(rating_parts) >= 2:
                            rating_number = rating_parts[0]  # El primer elemento es el número
                        else:
                            rating_number = "No rating available"
                            positive_comment_text = "No positive comment available"
                            negative_comment_text = "No negative comment available"
                    except:
                        rating_number = "No rating available"
                        positive_comment_text = "No positive comment available"
                        negative_comment_text = "No negative comment available"
                    # Obtener la fecha y hora actual
                    current_datetime = datetime.utcnow()

                    positive_comment_text = positive_comment_text.replace('"', "'")
                    negative_comment_text = negative_comment_text.replace('"', "'")

                    # Generar la declaración SQL INSERT
                    insert_statement_reviews = f"INSERT INTO Reviews (Id, Qualification, PositiveComment, NegativeComment, UserId, HotelId, Date) VALUES ('{generate_uuid()}', {rating_number}, \"{positive_comment_text}\", \"{negative_comment_text}\", '{personal_id}', '{hotel_id}', '{current_datetime}');"

                    # Escribir el INSERT en el archivo hotels_insert.txt
                    print(insert_statement_reviews + "\n")
                    output_file_reviews.write(insert_statement_reviews + "\n")

                try:
                    Position = 1
                    wait = WebDriverWait(driver, 5)
                    button_element = wait.until(EC.presence_of_element_located(
                        (By.XPATH, "//div[@class='Iqt3-button-content' and contains(text(), 'View all photos')]")))
                    button_element.click()

                    # Espera un tiempo para que las fotos se carguen (ajusta el tiempo de espera según sea necesario)
                    time.sleep(5)
                    num_images_captured = 1  # Contador de imágenes capturadas

                    while num_images_captured <= 15:
                        # Encuentra la URL de la imagen dentro del div con la clase "f800-image-container"
                        image_container = driver.find_element(By.CLASS_NAME, 'f800-image-container')
                        image_url = image_container.value_of_css_property('background-image')

                        # La URL de la imagen incluye comillas, las eliminamos
                        image_url = image_url.replace('url("', '').replace('")', '')

                        # Abre una nueva ventana del navegador con la URL de la imagen completa
                        driver.execute_script(f'window.open("{image_url}");')

                        # Cambia el controlador a la nueva ventana
                        driver.switch_to.window(driver.window_handles[-1])

                        # Obtiene la codificación de la imagen
                        image_data = driver.find_element(By.TAG_NAME, 'img').get_attribute('src')

                        # Cierra la ventana del navegador
                        driver.close()

                        # Cambia de nuevo al controlador principal
                        driver.switch_to.window(driver.window_handles[-1])

                        # Encuentra el elemento que contiene la descripción
                        description_element = driver.find_element(By.CLASS_NAME, 'AGBC-photo-description')

                        # Obtiene el texto de la descripción
                        description_text = description_element.text

                        #  Generar la declaración SQL INSERT
                        insert_statement_images = f"INSERT INTO Images (Id,ImagePath, Description, Position, HotelId ) VALUES ('{generate_uuid()}','{image_data}',\"{description_text}\", {Position}, '{hotel_id}');"

                        print(insert_statement_images + "\n")
                        output_file_images.write(insert_statement_images + "\n")

                        # Incrementar la posicion
                        Position += 1

                        # Espera hasta que el botón "Siguiente" sea visible y haga clic en él
                        button_element = wait.until(
                            EC.presence_of_element_located((By.XPATH, "//button[contains(@aria-label, 'next image')]")))
                        button_element.click()
                        time.sleep(2)

                        # Incrementa el contador de imágenes capturadas
                        num_images_captured += 1

                except Exception as e:
                    print(f"Se produjo un error: {str(e)}")

                # Obtener la dirección del hotel
                try:
                    address_element = driver.find_element(By.XPATH, "//div[@class='c3xth-address']")
                    address = address_element.text.strip()
                except:
                    address = city[1]  # Establecer el nombre de la ciudad como dirección

                # Obtener la URL de Google Maps para obtener latitud y longitud
                try:
                    google_maps_url = f"https://www.google.com/maps/search/{hotel_name}"
                    driver.execute_script(f'window.open("{google_maps_url}", "_blank");')
                    driver.switch_to.window(driver.window_handles[-1])
                    WebDriverWait(driver, 15).until(
                        EC.presence_of_element_located((By.XPATH, "//button[contains(@aria-label, 'Aceptar todo')]")))

                    # Aceptar las cookies en Google Maps
                    try:
                        accept_cookies_button = driver.find_element(By.XPATH,
                                                                    "//button[contains(@aria-label, 'Aceptar todo')]")
                        accept_cookies_button.click()
                        time.sleep(5)
                    except:
                        pass

                    lat_lng_match = re.search(r'@([\d.-]+),([\d.-]+)', driver.current_url)
                    if lat_lng_match:
                        latitude = float(lat_lng_match.group(1))
                        longitude = float(lat_lng_match.group(2))
                    else:
                        latitude = 0.0
                        longitude = 0.0
                except:
                    latitude = 0.0
                    longitude = 0.0

                driver.close()  # Cerrar la ventana de Google Maps
                time.sleep(2)

                driver.switch_to.window(driver.window_handles[-1])  # Cambiar a la ventana del hotel

                # Generar la declaración SQL INSERT
                insert_statement_hotels = f"INSERT INTO Hotels (Id, Name, Description, Stars, Address, Latitude, Longitude, PopulationId, NumVisited) VALUES ('{hotel_id}','{hotel_name}', \"{description}\", {stars}, \"{address}\", {latitude}, {longitude}, {city[0]}, 0);"


            except Exception as e:
                print(f"Error en el hotel '{hotel_name}': {str(e)}")
                # Continuar con el siguiente hotel en la misma ciudad
                continue
            driver.close()
            time.sleep(2)

            driver.switch_to.window(driver.window_handles[-1])  # Cambiar de nuevo a la ventana principal


            # Función para generar valores aleatorios para parámetros numéricos (en un rango específico)
            def generate_numeric_value(min_value, max_value):
                return random.randint(min_value, max_value)


            # Generar la declaración SQL INSERT
            # Construye la declaración SQL con los valores aleatorios
            insert_statement_parametres = f"INSERT INTO Parameters (HotelId,BicycleRental, Solarium, GolfCourse, Massage, " \
                                          f"FitnessCentre, FreeCancellation, SelfCatering, BreakfastIncluded, " \
                                          f"BreakfastDinnerIncluded, TwinBeds, DoubleBed, LargeDoubleBed, " \
                                          f"ExtraLargeDoubleBed, NonSmokingRooms, Parking, VeryGoodWifi, " \
                                          f"FamilyRooms, SwimmingPool, RoomService, PetsAllowed, " \
                                          f"FacilitesDisabledGuest, SpaWellnessCentre, AeroportSchuttle, " \
                                          f"Restaurant, ReceptionAlwaysOpen, Kitchen, PrivateBathroom, " \
                                          f"AirConditioning, LaptopFriendlyWorkspace, Bath, PrivatePool, " \
                                          f"Terrace, Balcony, BlatScreenTv, WashingMachine, Patio, " \
                                          f"Soundproofing, ViewHotel, SeaView, WheelchairAccessible, " \
                                          f"ToiletGrabRails, HigherLevelToilet, LowerBathroomSink, " \
                                          f"EmergencyCordBathroom, VisualAidsBraille, VisualAidsTactileSigns) VALUES " \
                                          f"('{hotel_id}', {generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)}, " \
                                          f"{generate_numeric_value(0, 1)}, {generate_numeric_value(0, 1)});"

            # Escribir el INSERT en el archivo images_insert.txt
            print(insert_statement_parametres + "\n")
            output_file_parametres.write(insert_statement_parametres + "\n")

            insert_statement_owners = f"INSERT INTO Owners (Id , UserId, HotelId ) VALUES ('{generate_uuid()}','{personal_id}','{hotel_id}');"

            # Escribir el INSERT en el archivo hotels_insert.txt
            print(insert_statement_owners + "\n")
            output_file_owners.write(insert_statement_owners + "\n")

            # Escribir el INSERT en el archivo hotels_insert.txt
            print(insert_statement_hotels + "\n")
            output_file_hotels.write(insert_statement_hotels + "\n")

    except Exception as e:
        print(f"Error en la ciudad '{city[1]}': {str(e)}")
        driver.quit()  # Cerrar la instancia del navegador en caso de error

    output_file_hotels.write("\n")

    # Cerrar el navegador al finalizar
    driver.quit()

# Cerrar el archivo .txt
output_file_images.close()
output_file_reviews.close()
output_file_sites.close()
output_file_hotels.close()
output_file_parametres.close()