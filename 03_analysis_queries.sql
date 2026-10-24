# Tourism Management System
# Analysis queries.
# Written by Muhammad Usman Shah.
#
# Each query answers one question about the data.
# The Power BI charts in the report use the same ideas.

USE TourismManagementSystem;

# Query 1: Tourist nationality distribution.
# Counts how many tourists come from each nationality, biggest group first.
SELECT nationality,
COUNT(*) AS TotalTourists
FROM Tourists
GROUP BY nationality
ORDER BY TotalTourists DESC;

# Query 2: Most booked destinations.
# Joins destinations, packages and bookings.
# LEFT JOIN keeps destinations that have no bookings, and they show a count of 0.
SELECT d.destination_name,
COUNT(b.booking_id) AS TotalBookings
FROM Destinations d
LEFT JOIN TourPackages tp ON d.destination_id = tp.destination_id
LEFT JOIN Bookings b ON tp.package_id = b.package_id
GROUP BY d.destination_name
ORDER BY TotalBookings DESC;

# Query 3: Most popular transport routes.
# Counts the scheduled trips on each route.
SELECT departure_location,
arrival_location,
COUNT(*) AS TotalScheduledTrips
FROM Transport
GROUP BY departure_location, arrival_location
ORDER BY TotalScheduledTrips DESC;

# Query 4: Booking status summary.
# Shows how many bookings are confirmed, pending or cancelled.
SELECT booking_status,
COUNT(*) AS TotalBookings
FROM Bookings
GROUP BY booking_status;

# Query 5: Revenue by payment method.
# Adds up only the completed payments for each method.
SELECT payment_method,
SUM(payment_amount) AS TotalRevenue
FROM Payments
WHERE payment_status = 'Completed'
GROUP BY payment_method
ORDER BY TotalRevenue DESC;

# Query 6: IoT transport alerts by severity.
# Shows how many alerts there are at each severity level.
SELECT alert_severity,
COUNT(*) AS TotalAlerts
FROM IoT_TransportAlerts
GROUP BY alert_severity
ORDER BY TotalAlerts DESC;

# Query 7: Transport utilization by route.
# Counts the trips on each route to see which routes are used the most.
SELECT departure_location,
arrival_location,
COUNT(transport_id) AS TotalTrips
FROM Transport
GROUP BY departure_location, arrival_location
ORDER BY TotalTrips DESC;
