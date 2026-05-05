# HOSxP Core ETL Engine

<p align="center">
  <img src="https://img.shields.io/badge/Data%20Engineer-111111?style=flat-square" />
  <img src="https://img.shields.io/badge/Healthcare%20Data%20Platform-111111?style=flat-square" />
  <img src="https://img.shields.io/badge/HOSxP%20System-111111?style=flat-square" />
</p>

---

## Overview

This project focuses on extracting and interpreting data from a legacy HOSxP hospital database to support operational reporting and analysis.

The work was performed in a low-documentation environment, requiring direct exploration of database schemas and validation with healthcare staff.

---

## Problem Context

The HOSxP database presents several practical challenges:

- Data is distributed across 50+ relational tables  
- Field-level meaning is not clearly documented  
- Business logic is embedded implicitly in the schema  
- Queries require cross-table validation to ensure correctness  

As a result, generating reliable reports requires manual investigation and repeated validation.

---

## Scope of Work

- Explored and mapped relevant tables for clinical and operational data  
- Wrote SQL queries to extract patient and workflow-related information  
- Identified relationships between tables through iterative querying  
- Validated extracted data against real-world workflows with staff  
- Refined queries based on inconsistencies and edge cases  

---

## Data Investigation Approach

### Schema Exploration
- Reviewed table structures and key fields  
- Identified join paths between related tables  
- Tested relationships through sample queries  

### Query Development
- Built SQL queries incrementally  
- Cross-checked outputs across multiple tables  
- Adjusted logic based on mismatched or inconsistent results  

### Validation
- Compared query results with expected real-world scenarios  
- Confirmed interpretations with healthcare staff  
- Iterated until results aligned with actual workflows  

---

## Data Flow

HOSxP Database  
→ SQL Query Layer  
→ Data Validation  
→ Cleaned Dataset  
→ Reporting / Analysis  

---

## Tech Stack

- SQL  
- HOSxP Hospital Information System  
- Schema exploration and relational data analysis  

---

## Key Learnings

- Interpreting legacy systems requires both technical and domain understanding  
- Schema relationships are not always explicit and must be validated  
- Query correctness depends on cross-referencing multiple data sources  
- Real-world data often contains inconsistencies that must be handled iteratively  

---

## Notes

This work reflects practical experience working with a real hospital database where documentation is limited and correctness depends on validation with domain experts.
