# Amazon Sales Data Analysis

## Project Overview

This project analyzes Amazon's sample sales transaction data using Python tools such as Pandas, NumPy, Matplotlib, and Seaborn. The goal is to identify trends, revenue patterns, and profitable segments to support data-driven decision-making.

This project was developed entirely in a Jupyter Notebook and hosted on Kaggle.

## Business Task

Objective: Analyze sales data to uncover insights that can help optimize pricing strategies, regional focus, and product performance.

Key questions addressed:
- What are the revenue trends over time?
- Which regions and countries generate the most profit?
- Which product lines perform the best in terms of units sold and revenue?
- How do deal sizes and sales channels affect overall performance?

## Dataset

- Source: Amazon Sales Sample Dataset (Kaggle)
- Format: CSV
- Size: ~2.8K records
- Columns include: Order Date, Region, Country, Item Type, Sales Channel, Units Sold, Unit Price, Revenue, Profit, etc.

## Tools Used

- Python - Jupyter Notebook 
- Pandas
- NumPy
- Matplotlib
- Seaborn

## Analysis Performed

- Cleaned and converted date formats and numeric columns
- Created new metrics like Total Revenue and Total Profit
- Grouped data by month, region, product, and channel
- Performed EDA and visualized results using bar charts, line plots, and pie charts

## Key Visualizations

- Line plot: Monthly Revenue Over Time
- Bar chart: Top Regions by Revenue
- Bar chart: Top Product Lines by Units Sold
- Pie chart: Revenue by Deal Size (Sales Channel)
- Bar chart: Profit by Country

## Key Insights

- Revenue shows clear seasonal trends with certain months consistently outperforming others.
- The EMEA region and countries like France and USA dominate revenue and profit.
- Office Supplies and Household items are among the top-selling categories.
- Deal size and sales channel have a strong impact on profitability — large deals are highly profitable.
- Profitability varies significantly by region, not just revenue volume.

## Repository Contents

```
Amazon-Sales-Analysis/
├── Amazon_Sales_Analysis_Notebook.ipynb
├── README.md
```

