from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.keys import Keys
from bs4 import BeautifulSoup
import random
import uuid

import time
import re

# Ruta al ChromeDriver en tu sistema
chrome_driver_path = "C:\\Users\\David\\Desktop\\chromedriver.exe"

# Configurar las opciones del controlador de Chrome
chrome_options = Options()
chrome_options.binary_location = chrome_driver_path


# Lista de ciudades para buscar hoteles
cities = [
    "Tortosa",
]


# Archivo .txt para escribir los INSERTs de hoteles
output_file_hotels = open("Hotels.sql", "a", encoding="utf-8")

# Archivo .txt para escribir los INSERTs de sites
output_file_sites= open("Sites.sql", "a", encoding="utf-8")

# Archivo .txt para escribir los INSERTs de reviews
output_file_reviews= open("Reviews.sql", "a", encoding="utf-8")

# Archivo .txt para escribir los INSERTs de reviews
output_file_images= open("Images.sql", "a", encoding="utf-8")

# Archivo .txt para escribir los INSERTs de parametres
output_file_parametres= open("Parameters.sql", "a", encoding="utf-8")


# Inicializar el ID del INSERT
insert_id = 0

# Inicializo el id del hotel
random_uuid_hotel = uuid.uuid4()
UUID_hotel = random_uuid_hotel

# Inicializo el id de sites
random_uuid_sites = uuid.uuid4()
UUID_Sites = random_uuid_sites

# Inicializo el id de reviews
random_uuid_reviews = uuid.uuid4()
UUID_reviews = random_uuid_reviews

# Inicializo el id de iamges
random_uuid_images = uuid.uuid4()
UUID_images = random_uuid_images

# Inicializo el id de parametres
random_uuid_parametres = uuid.uuid4()
UUID_parametres = random_uuid_parametres

