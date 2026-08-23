# HOSxP SQL Tools

SQL scripts for extracting, analyzing, masking, and migrating data from BMS-HOSxP.

## Highlights

- **Reverse Engineering:** Analyzed HOSxP database structures without ER diagrams or existing documentation.
- **Data Privacy:** Implemented data masking to protect sensitive patient information during development and testing.
- **Data Migration:** Extracted and transformed hospital data for integration with healthcare applications.

## SQL Scripts

| Script | Purpose |
| :--- | :--- |
| `check_daily_patient.sql` | Daily patient service tracking |
| `check_service_cost.sql` | Patient service cost analysis |
| `dtx_export.sql` | DTX data extraction |
| `masked_patient.sql` | Patient data masking |
| `migration_patient_data.sql` | Patient data transformation and migration |
| `telemedicine_export.sql` | Telemedicine patient data extraction |
| `view_allergy_history.sql` | Drug allergy history |
| `view_village.sql` | Patient geographic information |

## Database Relationships

```mermaid
graph TD

    patient["patient"]

    pttype["pttype"]
    pttypeno["pttypeno"]
    occupation["occupation"]
    religion["religion"]
    thaiaddress["thaiaddress"]

    ovst["ovst"]
    vn_stat["vn_stat"]
    opdscreen["opdscreen"]
    ovstdiag["ovstdiag"]

    kskdepartment["kskdepartment"]
    spclty["spclty"]

    patient --> ovst

    patient --> pttype
    patient --> pttypeno
    patient --> occupation
    patient --> religion
    patient --> thaiaddress

    ovst --> vn_stat
    ovst --> opdscreen
    ovst --> ovstdiag
    ovst --> kskdepartment
    ovst --> spclty
