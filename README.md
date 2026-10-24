
# Tourism Management System

**MySQL Database | IoT Transport Monitoring | SQL Analytics | Power BI**

A relational database management project developed to organize tourism operations, manage booking and payment records, monitor transport activities, and analyze tourism data using SQL and Power BI.

The system combines traditional tourism database management with IoT-based vehicle monitoring to support structured data storage, transport tracking, operational analysis, and data visualization.

**Author:** Muhammad Usman Shah  
**Project Type:** Database Engineering – Final Project  
**Status:** Completed

---

## Project Overview

The Tourism Management System is a MySQL-based relational database designed to manage the main operations of a tourism company.

The database stores information about tourists, destinations, hotels, tour packages, bookings, payments, tour guides, and customer reviews.

An additional IoT transport monitoring component manages vehicle sensor readings, including speed, fuel level, engine temperature, and GPS position. The database also maintains transport alerts, trip summaries, and maintenance records.

The project covers database design, ERD and EERD modelling, normalization, SQL implementation, database verification, analytical queries, and Power BI visualizations.

---

## Technologies Used

| Technology | Application |
|---|---|
| MySQL | Relational database management |
| SQL | Database creation, verification, and analysis |
| MySQL Workbench | Database development and query execution |
| Power BI | Data analysis and visualization |
| ERD / EERD | Database structure and relationship modelling |
| IoT Sensor Data | Transport monitoring and alert analysis |

---

## Project Features

### 1. Tourism Database Management

The system maintains records of:

- Tourists and their information
- Tourism destinations
- Hotels and accommodation information
- Tour packages
- Tourist bookings
- Payment transactions
- Tour guides and supported languages
- Customer reviews

### 2. IoT Transport Monitoring

The transport monitoring component stores and organizes:

- Vehicle speed readings
- Fuel-level readings
- Engine-temperature readings
- GPS location information
- Transport alerts
- Trip summaries
- Maintenance records

### 3. SQL-Based Data Analysis

Seven analytical queries are included to examine tourism operations, booking patterns, payments, transport activity, and IoT alerts.

### 4. Power BI Visualization

Selected tourism and payment information is presented through Power BI charts for easier interpretation of the database records.

---

## Database Structure

The database consists of **15 relational tables** organized into tourism operations and IoT transport monitoring.

### Tourism Management Tables

| No. | Table Name | Description |
|---|---|---|
| 1 | `Tourists` | Stores tourist information |
| 2 | `Destinations` | Maintains tourism destinations |
| 3 | `Hotels` | Stores hotel information |
| 4 | `TourPackages` | Contains available tour packages |
| 5 | `Bookings` | Records tourist bookings |
| 6 | `Payments` | Stores payment transactions |
| 7 | `Guides` | Maintains tour guide records |
| 8 | `GuideLanguages` | Stores guide language information |
| 9 | `PackageGuides` | Associates tour guides with packages |
| 10 | `Reviews` | Stores tourist reviews |

### IoT Transport Monitoring Tables

| No. | Table Name | Description |
|---|---|---|
| 11 | `Transport` | Maintains transport information |
| 12 | `IoT_SensorReadings` | Stores vehicle sensor readings |
| 13 | `IoT_TransportAlerts` | Records transport monitoring alerts |
| 14 | `IoT_TripSummary` | Maintains trip summary information |
| 15 | `IoT_MaintenanceLog` | Stores vehicle maintenance records |

---

## Repository Structure

The repository is organized into project reports, SQL scripts, database diagrams, SQL outputs, and Power BI visualizations.

```text
Tourism-Management-System/
|
|-- README.md
|
|-- report/
|   |-- Tourism_Management_System_Report.pdf
|   |-- Tourism_Management_System_Results.pdf
|
|-- sql/
|   |-- 01_create_tables.sql
|   |-- 02_verification_queries.sql
|   |-- 03_analysis_queries.sql
|
|-- images/
|   |
|   |-- diagrams/
|   |   |-- erd
|   |   |-- eerd
|   |
|   |-- sql_output/
|   |   |-- alerts_by_severity
|   |   |-- booking_status (1)
|   |   |-- bookings_structure
|   |   |-- most_booked_destinations_1
|   |   |-- most_booked_destinations_2
|   |   |-- nationality_distribution
|   |   |-- record_counts
|   |   |-- scheduled_routes
|   |   |-- revenue_by_payment_method
|   |
|   |-- power_bi/
|       |-- booking_status
|       |-- payment_status
|       |-- tourist_nationality_and_gender
```

**Note:** Image filenames are displayed without extensions in the original screenshot. Their actual extensions (`.png`, `.jpg`, etc.) must be retained during upload.

---

## Database Design

The database was designed using Entity Relationship Diagrams (ERD) and Enhanced Entity Relationship Diagrams (EERD).

### Entity Relationship Diagram (ERD)

The ERD represents the main database entities and their relationships.

**Diagram:** [View ERD and EERD folder](images/diagrams/)

### Enhanced Entity Relationship Diagram (EERD)

The EERD provides a more detailed representation of the database model.

The design documentation is included in the project report.

---

## Database Normalization

The project includes database normalization to improve data organization, reduce redundancy, and address database anomalies.

The normalization process considers:

