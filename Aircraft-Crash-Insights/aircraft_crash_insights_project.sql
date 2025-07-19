-- Aircraft Crash Insights Project (2000–2024)

-- 1: Create Main Cleaned ASN Table (asn_clean)


CREATE TABLE asn_clean (
    date DATE,
    Month TINYINT,
    Year INT,
    type VARCHAR(100),
    registration VARCHAR(50),
    operator VARCHAR(100),
    Fatalities INT,
    location VARCHAR(150),
    cat VARCHAR(10),
    Country VARCHAR(50),
    Manufacturer VARCHAR(50),
    `Military / Commercial` VARCHAR(20)
);


-- STEP 2: Create Boeing Filtered Table (boeing_only)


CREATE TABLE boeing_only AS
SELECT *
FROM asn_clean
WHERE Manufacturer = 'Boeing' AND Year BETWEEN 2000 AND 2024;

-- =======================================================
-- STEP 3: Sample INSERTs (for testing)
-- =======================================================

INSERT INTO asn_clean (
    date, Month, Year, type, registration, operator, Fatalities,
    location, cat, Country, Manufacturer, `Military / Commercial`
) VALUES
('2001-05-25', 5, 2001, 'Boeing 737-200', 'N12345', 'Some Airlines', 110,
 'Miami, USA', 'A1', 'USA', 'Boeing', 'C'),
('2005-11-12', 11, 2005, 'Boeing 747', 'N98765', 'Cargo Air', 2,
 'Tokyo, Japan', 'A2', 'Japan', 'Boeing', 'C'),
('2009-08-17', 8, 2009, 'Airbus A320', 'F-GKXB', 'AirFrance', 150,
 'Paris, France', 'A1', 'France', 'Airbus', 'C');


-- STEP 4: Dashboard Queries


-- 1. Total Crashes (2000–2024)
SELECT COUNT(*) AS total_crashes
FROM asn_clean
WHERE Year BETWEEN 2000 AND 2024;

-- 2. Total Fatalities
SELECT SUM(Fatalities) AS total_fatalities
FROM asn_clean
WHERE Year BETWEEN 2000 AND 2024;

-- 3. Boeing Crash % vs Others
SELECT 
    ROUND(SUM(CASE WHEN Manufacturer = 'Boeing' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS boeing_crash_percent
FROM asn_clean
WHERE Year BETWEEN 2000 AND 2024;

-- 4. Crashes by Manufacturer
SELECT Manufacturer, SUM(Fatalities) AS total_fatalities
FROM asn_clean
WHERE Year BETWEEN 2000 AND 2024
GROUP BY Manufacturer
ORDER BY total_fatalities DESC;

-- 5. Crashes by Year (Boeing only)
SELECT Year, COUNT(*) AS boeing_crashes
FROM boeing_only
GROUP BY Year
ORDER BY Year;

-- 6. Crashes by Country
SELECT Country, COUNT(*) AS total_crashes
FROM asn_clean
WHERE Year BETWEEN 2000 AND 2024
GROUP BY Country
ORDER BY total_crashes DESC;

-- 7. Boeing Model-wise Crashes
SELECT type AS Aircraft_Model, COUNT(*) AS crash_count
FROM boeing_only
GROUP BY type
ORDER BY crash_count DESC;

-- 8. Average Fatalities (Boeing vs Others)
SELECT 
    CASE WHEN Manufacturer = 'Boeing' THEN 'Boeing' ELSE 'Other' END AS group_type,
    ROUND(AVG(Fatalities), 2) AS avg_fatalities
FROM asn_clean
WHERE Year BETWEEN 2000 AND 2024
GROUP BY group_type;

-- 9. Year with Maximum Crashes
SELECT Year, COUNT(*) AS crashes
FROM asn_clean
WHERE Year BETWEEN 2000 AND 2024
GROUP BY Year
ORDER BY crashes DESC
LIMIT 1;
