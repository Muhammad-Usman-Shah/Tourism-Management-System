Tourism Management System
MySQL Database Engineering | IoT Transport Monitoring | SQL Analytics | Power BI

A tourism management database developed as the Phase 4 (Final) project for the Database Engineering course at Namal University Mianwali. The project models tourism operations and extends the database with IoT transport monitoring, alerts, and maintenance records.

Author: Muhammad Usman Shah (NUM-BSEE-2022-28)
Instructor: Mr. Muhammad Bilal
Department: Electrical Engineering, Namal University Mianwali
Project overview
The database manages tourists, destinations, hotels, tour packages, bookings, payments, guides, and reviews. It also records vehicle transport trips and IoT sensor data such as speed, fuel level, engine temperature, and GPS position. Sensor readings support transport alerts, which can be linked to maintenance records.

The project documentation covers entity relationship diagrams (ERD and EERD), normalization and anomaly removal, SQL table creation, verification and analytical queries, and Power BI charts.
Main features
- Relational database design for tourism operations.
- 15 tables covering tourism, transport, and IoT data.
- ERD/EERD diagrams and database normalization documentation.
- SQL scripts for database creation, verification, and analysis.
- IoT readings, severity-based transport alerts, trip summaries, and maintenance logs.
- Seven analysis queries and accompanying result screenshots.
- Power BI visualizations for booking, payment, and tourist demographics.
Repository structure
Tourism-Management-System/
├── README.md
├── report/
│   ├── Tourism_Management_System_Report.pdf
│   └── Tourism_Management_System_Results.pdf
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_verification_queries.sql
│   └── 03_analysis_queries.sql
└── images/
    ├── diagrams/       # ERD and EERD images
    ├── sql_output/     # MySQL query result screenshots
    └── power_bi/       # Power BI chart screenshots
The existing image filenames are kept unchanged inside the appropriate folders.
Database tables
Area	Tables
Tourism and bookings	Tourists, Destinations, Hotels, TourPackages, Bookings, Payments
Guides and feedback	Guides, GuideLanguages, PackageGuides, Reviews
Transport and IoT	Transport, IoT_SensorReadings, IoT_TransportAlerts, IoT_TripSummary, IoT_MaintenanceLog


Total: 15 tables.
How to run
Requirements: MySQL or MariaDB, or MySQL Workbench connected to a MySQL server.
1. Download or clone the repository.
2. Open the sql folder.
3. Run the scripts in this order:
   - 01_create_tables.sql — creates the database schema and tables.
   - 02_verification_queries.sql — inspects the database and checks records.
   - 03_analysis_queries.sql — runs the analytical queries.
From a terminal at the repository root, you can run:
mysql -u root -p < sql/01_create_tables.sql
mysql -u root -p < sql/02_verification_queries.sql
mysql -u root -p < sql/03_analysis_queries.sql
Alternatively, open each .sql file in MySQL Workbench and execute it in the same order.

Data note: Creating tables does not automatically populate them. The verification and analysis queries will return meaningful results only after the required sample or operational records have been inserted. Check whether 01_create_tables.sql contains the data insertion statements; if not, the supplied screenshots and reports document results from the original populated database, but the repository alone does not reproduce those results.
SQL analysis queries
No.	Query	Purpose
1	Tourist nationality distribution	Summarize tourists by nationality.
2	Most booked destinations	Identify destinations with the most bookings.
3	Most popular transport routes	Review frequently used routes.
4	Booking status summary	Count bookings by status.
5	Revenue by payment method	Compare revenue across payment methods.
6	IoT transport alerts by severity	Summarize transport alerts by severity level.
7	Transport utilization by route	Evaluate route-level transport utilization.


Screenshots of SQL outputs are available in [`images/sql_output/`](images/sql_output/).
Power BI visualizations
The project includes chart screenshots for:
- Booking status: Distribution of booking outcomes.
- Payment status: Distribution of payments by status.
- Tourist nationality and gender: Demographic breakdown of the tourists.
See [`images/power_bi/`](images/power_bi/).

These are exported chart images, not an editable Power BI .pbix report.
Database diagrams
The ERD and EERD describe the entities and relationships used in the database design. They are available in [`images/diagrams/`](images/diagrams/).
Documentation
- [Complete project report](report/Tourism_Management_System_Report.pdf) — database design, normalization, implementation, and analysis.
- [Results report](report/Tourism_Management_System_Results.pdf) — selected tables, query outputs, and Power BI charts.
Technologies
- MySQL / SQL: Relational database design, implementation, and analytical queries.
- MySQL Workbench: Database development and querying.
- Power BI: Visualization of tourism and payment data.
- IoT data model: Storage and analysis of vehicle sensor readings, alerts, and maintenance events.
Project context
Course: Database Engineering
Project stage: Phase 4 (Final)
University: Namal University Mianwali
Department: Electrical Engineering
Author
Muhammad Usman Shah
BSc Electrical Engineering, Namal University Mianwali
