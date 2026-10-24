
# Tourism Management System

### MySQL Database | IoT Transport Monitoring | SQL Analytics | Power BI

A relational database management system developed for a tourism company using **MySQL**, with additional functionality for **IoT-based transport monitoring, SQL data analysis, and Power BI visualizations**.

This project was completed as **Phase 4 (Final Project)** of the Database Engineering course at Namal University, Mianwali.

---

## Project Information

| Detail | Information |
|---|---|
| **Project** | Tourism Management System |
| **Course** | Database Engineering |
| **Phase** | Phase 4 – Final Project |
| **Author** | Muhammad Usman Shah |
| **Registration No.** | NUM-BSEE-2022-28 |
| **Instructor** | Mr. Muhammad Bilal |
| **Department** | Electrical Engineering |
| **University** | Namal University, Mianwali |
| **Database** | MySQL |
| **Visualization** | Power BI |

---

## Project Overview

The Tourism Management System is designed to organize and manage tourism-related information through a relational database.

The database maintains records of tourists, destinations, hotels, tour packages, bookings, payments, tour guides, and reviews.

An additional IoT transport monitoring component stores vehicle sensor readings, including speed, fuel level, engine temperature, and GPS location. It also maintains transport alerts, trip summaries, and maintenance records.

The project includes database design, normalization, SQL implementation, verification queries, analytical queries, and Power BI dashboards.

---

## Technologies Used

| Technology | Purpose |
|---|---|
| **MySQL** | Relational database management |
| **SQL** | Database creation, verification, and analysis |
| **MySQL Workbench** | Database development and query execution |
| **Power BI** | Data visualization and dashboards |
| **ERD / EERD** | Database structure and relationship modelling |
| **IoT Sensor Data** | Vehicle monitoring and transport analysis |

---

## Project Features

### 1. Tourism Management

- Tourist information management
- Tourism destinations and hotels
- Tour package management
- Booking and payment records
- Tour guide information and language details
- Customer reviews

### 2. IoT Transport Monitoring

- Transport and trip records
- Vehicle speed monitoring
- Fuel-level monitoring
- Engine-temperature monitoring
- GPS location records
- Transport alerts based on sensor readings
- Trip summaries and maintenance records

### 3. Database Analysis

- Tourist nationality distribution
- Most booked destinations
- Popular transport routes
- Booking status analysis
- Revenue by payment method
- IoT transport alerts by severity
- Transport utilization by route

### 4. Data Visualization

Power BI visualizations are used to present tourism and payment-related information through charts and graphical summaries.

---

## Database Structure

The database consists of **15 relational tables**.

| No. | Table Name | Purpose |
|---|---|---|
| 1 | `Tourists` | Stores tourist details |
| 2 | `Destinations` | Stores tourism destination information |
| 3 | `Hotels` | Stores hotel information |
| 4 | `TourPackages` | Maintains available tour packages |
| 5 | `Bookings` | Records tourist bookings |
| 6 | `Payments` | Stores booking payment information |
| 7 | `Guides` | Maintains tour guide records |
| 8 | `GuideLanguages` | Stores guide language information |
| 9 | `PackageGuides` | Links guides with tour packages |
| 10 | `Reviews` | Stores tourist reviews |
| 11 | `Transport` | Maintains transport information |
| 12 | `IoT_SensorReadings` | Stores vehicle sensor readings |
| 13 | `IoT_TransportAlerts` | Records transport monitoring alerts |
| 14 | `IoT_TripSummary` | Maintains transport trip summaries |
| 15 | `IoT_MaintenanceLog` | Stores vehicle maintenance records |

The database uses a relational structure to connect tourism operations, bookings, transport activities, and IoT monitoring information.

---

## Database Design

The project includes Entity Relationship Diagrams (ERD) and Enhanced Entity Relationship Diagrams (EERD).

These diagrams represent the database entities, their attributes, and the relationships between them.

### Entity Relationship Diagram (ERD)

The ERD illustrates the main tables and their relationships.

See the diagram in [`images/diagrams/`](images/diagrams/).

### Enhanced Entity Relationship Diagram (EERD)

The EERD provides an extended representation of the database design.

See the diagram in [`images/diagrams/`](images/diagrams/).

---

## Database Normalization

Database normalization was considered during the design process to reduce redundancy and improve data consistency.

The project report documents the normalization process, identification of database anomalies, and improvements made to the relational database design.

The normalization discussion includes:

- Data redundancy
- Insertion anomalies
- Update anomalies
- Deletion anomalies
- Relational table organization

For detailed explanations, refer to the complete project report.

---

## Project Folder Structure

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

**Note:** Image names above are shown without extensions. Original image file extensions should be retained when uploading.

---

## SQL Implementation

The SQL implementation is divided into three files.

