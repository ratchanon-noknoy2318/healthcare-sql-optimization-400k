## How to Use

1. Open the SQL Editor or click the ⚡ button.
2. Open or copy the desired `.sql` script into the SQL Editor.
3. Review the query and click **Run**.
4. Review and verify the data before exporting it to Excel.

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

    ovst["ovst"]
    patient["patient"]
    vn_stat["vn_stat"]
    pttype["pttype"]
    opitemrece["opitemrece"]
    nondrugitems["nondrugitems"]
    icd101["icd101"]

    ovst --> patient
    ovst --> vn_stat
    ovst --> opitemrece

    vn_stat --> pttype
    vn_stat --> icd101

    opitemrece --> nondrugitems
