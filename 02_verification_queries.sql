# Tourism Management System
# Verification queries.
# Written by Muhammad Usman Shah.
#
# Run these after 01_create_tables.sql.
# They check that the database and the tables were created, and they show the records.

# Show all databases and choose ours.
SHOW DATABASES;
USE TourismManagementSystem;

# Show the list of tables.
SHOW TABLES;

# Show the structure of each table.
# This lists every column with its type and keys.
DESCRIBE Tourists;
DESCRIBE Destinations;
DESCRIBE Hotels;
DESCRIBE TourPackages;
DESCRIBE Bookings;
DESCRIBE Payments;
DESCRIBE Guides;
DESCRIBE PackageGuides;
DESCRIBE Reviews;
DESCRIBE Transport;
DESCRIBE IoT_SensorReadings;
DESCRIBE IoT_TransportAlerts;
DESCRIBE IoT_TripSummary;
DESCRIBE IoT_MaintenanceLog;

# Show every record in each table.
SELECT * FROM Tourists;
SELECT * FROM Destinations;
SELECT * FROM Hotels;
SELECT * FROM TourPackages;
SELECT * FROM Bookings;
SELECT * FROM Payments;
SELECT * FROM Guides;
SELECT * FROM PackageGuides;
SELECT * FROM Reviews;
SELECT * FROM Transport;
SELECT * FROM IoT_SensorReadings;
SELECT * FROM IoT_TransportAlerts;
SELECT * FROM IoT_TripSummary;
SELECT * FROM IoT_MaintenanceLog;
