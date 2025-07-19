# Aircraft Crash Insights (2000–2024)

## Objective
To analyze global aviation crash trends and identify patterns in aircraft types, manufacturers, regions, and causes — with a focused lens on Boeing crashes — to uncover safety concerns and improve aviation risk awareness.

---

## Dataset Sources

1. **Aviation Safety Network (ASN)** – Cleaned dataset (`asn_clean`)
   - Global aircraft crash records filtered for 2000–2024
2. **Filtered Subset – Boeing Only** (`boeing_only`)
   - Crashes involving Boeing aircraft only
3. **Air Crashes Full Dataset (Kaggle)** – Additional reference data
4. **NTSB Accident Records (U.S.)**
5. **Hugging Face – AirSafe DB (JSON)**
   - Used for Python-based validation and segment-level analysis

---

## Tools Used

- **MySQL** – Data cleaning, transformation, SQL analysis
- **Power BI** – Dashboard design and data storytelling
- **Excel** – Data inspection and formatting

---

## Dashboard Summary

The Power BI report contains a single-page executive dashboard with the following visuals:

- **Total Crashes & Fatalities (2000–2024)**
- **Boeing Crashes vs Others – Share & Severity**
- **Crashes by Year, Country, Manufacturer**
- **Top Boeing Models in Crashes**
- **Crash Causes Breakdown (TreeMap)**
- **Average Fatalities (Boeing vs Others)**

---

## Key Insights (2000–2024)

- Boeing accounted for **10.2%** of all crashes in the period.
- **USA, Russia, and Indonesia** reported the most crashes.
- **Boeing 737** was the most crash-involved aircraft model.
- Average fatalities per **Boeing crash** were significantly higher than others.
- **2005** was the year with the highest number of crashes.
- Major crash causes: **Unknown**, **Technical Failures**, **Human Error**.

---

## Files Included

| File                                   | Description                                                                 |
|----------------------------------------|-----------------------------------------------------------------------------|
| `aircraft_crash_insights_project.sql` | SQL script to create tables, insert samples, and run dashboard queries     |
| `Aircraft_Crash_Project_Dashboard-Final.pdf` | Power BI report with interactive crash insights dashboard (not public)     |

---