- Data redundancy
- Insertion anomalies
- Update anomalies
- Deletion anomalies
- Relationships between database tables

The complete explanation of the database design and normalization process is provided in the project report.

---

## SQL Implementation

Three SQL files are provided.

| SQL File | Purpose |
|---|---|
| [01_create_tables.sql](sql/01_create_tables.sql) | Creates the database and its 15 tables |
| [02_verification_queries.sql](sql/02_verification_queries.sql) | Verifies table structure and stored records |
| [03_analysis_queries.sql](sql/03_analysis_queries.sql) | Contains seven analytical SQL queries |

### Database Creation

The database structure is created using:

`01_create_tables.sql`

### Database Verification

The verification script contains SQL commands for checking table structures and stored information.

Examples of verification commands include:

```sql
SHOW TABLES;

DESCRIBE Tourists;

SELECT * FROM Tourists;
```

### Data Analysis

The analytical SQL script examines tourism operations, booking records, payment methods, and transport monitoring data.

---

## SQL Analysis and Results

The project contains seven analytical SQL queries.

| No. | Analysis | Objective |
|---|---|---|
| 1 | Tourist Nationality Distribution | Analyze tourists according to nationality |
| 2 | Most Booked Destinations | Identify frequently booked tourism destinations |
| 3 | Most Popular Transport Routes | Examine frequently scheduled routes |
| 4 | Booking Status Summary | Summarize bookings by status |
| 5 | Revenue by Payment Method | Analyze revenue across payment methods |
| 6 | IoT Transport Alerts by Severity | Examine alert frequency by severity |
| 7 | Transport Utilization by Route | Evaluate transport activity across routes |

### SQL Output Screenshots

Screenshots of the MySQL query results are available in the following folder:

[View SQL Output Screenshots](images/sql_output/)

The screenshots include:

- `alerts_by_severity`
- `booking_status (1)`
- `bookings_structure`
- `most_booked_destinations_1`
- `most_booked_destinations_2`
- `nationality_distribution`
- `record_counts`
- `scheduled_routes`
- `revenue_by_payment_method`

These screenshots document the query outputs obtained during database implementation and analysis.

---

## Power BI Visualizations

Power BI was used to represent selected database results through graphical visualizations.

### Booking Status

A pie chart showing the distribution of bookings by status.

### Payment Status

A bar chart illustrating the distribution of payment records by payment status.

### Tourist Nationality and Gender

Charts presenting tourist information according to nationality and gender.

**Dashboard Screenshots:** [View Power BI Charts](images/power_bi/)

The folder contains:

- `booking_status`
- `payment_status`
- `tourist_nationality_and_gender`

---

## IoT Transport Monitoring

The IoT component extends the tourism database by storing vehicle monitoring information alongside tourism and transport records.

### Monitored Parameters

| Parameter | Purpose |
|---|---|
| Vehicle Speed | Records speed readings |
| Fuel Level | Monitors fuel readings |
| Engine Temperature | Records engine-temperature measurements |
| GPS Position | Stores vehicle location information |
| Transport Alerts | Records alerts generated from sensor readings |
| Trip Summary | Maintains trip information |
| Maintenance Log | Documents vehicle maintenance activities |

### Transport Alerts

The system includes records of alerts associated with transport sensor readings.

An analytical query summarizes alerts according to severity.

The corresponding output screenshot is included in the SQL output folder.

### Maintenance Records

The `IoT_MaintenanceLog` table stores maintenance information associated with transport monitoring activities.

This connects IoT monitoring records with maintenance documentation in the database.

---

## How to Run the Project

### Requirements

- MySQL or MariaDB
- MySQL Workbench (optional)
- Power BI Desktop (optional)

### Step 1: Download the Repository

Download the repository as a ZIP file from GitHub and extract it to your computer.

### Step 2: Open MySQL

Start the MySQL server and connect using MySQL Workbench or the command-line client.

### Step 3: Create the Database

Execute the database creation script:

```bash
mysql -u root -p < sql/01_create_tables.sql
```

### Step 4: Verify the Database

Execute the database verification script:

```bash
mysql -u root -p < sql/02_verification_queries.sql
```

### Step 5: Run Analysis Queries

Execute the analytical SQL script:

```bash
mysql -u root -p < sql/03_analysis_queries.sql
```

**Note:** The SQL scripts must use the correct database context. Analytical queries require the relevant records to exist in the database. If sample data are not included in the creation script, they must be imported separately.

Alternatively, open the three SQL files in MySQL Workbench and execute them in the same order.

---

## Project Documentation

The repository contains two PDF documents.

| Document | Description |
|---|---|
| [Tourism Management System Report](report/Tourism_Management_System_Report.pdf) | Complete project documentation, including database design, normalization, implementation, and analysis |
| [Tourism Management System Results](report/Tourism_Management_System_Results.pdf) | SQL results, database outputs, and Power BI visualizations |

---

## Key Learning Outcomes

This project demonstrates practical experience in:

- Relational database design and implementation
- ERD and EERD modelling
- Database normalization
- SQL table creation and data verification
- SQL-based analysis of operational data
- Integrating IoT transport records into a relational database
- Data visualization using Power BI
- Technical documentation and project organization

---

## Author

**Muhammad Usman Shah**

---

## Project Status

**Completed — Database Engineering Final Project**
