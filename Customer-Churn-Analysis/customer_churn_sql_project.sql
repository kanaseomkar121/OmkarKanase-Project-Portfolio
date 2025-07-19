-- Telco Customer Churn Analysis: MySQL & PowerBi Project

-- 1: Create Table

CREATE TABLE telco_customer_churn (
    customerID VARCHAR(50) PRIMARY KEY,
    gender VARCHAR(10),
    SeniorCitizen TINYINT,
    Partner VARCHAR(5),
    Dependents VARCHAR(5),
    tenure INT,
    PhoneService VARCHAR(20),
    MultipleLines VARCHAR(30),
    InternetService VARCHAR(20),
    OnlineSecurity VARCHAR(30),
    OnlineBackup VARCHAR(30),
    DeviceProtection VARCHAR(30),
    TechSupport VARCHAR(30),
    StreamingTV VARCHAR(30),
    StreamingMovies VARCHAR(30),
    Contract VARCHAR(20),
    PaperlessBilling VARCHAR(5),
    PaymentMethod VARCHAR(50),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(10,2),
    Churn VARCHAR(5)
);


-- 2: Insert Sample Records (first few rows)

INSERT INTO telco_customer_churn (
    customerID, gender, SeniorCitizen, Partner, Dependents, tenure,
    PhoneService, MultipleLines, InternetService, OnlineSecurity, OnlineBackup,
    DeviceProtection, TechSupport, StreamingTV, StreamingMovies, Contract,
    PaperlessBilling, PaymentMethod, MonthlyCharges, TotalCharges, Churn
) VALUES
('7590-VHVEG', 'Female', 0, 'Yes', 'No', 1, 'No', 'No phone service', 'DSL', 'No',
 'Yes', 'No', 'No', 'No', 'No', 'Month-to-month', 'Yes', 'Electronic check', 29.85, 29.85, 'No'),
('5575-GNVDE', 'Male', 0, 'No', 'No', 34, 'Yes', 'No', 'DSL', 'Yes',
 'No', 'Yes', 'No', 'No', 'No', 'One year', 'No', 'Mailed check', 56.95, 1889.50, 'No'),
('3668-QPYBK', 'Male', 0, 'No', 'No', 2, 'Yes', 'No', 'DSL', 'Yes',
 'No', 'No', 'No', 'No', 'No', 'Month-to-month', 'Yes', 'Mailed check', 53.85, 108.15, 'Yes');


-- 3: SQL Queries for Dashboard Insights


-- 1. Churn Summary
SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS total_churned,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percent,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charge,
    ROUND(AVG(tenure), 2) AS avg_tenure
FROM telco_customer_churn;

-- 2. Churn by Gender
SELECT gender,
       ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percent
FROM telco_customer_churn
GROUP BY gender;

-- 3. Churn by Senior Citizen
SELECT 
    CASE WHEN SeniorCitizen = 1 THEN 'Senior' ELSE 'Non-Senior' END AS senior_status,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percent
FROM telco_customer_churn
GROUP BY senior_status;

-- 4. Churn by Contract Type
SELECT Contract,
       ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percent
FROM telco_customer_churn
GROUP BY Contract;

-- 5. Churn by Payment Method
SELECT PaymentMethod,
       ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percent
FROM telco_customer_churn
GROUP BY PaymentMethod;

-- 6. Churn by Paperless Billing
SELECT PaperlessBilling,
       ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percent
FROM telco_customer_churn
GROUP BY PaperlessBilling;

-- 7. Churn by Internet Service
SELECT InternetService,
       ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percent
FROM telco_customer_churn
GROUP BY InternetService;

-- 8. Churn by Online Security
SELECT OnlineSecurity,
       ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percent
FROM telco_customer_churn
GROUP BY OnlineSecurity;

-- 9. Churn Rate Over Tenure
SELECT tenure,
       ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percent
FROM telco_customer_churn
GROUP BY tenure
ORDER BY tenure;
