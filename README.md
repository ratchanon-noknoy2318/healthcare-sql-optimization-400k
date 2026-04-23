# HOSxP Data Pipeline (SQL-Based) 🗄️

A collection of optimized SQL scripts and stored procedures designed to automate the ETL (Extract, Transform, Load) process within a **HOSxP** environment. This project focuses on high-performance data movement directly at the database level, ensuring data consistency and speed.

## 🛠️ Data Engineering Workflow

- **Direct Extraction**: Utilizes SQL queries to pull data from core HOSxP tables (e.g., `patient`, `ovst`, `ipt`, `opitemrece`).
- **Data Transformation**: SQL views and procedures that clean raw medical data and format it for reporting (HDX, 43 Folders, or custom BI).
- **Automated Sync**: Optimized for scheduled jobs (MySQL Event Scheduler or SQL Server Agent) to keep analytical tables up to date.
- **Performance Tuning**: Includes indexing strategies to handle large-scale healthcare datasets without impacting production performance.

## 📂 Repository Structure

- `/src/extract/`: SQL scripts for pulling raw data.
- `/src/transform/`: Logic for cleaning and joining complex HOSxP tables.
- `/src/load/`: Scripts to populate Data Marts or analytical schemas.
- `/schema/`: Definition of destination tables.

## 🚀 Implementation

1. **Database Connection**: Ensure you have read-access to the HOSxP production database (usually MySQL).
2. **Setup Destination**: Run the schema scripts located in `/schema` to create your target tables.
3. **Execute Pipeline**: 
   - Run the transformation scripts to process historical data.
   - Set up the stored procedures as a **MySQL Event** for daily or real-time synchronization.

## 🔍 Example Transformation
This pipeline automates the conversion of complex HOSxP codes into human-readable formats:
```sql
-- Example logic for appointment status transformation
CREATE OR REPLACE VIEW v_patient_summary AS
SELECT 
    hn, 
    fname, 
    lname,
    DATE(vstdate) as visit_date
FROM patient 
JOIN ovst USING (hn);
```

## 🛡️ Security & PDPA
This pipeline follows strict healthcare data protocols:
- **No PII Leaks**: Scripts are designed to exclude or mask sensitive fields during the transfer to non-secure environments.
- **Read-Only Source**: All extraction scripts are optimized for `SELECT` operations to ensure zero downtime for the HOSxP application.

## 📄 License
MIT License
