# Tourism Management System
# Database Engineering project, Phase 4 (Final).
# Namal University Mianwali, Department of Electrical Engineering.
# Written by Muhammad Usman Shah.
#
# This script creates the database and all 15 tables.
# The tables are in the right order, so each foreign key points to a table that already exists.
# Run it first, then use the other two files.

# Create the database and start using it.
CREATE DATABASE IF NOT EXISTS TourismManagementSystem;
USE TourismManagementSystem;

# ===============================
# Tourism tables
# ===============================

# One row for each tourist.
# The email must be unique, so nobody is saved twice.
CREATE TABLE Tourists (
    tourist_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(150) NOT NULL,
    nationality VARCHAR(100),
    email VARCHAR(150) UNIQUE,
    phone VARCHAR(30),
    passport_number VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

# One row for each place a tourist can visit.
# The rating starts at 0.00 and can be updated from the reviews.
CREATE TABLE Destinations (
    destination_id INT AUTO_INCREMENT PRIMARY KEY,
    destination_name VARCHAR(150) NOT NULL,
    country VARCHAR(100),
    city VARCHAR(100),
    description TEXT,
    rating DECIMAL(3,2) DEFAULT 0.00
);

# Hotels belong to one destination.
CREATE TABLE Hotels (
    hotel_id INT AUTO_INCREMENT PRIMARY KEY,
    destination_id INT NOT NULL,
    hotel_name VARCHAR(150) NOT NULL,
    star_rating INT,
    price_per_night DECIMAL(10,2),
    contact_number VARCHAR(30),
    FOREIGN KEY (destination_id) REFERENCES Destinations(destination_id)
);

# Tour packages belong to one destination.
CREATE TABLE TourPackages (
    package_id INT AUTO_INCREMENT PRIMARY KEY,
    destination_id INT NOT NULL,
    package_name VARCHAR(150) NOT NULL,
    duration_days INT,
    price_per_person DECIMAL(10,2),
    availability_status VARCHAR(50),
    FOREIGN KEY (destination_id) REFERENCES Destinations(destination_id)
);

# A booking links one tourist with one package.
# booked_price keeps the price at booking time, so later price changes do not affect old bookings.
CREATE TABLE Bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    tourist_id INT NOT NULL,
    package_id INT NOT NULL,
    booking_date DATE NOT NULL,
    travel_date DATE,
    number_of_people INT DEFAULT 1,
    booked_price DECIMAL(10,2),
    total_amount DECIMAL(10,2),
    booking_status VARCHAR(50),
    FOREIGN KEY (tourist_id) REFERENCES Tourists(tourist_id),
    FOREIGN KEY (package_id) REFERENCES TourPackages(package_id)
);

# A payment belongs to one booking.
# The booking_id is unique, so one booking has only one payment.
CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT NOT NULL UNIQUE,
    payment_date DATETIME,
    payment_amount DECIMAL(10,2),
    payment_method VARCHAR(50),
    payment_status VARCHAR(50),
    transaction_reference VARCHAR(100),
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
);

# One row for each tour guide.
CREATE TABLE Guides (
    guide_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(150) NOT NULL,
    email VARCHAR(150),
    phone VARCHAR(30),
    experience_years INT,
    specialization VARCHAR(100)
);

# A guide can speak many languages.
# We save one language in each row, so every field holds a single value.
CREATE TABLE GuideLanguages (
    language_id INT AUTO_INCREMENT PRIMARY KEY,
    guide_id INT NOT NULL,
    language_name VARCHAR(100) NOT NULL,
    FOREIGN KEY (guide_id) REFERENCES Guides(guide_id)
);

# Connects guides with packages.
# A package can have many guides and a guide can work on many packages.
# The UNIQUE line stops the same guide being added to the same package twice.
CREATE TABLE PackageGuides (
    assignment_id INT AUTO_INCREMENT PRIMARY KEY,
    package_id INT NOT NULL,
    guide_id INT NOT NULL,
    assignment_date DATE,
    UNIQUE(package_id, guide_id),
    FOREIGN KEY (package_id) REFERENCES TourPackages(package_id),
    FOREIGN KEY (guide_id) REFERENCES Guides(guide_id)
);

# A review is written by one tourist about one destination.
CREATE TABLE Reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    tourist_id INT NOT NULL,
    destination_id INT NOT NULL,
    rating DECIMAL(3,2),
    review_text TEXT,
    review_date DATE,
    FOREIGN KEY (tourist_id) REFERENCES Tourists(tourist_id),
    FOREIGN KEY (destination_id) REFERENCES Destinations(destination_id)
);

# ===============================
# Transport and IoT tables
# ===============================

# One row for each transport vehicle or trip.
# iot_device_id is the sensor device fitted on the vehicle.
CREATE TABLE Transport (
    transport_id INT AUTO_INCREMENT PRIMARY KEY,
    transport_type VARCHAR(50),
    company_name VARCHAR(150),
    departure_location VARCHAR(150),
    arrival_location VARCHAR(150),
    ticket_price DECIMAL(10,2),
    scheduled_departure DATETIME,
    scheduled_arrival DATETIME,
    iot_device_id VARCHAR(100),
    status VARCHAR(50)
);

# Readings sent by the IoT sensors during a trip.
CREATE TABLE IoT_SensorReadings (
    reading_id INT AUTO_INCREMENT PRIMARY KEY,
    transport_id INT NOT NULL,
    reading_timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    speed_kmh DECIMAL(6,2),
    fuel_level_percent DECIMAL(5,2),
    engine_temperature_c DECIMAL(6,2),
    passenger_count INT,
    gps_latitude DECIMAL(10,6),
    gps_longitude DECIMAL(10,6),
    speed_status VARCHAR(50),
    FOREIGN KEY (transport_id) REFERENCES Transport(transport_id)
);

# Alerts raised when a sensor reading looks unsafe.
CREATE TABLE IoT_TransportAlerts (
    alert_id INT AUTO_INCREMENT PRIMARY KEY,
    transport_id INT NOT NULL,
    reading_id INT,
    alert_type VARCHAR(100),
    alert_severity VARCHAR(50),
    alert_message TEXT,
    alert_timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    resolved_status VARCHAR(50),
    FOREIGN KEY (transport_id) REFERENCES Transport(transport_id),
    FOREIGN KEY (reading_id) REFERENCES IoT_SensorReadings(reading_id)
);

# A short summary of each finished trip.
# The average speed and the safety score come from the readings and the alerts.
CREATE TABLE IoT_TripSummary (
    summary_id INT AUTO_INCREMENT PRIMARY KEY,
    transport_id INT NOT NULL,
    trip_date DATE,
    total_distance_km DECIMAL(8,2),
    avg_speed_kmh DECIMAL(6,2),
    total_alert_count INT DEFAULT 0,
    trip_status VARCHAR(50),
    safety_score DECIMAL(5,2),
    FOREIGN KEY (transport_id) REFERENCES Transport(transport_id)
);

# Maintenance work done after an alert.
# The alert_id is unique, so one alert has at most one maintenance record.
CREATE TABLE IoT_MaintenanceLog (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    transport_id INT NOT NULL,
    alert_id INT UNIQUE,
    maintenance_date DATE,
    maintenance_type VARCHAR(100),
    description TEXT,
    technician_name VARCHAR(150),
    cost DECIMAL(10,2),
    FOREIGN KEY (transport_id) REFERENCES Transport(transport_id),
    FOREIGN KEY (alert_id) REFERENCES IoT_TransportAlerts(alert_id)
);
