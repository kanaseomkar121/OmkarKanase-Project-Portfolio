<img width="1536" height="1024" alt="Cover Page" src="https://github.com/user-attachments/assets/8aa9db95-62ce-4887-921e-a59090393598" />

#  **Pharmaceutical Sales Analysis – Tableau Project**
*An Interactive Sales Performance Dashboard for Data-Driven Decision Making*

---

##  **Project Overview**
This project delivers a **comprehensive sales analysis** for a global pharmaceutical company, focusing on **executive KPIs, distributor & customer performance, and sales team efficiency**.

An **interactive Tableau dashboard** was developed to uncover **top-performing products, channels, cities, and sales teams** — enabling informed, data-driven strategies.

> **Business Impact:** Helped stakeholders track key metrics, identify underperforming areas, and discover new market opportunities.

---

##  **Table of Contents**
1. [Problem Statement](#-problem-statement)  
2. [Objectives](#-objectives)  
3. [Dataset & Source](#-dataset--source)  
4. [Tools & Technologies](#-tools--technologies)  
5. [Project Workflow](#-project-workflow)  
6. [Dashboard Pages](#-dashboard-pages)  
7. [Key Insights](#-key-insights)  
8. [How to View](#-how-to-view)  
9. [Links & References](#-links--references)  
10. [Contact](#-contact)  

---

## **Problem Statement**
The company’s **raw sales data** was scattered across multiple distributors and lacked consolidated reporting.  
Decision-makers struggled to **see the big picture** of performance across products, cities, channels, and sales teams.

**Key Needs:**
- Identify **top products, customers, and regions**
- Understand **channel performance**
- Evaluate **sales team efficiency**
- Present data in a **clear, interactive visual format**

---

## **Objectives**
- **Track & compare** sales performance across multiple dimensions.
- **Identify growth opportunities** by region, channel, and distributor.
- **Enable interactive filtering** for custom business questions.
- **Improve decision-making** with a visually engaging dashboard.

---

## **Dataset & Source**
- **Source:** Kaggle.
- **Type:** CSV
- **Size:** ~X MB (post-cleaning)
- **Fields Included:**
  - Order Date, City, Country  
  - Distributor Name, Customer Name  
  - Product Class, Product Name  
  - Channel, Sub-channel  
  - Sales, Quantity, Sales Team, Manager  



##  **Tools & Technologies**
- **R Programming** – Data cleaning & preparation  
  *(tidyverse, lubridate, stringr)*  
- **Kaggle Notebook** – Cloud-based R execution  
- **Tableau Desktop** – Dashboard development  
- **Tableau Public** – Online publishing  
- **Excel/CSV** – Data export verification  

---

## **Project Workflow**
**1️) Planning & Scope Definition**  
- Defined business needs around distributor, customer, and team performance.  

**2️) Data Cleaning in R (Kaggle)**  
- Imported CSV, loaded libraries.  
- Renamed columns, fixed data types.  
- Removed duplicates, handled missing values.  
- Created date hierarchy fields (Year, Month, Month-Year).  
- Exported cleaned CSV for Tableau.

**3️) Tableau Data Setup**  
- Imported cleaned CSV into Tableau.  
- Standardized geographic fields for mapping.  
- Built calculated fields for KPIs and visual grouping.

**4️) Dashboard Development**  
- Created **3 interactive dashboard pages** (see below).  
- Applied consistent color theme, formatting, and layout containers.  
- Added **navigation buttons** and interactive filters.

**5️) Testing & Publishing**  
- Verified KPI accuracy and filter functionality.  
- Published final version to Tableau Public.

---

## **Dashboard Pages**

### **1. Executive Summary**
KPIs:
- Total Sales  
- Total Orders  
- Top Product Class, Product, City  

Visuals:
- Sales by Year (Bar)  
- Sales by Month (Line)  
- Sales by Year & Channel (Clustered Bar)  
- Sales by Sub-channel (Donut)  
- Sales by Country (Map)  

<img width="1799" height="1199" alt="Executive Summary " src="https://github.com/user-attachments/assets/b7d18052-e8c6-4789-b618-45eace38a0cd" />

---

### **2. Distributor & Customer Analysis**
KPIs:
- Top Distributor  
- Top Customer  

Visuals:
- Top 10 Distributors by Revenue  
- Top 10 Customers by Revenue  
- Sales by Distributor & Product (Highlight Table)  
- Sales by Channel (Donut Chart)  
- Sales by Top Cities (Map)  

<img width="1799" height="1199" alt="Distributors   Customers" src="https://github.com/user-attachments/assets/556efb34-7479-4f6e-97ba-9ce9cb0932dd" />


---

### **3. Sales Team Performance**
KPIs:
- Top Sales Team  
- Top Sales Manager  

Visuals:
- Sales by Sales Team & Product Class (Bar with labels)  
- Sales by Sales Manager (Horizontal Bar)  
- Sales Trend by Sales Team (Line)  
- Regional Sales Comparison (Map)  

<img width="1799" height="1199" alt="Sales Team Performance" src="https://github.com/user-attachments/assets/0d34e81c-a175-4549-bd9f-7f06a782b178" />




## **Key Insights**
- **Antibiotics** emerged as the top revenue-generating product class.  
- Hospital channel **outperformed pharmacies** in revenue.  
- A handful of cities contributed the majority of sales.  
- Certain sales managers consistently outperformed their peers.  
- Regional gaps highlight potential **market expansion opportunities**.

---

## **How to View**

### **Online (Recommended)**  
[![View in Tableau Public](https://img.shields.io/badge/View_in-Tableau_Public-blue?style=for-the-badge&logo=tableau)](https://public.tableau.com/app/profile/omkar.kanase/viz/PharmaceuticalSalesAnalysis_17546490207930/ExecutiveSummary?publish=yes)  

### **Offline**
1. Download the `.twbx` file from this repo.  
2. Open in Tableau Desktop.  
3. Interact with filters and visuals.

---

## **Links & References**
- **Data Cleaning in R – Kaggle Notebook:** *[https://www.kaggle.com/code/omkarkanase121/pharma-sales-r-analysis]*  

---

## **Contact**
**Name:** *[Omkar Kanase]*  
Email: *[kanaseomkar121@gmail.com]*  
LinkedIn: *[https://www.linkedin.com/in/omkar-kanase-720a37256/]*  
  
[![Gmail Badge](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:kanaseomkar121@gmail.com)
[![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/omkar-kanase-720a37256/)
[![Kaggle Badge](https://img.shields.io/badge/Kaggle-20BEFF?style=for-the-badge&logo=kaggle&logoColor=white)](https://www.kaggle.com/code/omkarkanase121/pharma-sales-r-analysis)

---

> If you liked this project, feel free to **star this repo** and check out my other work!