for city in cities:
    try:

        # Crear una instancia del controlador de Chrome
        driver = webdriver.Chrome(options=chrome_options)
        driver.get("https://www.kayak.com/hotels")
        
        # Abrir una nueva pestaña para buscar la ciudad
        driver.execute_script("window.open('', '_blank');")  # Abrir nueva pestaña
        driver.switch_to.window(driver.window_handles[-1])  # Cambiar al control de la nueva pestaña
        driver.get("https://www.kayak.com/hotels")  # Cargar la página de búsqueda de hoteles

        # Buscar la barra de búsqueda y escribir la ciudad
        search_bar = driver.find_element(By.CSS_SELECTOR, "input[placeholder='Enter a city, hotel, airport or landmark']")
        time.sleep(2)
        search_bar.clear()  # Limpiar el campo de búsqueda
        search_bar.send_keys(city)

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
                    time.sleep(5)   # Esperar 5 segundos en las siguientes iteraciones
            except:
                break  # Detener el bucle cuando no haya más botón "Show More"
        
        # Obtener los elementos de información del hotel
        hotel_elements = driver.find_elements(By.CSS_SELECTOR, ".FLpo-hotel-name a, .c3xth-hotel-name")

       
        for hotel_element in hotel_elements:
            
            try:
                # Obtener el nombre del hotel
                hotel_name = hotel_element.text.strip()
                
                # Obtener el enlace del hotel y abrirlo en una nueva ventana
                hotel_link = hotel_element.get_attribute("href")
                driver.execute_script("window.open('', '_blank');")
                driver.switch_to.window(driver.window_handles[-1])
                driver.get(hotel_link)
                
                # Esperar hasta que la nueva ventana se cargue completamente
                wait = WebDriverWait(driver, 10)  # Puedes ajustar el tiempo límite (en segundos) según sea necesario
                wait.until(EC.title_contains(hotel_name))
                
                try:

                    
                    # Localizar el botón "Leer más" y hacer clic en él si está presente
                    button_element = driver.find_element(By.XPATH, "//button[contains(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'leer más')]")
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
                                        'Trip.com': '11',
                                        'roomsXXL': '12',
                                        'Vrbo': '13',
                                        'Super.com': '14',
                                        'Priceline': '15'

                                    }
                                    return switch_dict.get(case, '0')
                                
                                CompanyId = switch_case(nombre_proveedor)

                                if CompanyId != '0':
                                    precio_element = proveedor.find(class_="c5l3f-price-col").a
                                    if precio_element is not None:
                                        precio = precio_element.text.strip()

                                        # Generar la declaración SQL INSERT
                                        insert_statement_sites = f"INSERT INTO sites (UUID,Type_room, UrlOrigin , NightlyPrice , HotelUuid , CompanyId ) VALUES ('{UUID_Sites}','{tipo_habitacion}','{new_window_url}', '{precio}', {UUID_hotel}, {CompanyId});"

                                        # Escribir el INSERT en el archivo hotels_insert.txt
                                        print(insert_statement_sites + "\n")
                                        output_file_sites.write(insert_statement_sites + "\n")

                                        # Inicializo el id de sites
                                        random_uuid_sites = uuid.uuid4()
                                        UUID_Sites = random_uuid_sites

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

                    # Generar la declaración SQL INSERT
                    insert_statement_reviews = f"INSERT INTO reviews (UUID, Qualification, PositiveComment, NegativeComment, UserId, HotelUuid) VALUES ('{UUID_reviews}','{rating_number}','{positive_comment_text}', '{negative_comment_text}', {stars}, '{UUID_hotel}');"

                    # Escribir el INSERT en el archivo hotels_insert.txt
                    print(insert_statement_reviews + "\n")
                    output_file_reviews.write(insert_statement_reviews + "\n")

                    # Inicializo el id de reviews
                    random_uuid_reviews = uuid.uuid4()
                    UUID_reviews = random_uuid_reviews


                try:
                    Position = 1
                    wait = WebDriverWait(driver, 5)
                    button_element = wait.until(EC.presence_of_element_located((By.XPATH, "//div[@class='Iqt3-button-content' and contains(text(), 'View all photos')]")))
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
                        insert_statement_images = f"INSERT INTO images (Id,Image,Description,Position, HotelUuid ) VALUES ('{UUID_images}','{image_data}','{description_text}', '{Position}', {UUID_hotel});"

                        # Escribir el INSERT en el archivo hotels_insert.txt
                        print(insert_statement_images+ "\n")
                        output_file_images.write(insert_statement_images + "\n")

                        # Incrementar el ID de sites
                        random_uuid_images = uuid.uuid4()
                        UUID_images = random_uuid_images

                        # Incrementar la posicion
                        Position += 1

                        # Espera hasta que el botón "Siguiente" sea visible y haga clic en él
                        button_element = wait.until(EC.presence_of_element_located((By.XPATH, "//button[contains(@aria-label, 'next image')]")))
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
                    address = city  # Establecer el nombre de la ciudad como dirección

                # Obtener la URL de Google Maps para obtener latitud y longitud
                try:
                    google_maps_url = f"https://www.google.com/maps/search/{hotel_name}"
                    driver.execute_script(f'window.open("{google_maps_url}", "_blank");')
                    driver.switch_to.window(driver.window_handles[-1])
                    WebDriverWait(driver, 15).until(EC.presence_of_element_located((By.XPATH, "//button[contains(@aria-label, 'Aceptar todo')]")))
                    
                    # Aceptar las cookies en Google Maps
                    try:
                        accept_cookies_button = driver.find_element(By.XPATH, "//button[contains(@aria-label, 'Aceptar todo')]")
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
                insert_statement_hotels = f"INSERT INTO hotels (UUID, Name, Description, Stars, Address,Latitude, Longitude, Population_id, Parameter_id) VALUES ('{UUID_hotel}','{hotel_name}', '{description}', {stars}, '{address}', {latitude}, {longitude}, {insert_id}, {UUID_parametres});"


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
            insert_statement_parametres = f"INSERT INTO Parameter (BicycleRental, Solarium, GolfCourse, Massage, " \
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
                           f"EmergencyCordBathroom, VisualAidsBraille, VisualAidsTactileSigns, " \
                           f"HotelId) VALUES " \
                           f"('{generate_numeric_value(0, 1)}', '{generate_numeric_value(0, 1)}', " \
                           f"'{generate_numeric_value(0, 1)}', '{generate_numeric_value(0, 1)}', " \
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
                           f"{generate_numeric_value(0, 1)}, {UUID_hotel});"

            # Escribir el INSERT en el archivo images_insert.txt
            print(insert_statement_parametres + "\n")
            output_file_parametres.write(insert_statement_parametres + "\n")


            # Escribir el INSERT en el archivo hotels_insert.txt
            print(insert_statement_hotels + "\n")
            output_file_hotels.write(insert_statement_hotels + "\n")

            # Incrementar el ID del hotel
            random_uuid_hotel = uuid.uuid4()
            UUID_hotel = random_uuid_hotel
            # Incrementar el ID de parametres
            random_uuid_parametres = uuid.uuid4()
            UUID_parametres = random_uuid_parametres

            

            # Incrementar el ID del INSERT
            insert_id += 1
    except Exception as e:
        print(f"Error en la ciudad '{city}': {str(e)}")
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
