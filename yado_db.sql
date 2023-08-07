CREATE DATABASE IF NOT EXISTS yado_bd;

USE yado_bd;

CREATE TABLE roles (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    description VARCHAR(100)
);

CREATE TABLE users (
    uuid VARCHAR(36) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(100),
    username VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(50),
    gender CHAR,
    role_id INT DEFAULT 1,
    FOREIGN KEY (role_id) REFERENCES roles(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE countries (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE states (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES countries(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE populations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    state_id INT,
    FOREIGN KEY (state_id) REFERENCES states(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE hotels (
    uuid VARCHAR(36) PRIMARY KEY,
    name VARCHAR(50),
    description VARCHAR(1500),
    stars INT,
    address VARCHAR(50),
    latitude FLOAT,
    longitude FLOAT,
    num_visited INT DEFAULT 0,
    population_id INT,
    FOREIGN KEY (population_id) REFERENCES populations(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE owners (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_uuid VARCHAR(40),
    hotel_uuid VARCHAR(40),
    FOREIGN KEY (user_uuid) REFERENCES users(uuid) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (hotel_uuid) REFERENCES hotels(uuid) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE favorites (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_uuid VARCHAR(40),
    hotel_uuid VARCHAR(40),
    FOREIGN KEY (user_uuid) REFERENCES users(uuid) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (hotel_uuid) REFERENCES hotels(uuid) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE reviews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    qualification FLOAT,
    positive_comment VARCHAR(200),
    negative_comment VARCHAR(200),
    user_id VARCHAR(40),
    hotel_uuid VARCHAR(40),
    FOREIGN KEY (user_id) REFERENCES users(uuid) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (hotel_uuid) REFERENCES hotels(uuid) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE images (
    id INT AUTO_INCREMENT PRIMARY KEY,
    url VARCHAR(200),
    description VARCHAR(200),
    hotel_uuid VARCHAR(40),
    FOREIGN KEY (hotel_uuid) REFERENCES hotels(uuid) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE companies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    url VARCHAR(200),
    url_logo VARCHAR(200)
);

CREATE TABLE sites (
    id INT AUTO_INCREMENT PRIMARY KEY,
    url_origin VARCHAR(200),
    nightly_price FLOAT,
    hotel_uuid VARCHAR(40),
    company_id INT,
    FOREIGN KEY (hotel_uuid) REFERENCES hotels(uuid) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (company_id) REFERENCES companies(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE parameters (
    id INT AUTO_INCREMENT PRIMARY KEY,
    beach_distance FLOAT,
    center_distance FLOAT,
    bicycle_rental BOOLEAN,
    solarium BOOLEAN,
    golf_course BOOLEAN,
    massage BOOLEAN,
    fitness_centre BOOLEAN,
    free_cancellation BOOLEAN,
    self_catering BOOLEAN,
    breakfast_included BOOLEAN,
    breakfast_dinner_included BOOLEAN,
    twin_beds BOOLEAN,
    double_bed BOOLEAN,
    large_double_bed BOOLEAN,
    extra_large_double_bed BOOLEAN,
    review_score FLOAT,
    non_smoking_rooms BOOLEAN,
    parking BOOLEAN,
    very_good_wifi BOOLEAN,
    family_rooms BOOLEAN,
    swimming_pool BOOLEAN,
    room_service BOOLEAN,
    pets_allowed BOOLEAN,
    facilites_disabled_guest BOOLEAN,
    spa_wellness_centre BOOLEAN,
    aeroport_schuttle BOOLEAN,
    restaurant BOOLEAN,
    reception_always_open BOOLEAN,
    kitchen BOOLEAN,
    private_bathroom BOOLEAN,
    air_conditioning BOOLEAN,
    laptop_friendly_workspace BOOLEAN,
    bath BOOLEAN,
    private_pool BOOLEAN,
    terrace BOOLEAN,
    balcony BOOLEAN,
    blat_screen_tv BOOLEAN,
    washing_machine BOOLEAN,
    patio BOOLEAN,
    soundproofing BOOLEAN,
    view_hotel BOOLEAN,
    sea_view BOOLEAN,
    wheelchair_accessible BOOLEAN,
    toilet_grab_rails BOOLEAN,
    higher_level_toilet BOOLEAN,
    lower_bathroom_sink BOOLEAN,
    emergency_cord_bathroom BOOLEAN,
    visual_aids_braille BOOLEAN,
    visual_aids_tactile_signs BOOLEAN,
    hotel_uuid VARCHAR(40),
    FOREIGN KEY (hotel_uuid) REFERENCES hotels(uuid) ON UPDATE CASCADE ON DELETE CASCADE
);
