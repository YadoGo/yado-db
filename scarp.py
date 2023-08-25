from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.keys import Keys

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


# Archivo .txt para escribir los INSERTs
output_file = open("hotel_inserts.txt", "a", encoding="utf-8")

# Escribir el nombre de la ciudad en el archivo .txt
output_file.write(f"CATALUNYA\n")

# Inicializar el ID del INSERT
insert_id = 1

for city in cities:
    try:

        # Crear una instancia del controlador de Chrome
        driver = webdriver.Chrome(options=chrome_options)
        driver.get("https://www.kayak.com/hotels")
        
        # Escribir el nombre de la ciudad en el archivo .txt
        output_file.write(f"City: {city}\n")
        
        # Abrir una nueva pestaña para buscar la ciudad
        driver.execute_script("window.open('', '_blank');")  # Abrir nueva pestaña
        driver.switch_to.window(driver.window_handles[-1])  # Cambiar al control de la nueva pestaña
        driver.get("https://www.kayak.com/hotels")  # Cargar la página de búsqueda de hoteles

        # Buscar la barra de búsqueda y escribir la ciudad
        search_bar = driver.find_element(By.XPATH, "//input[@placeholder='Enter a city, hotel, airport, address or landmark']")
        time.sleep(5)
        search_bar.clear()  # Limpiar el campo de búsqueda
        search_bar.send_keys(city)

        
        time.sleep(3)

        # Simular presionar la tecla Enter
        search_bar.send_keys(Keys.RETURN)           

        # Simular esperar a que se carguen los resultados
        time.sleep(3)
        
        # Encontrar el icono de búsqueda y hacer clic en él
        search_icon = driver.find_element(By.XPATH, "//button[@aria-label='Search']")
        search_icon.click()
        
        
        # Simular esperar a que se carguen los resultados
        time.sleep(15)

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
                time.sleep(5) 
                
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
                
                # Obtener el rating del hotel
                try:
                    rating_element = driver.find_element(By.CLASS_NAME, "b40a-info-card-rating-score")
                    rating = float(rating_element.text)
                except:
                    try:
                        rating_element = driver.find_element(By.CLASS_NAME, "b40a-rating-score")
                        rating = float(rating_element.text)
                    except:
                        rating = "No description available"
                
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
                    time.sleep(10)
                    
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
                time.sleep(5)
                
                driver.switch_to.window(driver.window_handles[1])  # Cambiar a la ventana del hotel
                
                # Generar la declaración SQL INSERT
                insert_statement = f"INSERT INTO hotels (name, description, stars, rating, address, latitude, longitude, population_id) VALUES ('{hotel_name}', '{description}', {stars}, {rating}, '{address}', {latitude}, {longitude}, {insert_id});"
                
                # Escribir el INSERT en el archivo .txt
                print(insert_statement + "\n")
                output_file.write(insert_statement + "\n")

            except Exception as e:
                print(f"Error en el hotel '{hotel_name}': {str(e)}")
                # Continuar con el siguiente hotel en la misma ciudad
                continue

        driver.close()  # Cerrar la ventana del hotel
        -time.sleep(5)
            
        driver.switch_to.window(driver.window_handles[0])  # Cambiar de nuevo a la ventana principal

        # Incrementar el ID del INSERT
        insert_id += 1
    except Exception as e:
        print(f"Error en la ciudad '{city}': {str(e)}")
        driver.quit()  # Cerrar la instancia del navegador en caso de error

    output_file.write("\n")

    # Cerrar el navegador al finalizar
    driver.quit()

# Cerrar el archivo .txt
output_file.close()