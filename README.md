
# Tourism Management System

### MySQL Database | IoT Transport Monitoring | SQL Analytics | Power BI

A relational database management project developed to manage tourism operations, monitor transport activities, and analyze operational data using MySQL, SQL, and Power BI.

The system combines tourism database management with IoT-based vehicle monitoring, providing structured data storage, transport tracking, analytical queries, and graphical visualizations.

**Author:** Muhammad Usman Shah  
**Project:** Database Engineering – Final Project  
**Status:** Completed

---

## Project Overview

The Tourism Management System is a MySQL-based database developed to manage information related to tourists, destinations, hotels, tour packages, bookings, payments, tour guides, and customer reviews.

The project also incorporates an **IoT-based transport monitoring component** that stores vehicle speed, fuel levels, engine temperature, and GPS readings. Transport alerts, trip summaries, and maintenance activities are recorded within the database.

The project covers:

- Relational database design
- Entity Relationship Diagrams (ERD and EERD)
- Database normalization
- MySQL database implementation
- SQL verification and analytical queries
- IoT transport monitoring
- Power BI data visualization

---

## Technologies Used

| Technology | Purpose |
|---|---|
| MySQL | Relational database management |
| SQL | Database creation, verification, and analysis |
| MySQL Workbench | Database development and query execution |
| Power BI | Data analysis and visualization |
| ERD / EERD | Database modelling |
| IoT Sensor Data | Transport monitoring and alert analysis |

---

## Database Design

The database contains **15 relational tables** covering tourism management and IoT transport operations.

### Tourism Management Tables

| No. | Table | Description |
|---|---|---|
| 1 | `Tourists` | Tourist information |
| 2 | `Destinations` | Tourism destinations |
| 3 | `Hotels` | Hotel information |
| 4 | `TourPackages` | Tour package details |
| 5 | `Bookings` | Tourist booking records |
| 6 | `Payments` | Payment transactions |
| 7 | `Guides` | Tour guide information |
| 8 | `GuideLanguages` | Languages supported by guides |
| 9 | `PackageGuides` | Relationships between guides and tour packages |
| 10 | `Reviews` | Tourist reviews |

### IoT Transport Tables

| No. | Table | Description |
|---|---|---|
| 11 | `Transport` | Transport information |
| 12 | `IoT_SensorReadings` | Vehicle sensor readings |
| 13 | `IoT_TransportAlerts` | Transport monitoring alerts |
| 14 | `IoT_TripSummary` | Trip summaries |
| 15 | `IoT_MaintenanceLog` | Maintenance records |

### Database Diagrams

| Diagram | Description | View |
|---|---|---|
| ERD | Entity Relationship Diagram showing database entities and relationships | [View ERD](erd.png) |
| EERD | Enhanced Entity Relationship Diagram | [View EERD](eerd.png) |

---

## SQL Implementation

Three SQL scripts are included for database creation, verification, and analysis.

| No. | File | Description | Link |
|---|---|---|---|
| 1 | `01_create_tables.sql` | Creates the database and 15 tables | [View SQL](01_create_tables.sql) |
| 2 | `02_verification_queries.sql` | Verifies table structures and records | [View SQL](02_verification_queries.sql) |
| 3 | `03_analysis_queries.sql` | Contains seven analytical SQL queries | [View SQL](03_analysis_queries.sql) |

### Database Verification

The verification process includes SQL statements such as:

```sql
SHOW TABLES;

DESCRIBE Tourists;

SELECT * FROM Tourists;
```

These commands help examine the database structure and stored records.

---

## SQL Analysis and Results

The project includes seven analytical queries examining tourism, booking, payment, and transport information.

| No. | Analysis | Purpose |
|---|---|---|
| 1 | Tourist Nationality Distribution | Examine tourist distribution by nationality |
| 2 | Most Booked Destinations | Identify destinations receiving the most bookings |
| 3 | Most Popular Transport Routes | Examine frequently scheduled routes |
| 4 | Booking Status Summary | Analyze booking statuses |
| 5 | Revenue by Payment Method | Examine revenue generated through different payment methods |
| 6 | IoT Transport Alerts by Severity | Analyze vehicle alerts by severity |
| 7 | Transport Utilization by Route | Examine transport activity across routes |

