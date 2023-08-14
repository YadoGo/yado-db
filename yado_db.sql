CREATE DATABASE IF NOT EXISTS yado_db;

USE yado_db;

CREATE TABLE roles (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(100) NOT NULL
);

CREATE TABLE users (
    uuid VARCHAR(36) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(50) NOT NULL,
    gender CHAR NULL,
    image_profile VARBINARY(8000) NULL,
    role_id INT DEFAULT 1,
    FOREIGN KEY (role_id) REFERENCES roles(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE countries (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE states (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES countries(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE populations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    state_id INT,
    FOREIGN KEY (state_id) REFERENCES states(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE hotels (
    uuid VARCHAR(36) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(1500) NOT NULL,
    stars INT NOT NULL, 
    address VARCHAR(50) NOT NULL,
    latitude FLOAT NOT NULL,
    longitude FLOAT NOT NULL,
    num_visited INT DEFAULT 0 NULL,
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
    qualification FLOAT NOT NULL,
    positive_comment VARCHAR(200) NOT NULL,
    negative_comment VARCHAR(200) NULL,
    user_id VARCHAR(40),
    hotel_uuid VARCHAR(40),
    FOREIGN KEY (user_id) REFERENCES users(uuid) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (hotel_uuid) REFERENCES hotels(uuid) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE images (
    id INT AUTO_INCREMENT PRIMARY KEY,
    image VARCHAR(200) NOT NULL,
    description VARCHAR(200) NOT NULL,
    hotel_uuid VARCHAR(40),
    FOREIGN KEY (hotel_uuid) REFERENCES hotels(uuid) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE companies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    url VARCHAR(200) NOT NULL,
    url_logo VARCHAR(200) NOT NULL
);

CREATE TABLE sites (
    id INT AUTO_INCREMENT PRIMARY KEY,
    url_origin VARCHAR(200) NOT NULL,
    nightly_price FLOAT NOT NULL,
    hotel_uuid VARCHAR(40),
    company_id INT,
    FOREIGN KEY (hotel_uuid) REFERENCES hotels(uuid) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (company_id) REFERENCES companies(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE parameters (
    id INT AUTO_INCREMENT PRIMARY KEY,
    review_score FLOAT,
    beach_distance FLOAT DEFAULT 0 NOT NULL,
    center_distance FLOAT DEFAULT 0 NOT NULL,
    bicycle_rental BOOLEAN DEFAULT 0 NOT NULL,
    solarium BOOLEAN DEFAULT 0 NOT NULL,
    golf_course BOOLEAN DEFAULT 0 NOT NULL,
    massage BOOLEAN DEFAULT 0 NOT NULL,
    fitness_centre BOOLEAN DEFAULT 0 NOT NULL,
    free_cancellation BOOLEAN DEFAULT 0 NOT NULL,
    self_catering BOOLEAN DEFAULT 0 NOT NULL,
    breakfast_included BOOLEAN DEFAULT 0 NOT NULL,
    breakfast_dinner_included BOOLEAN DEFAULT 0 NOT NULL,
    twin_beds BOOLEAN DEFAULT 0 NOT NULL,
    double_bed BOOLEAN DEFAULT 0 NOT NULL,
    large_double_bed BOOLEAN DEFAULT 0 NOT NULL,
    extra_large_double_bed BOOLEAN DEFAULT 0 NOT NULL,
    non_smoking_rooms BOOLEAN DEFAULT 0 NOT NULL,
    parking BOOLEAN DEFAULT 0 NOT NULL,
    very_good_wifi BOOLEAN DEFAULT 0 NOT NULL,
    family_rooms BOOLEAN DEFAULT 0 NOT NULL,
    swimming_pool BOOLEAN DEFAULT 0 NOT NULL,
    room_service BOOLEAN DEFAULT 0 NOT NULL,
    pets_allowed BOOLEAN DEFAULT 0 NOT NULL,
    facilites_disabled_guest BOOLEAN DEFAULT 0 NOT NULL,
    spa_wellness_centre BOOLEAN DEFAULT 0 NOT NULL,
    aeroport_schuttle BOOLEAN DEFAULT 0 NOT NULL,
    restaurant BOOLEAN DEFAULT 0 NOT NULL,
    reception_always_open BOOLEAN DEFAULT 0 NOT NULL,
    kitchen BOOLEAN DEFAULT 0 NOT NULL,
    private_bathroom BOOLEAN DEFAULT 0 NOT NULL,
    air_conditioning BOOLEAN DEFAULT 0 NOT NULL,
    laptop_friendly_workspace BOOLEAN DEFAULT 0 NOT NULL,
    bath BOOLEAN DEFAULT 0 NOT NULL,
    private_pool BOOLEAN DEFAULT 0 NOT NULL,
    terrace BOOLEAN DEFAULT 0 NOT NULL,
    balcony BOOLEAN DEFAULT 0 NOT NULL,
    blat_screen_tv BOOLEAN DEFAULT 0 NOT NULL,
    washing_machine BOOLEAN DEFAULT 0 NOT NULL,
    patio BOOLEAN DEFAULT 0 NOT NULL,
    soundproofing BOOLEAN DEFAULT 0 NOT NULL,
    view_hotel BOOLEAN DEFAULT 0 NOT NULL,
    sea_view BOOLEAN DEFAULT 0 NOT NULL,
    wheelchair_accessible BOOLEAN DEFAULT 0 NOT NULL,
    toilet_grab_rails BOOLEAN DEFAULT 0 NOT NULL,
    higher_level_toilet BOOLEAN DEFAULT 0 NOT NULL,
    lower_bathroom_sink BOOLEAN DEFAULT 0 NOT NULL,
    emergency_cord_bathroom BOOLEAN DEFAULT 0 NOT NULL,
    visual_aids_braille BOOLEAN DEFAULT 0 NOT NULL,
    visual_aids_tactile_signs BOOLEAN DEFAULT 0 NOT NULL,
    hotel_uuid VARCHAR(40),
    FOREIGN KEY (hotel_uuid) REFERENCES hotels(uuid) ON UPDATE CASCADE ON DELETE CASCADE
);