| SQL File | Description |
|---|---|
| [`01_create_tables.sql`](sql/01_create_tables.sql) | Creates the database and its 15 tables |
| [`02_verification_queries.sql`](sql/02_verification_queries.sql) | Contains queries for verifying table structures and records |
| [`03_analysis_queries.sql`](sql/03_analysis_queries.sql) | Contains seven analytical SQL queries |

### 1. Database Creation

The `01_create_tables.sql` file contains the SQL statements for creating the relational database structure.

### 2. Database Verification

The `02_verification_queries.sql` file is used to verify database tables and examine stored records.

Verification includes commands such as:

```sql
SHOW TABLES;
DESCRIBE Tourists;
SELECT * FROM Tourists;
```

### 3. Analytical Queries

The `03_analysis_queries.sql` file contains queries for generating tourism, booking, payment, and IoT monitoring insights.

---

## SQL Analysis Queries

The project includes seven SQL analyses.

| No. | Analysis | Purpose |
|---|---|---|
| 1 | Tourist Nationality Distribution | Examines the nationality distribution of tourists |
| 2 | Most Booked Destinations | Identifies destinations with the highest booking counts |
| 3 | Most Popular Transport Routes | Examines frequently scheduled transport routes |
| 4 | Booking Status Summary | Summarizes bookings by status |
| 5 | Revenue by Payment Method | Calculates revenue grouped by payment method |
| 6 | IoT Transport Alerts by Severity | Counts vehicle alerts according to severity |
| 7 | Transport Utilization by Route | Examines transport usage across routes |

### SQL Query Results

Screenshots of the database outputs are available in:

[`images/sql_output/`](images/sql_output/)

The screenshots include:

- Tourist nationality distribution
- Most booked destinations
- Booking status
- Revenue by payment method
- Transport alerts by severity
- Scheduled routes
- Database table record counts
- Booking table structure

The complete analytical queries are available in:

[`03_analysis_queries.sql`](sql/03_analysis_queries.sql)

---

## Power BI Data Visualization

Power BI was used to visualize selected tourism management and payment data.

### 1. Booking Status

Shows the distribution of booking records across different booking statuses.

### 2. Payment Status

Presents payment records according to their status.

### 3. Tourist Nationality and Gender

Visualizes tourist information by nationality and gender.

The Power BI chart images are available in:

[`images/power_bi/`](images/power_bi/)

---

## IoT Transport Monitoring

The IoT component extends the tourism database by incorporating vehicle monitoring information.

### Monitoring Parameters

| Parameter | Description |
|---|---|
| Vehicle Speed | Records vehicle speed |
| Fuel Level | Monitors vehicle fuel readings |
| Engine Temperature | Records engine temperature |
| GPS Position | Stores vehicle location information |
| Transport Alerts | Records alerts associated with sensor readings |
| Maintenance Records | Stores maintenance activities |
| Trip Summary | Maintains transport trip information |

### Related Database Tables

- `IoT_SensorReadings`
- `IoT_TransportAlerts`
- `IoT_TripSummary`
- `IoT_MaintenanceLog`

The IoT component demonstrates how transport monitoring information can be integrated with a tourism management database.

---

## How to Run the Project

### Requirements

- MySQL or MariaDB
- MySQL Workbench (optional)
- Power BI Desktop (optional, for working with dashboard data)

### Step 1: Download the Repository

Download the repository as a ZIP file from GitHub and extract it.

Alternatively, clone the repository using Git.

### Step 2: Open MySQL

Start your MySQL server and connect through MySQL Workbench or the MySQL command-line client.

### Step 3: Create the Database Tables

Execute:

```bash
mysql -u root -p < sql/01_create_tables.sql
```

### Step 4: Verify the Tables

Execute:

```bash
mysql -u root -p < sql/02_verification_queries.sql
```

### Step 5: Execute the Analysis Queries

Execute:

```bash
mysql -u root -p < sql/03_analysis_queries.sql
```

**Important:** The scripts should be executed in the correct database context. Ensure the required sample records have been inserted before running analytical queries.

You can also open and execute these SQL files directly through MySQL Workbench.

The repository includes screenshots of the results generated during project implementation.

---

## Project Reports

Two PDF documents are provided.

| Document | Description |
|---|---|
| [Complete Project Report](report/Tourism_Management_System_Report.pdf) | Contains the project documentation, database design, normalization, implementation, and results |
| [Project Results](report/Tourism_Management_System_Results.pdf) | Contains database outputs, SQL analysis results, and Power BI visualizations |

---

## Learning Outcomes

This project provided practical experience in:

- Relational database design
- Entity relationship modelling
- Database normalization
- SQL table creation and verification
- SQL-based data analysis
- Integrating IoT monitoring information into a database
- Visualizing structured data using Power BI
- Organizing and documenting a database engineering project

---

## Author

**Muhammad Usman Shah**  
BS Electrical Engineering  
Namal University, Mianwali

**Course:** Database Engineering  
**Instructor:** Mr. Muhammad Bilal

---

## Project Status

**Completed — Phase 4 (Final Project)**

Developed as an academic database engineering project.