### SQL Output Screenshots

| No. | Output | View |
|---|---|---|
| 1 | Tourist Nationality Distribution | [View Result](nationality_distribution.png) |
| 2 | Most Booked Destinations – Part 1 | [View Result](most_booked_destinations_1.png) |
| 3 | Most Booked Destinations – Part 2 | [View Result](most_booked_destinations_2.png) |
| 4 | Scheduled Transport Routes | [View Result](scheduled_routes.png) |
| 5 | Booking Status Summary | [View Result](booking_status%20%281%29.png) |
| 6 | Revenue by Payment Method | [View Result](revenue_by_payment_method.png) |
| 7 | IoT Alerts by Severity | [View Result](alerts_by_severity.png) |
| 8 | Database Record Counts | [View Result](record_counts.png) |
| 9 | Booking Table Structure | [View Result](bookings_structure.png) |

---

## Power BI Visualizations

Power BI was used to visualize tourism and payment information through interactive-style graphical summaries.

| Dashboard | Description | View |
|---|---|---|
| Booking Status | Distribution of booking records by status | [View Chart](booking_status.png) |
| Payment Status | Payment status distribution | [View Chart](payment_status.png) |
| Tourist Nationality and Gender | Tourist information by nationality and gender | [View Chart](tourist_nationality_and_gender.png) |

These visualizations help present database records in a clearer and more understandable form.

---

## IoT Transport Monitoring

The IoT component extends the traditional tourism database by integrating vehicle monitoring information.

### Monitoring Parameters

| Parameter | Description |
|---|---|
| Speed | Vehicle speed readings |
| Fuel Level | Fuel monitoring information |
| Engine Temperature | Engine temperature readings |
| GPS Position | Vehicle location information |
| Transport Alerts | Alerts associated with sensor readings |
| Trip Summary | Transport trip records |
| Maintenance Log | Vehicle maintenance information |

### Transport Alerts

The database records transport alerts and categorizes them according to severity.

**SQL Result:** [View IoT Alert Analysis](alerts_by_severity.png)

### Maintenance Records

The `IoT_MaintenanceLog` table maintains vehicle maintenance information, connecting transport monitoring activities with maintenance documentation.

---

## How to Run the Project

### Requirements

- MySQL or MariaDB
- MySQL Workbench (optional)
- Power BI Desktop (optional)

### Step 1: Download the Project

Download the repository as a ZIP file from GitHub and extract it.

### Step 2: Open MySQL

Connect to MySQL using MySQL Workbench or the command-line client.

### Step 3: Create the Database

Run the database creation script:

```bash
mysql -u root -p < 01_create_tables.sql
```

### Step 4: Verify the Database

Run the verification script:

```bash
mysql -u root -p < 02_verification_queries.sql
```

### Step 5: Run the Analysis Queries

Run the analysis script:

```bash
mysql -u root -p < 03_analysis_queries.sql
```

**Note:** Execute the scripts in the correct database context. Analytical queries require the relevant records to be available.

Alternatively, open and execute the SQL files in MySQL Workbench in the same order.

---

## Project Documentation

The repository includes two PDF documents covering the project design, implementation, and results.

| Document | Contents | View |
|---|---|---|
| Complete Project Report | Database design, normalization, implementation, and documentation | [View Report](Tourism_Management_System_Report.pdf) |
| Project Results | SQL outputs, analytical results, and Power BI charts | [View Results](Tourism_Management_System_Results.pdf) |

---

## Key Learning Outcomes

This project demonstrates practical experience in:

- Relational database design and implementation
- ERD and EERD modelling
- Database normalization
- SQL development and data verification
- SQL-based analytical queries
- IoT transport monitoring data management
- Power BI data visualization
- Database documentation

---

## Author

**Muhammad Usman Shah**

---

## Project Status

**Completed — Database Engineering Final Project**
