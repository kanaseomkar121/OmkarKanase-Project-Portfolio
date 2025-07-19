# Cyclistic Bike-Share Case Study

## Project Overview

This project analyzes usage patterns of Cyclistic's bike-sharing program to help the company understand how casual riders and annual members use the service differently. The goal is to support a future marketing strategy aimed at converting casual users into annual subscribers.

This case study is part of the Google Data Analytics Capstone Project.

## Business Task

Objective: Analyze historical ride data to answer:  
“How do annual members and casual riders use Cyclistic bikes differently?”

Key business questions:
- What types of bikes do members vs. casuals use?
- How do their ride durations and usage patterns differ?
- What times and days are most popular for each user type?

## Dataset

- Source: Divvy Trip Data - 12 months of 2022
- Files: 12 separate .csv files (one per month)
- Combined using Excel and Power Query into a single dataset with approximately 5.6 million rows

## Tools Used

- Excel: Initial combination of files
- Power Query (in Power BI): Data cleaning & transformation
- Power BI: Interactive dashboard development and visual storytelling

## Data Cleaning Process

Performed entirely using Power Query inside Power BI:

- Combined 12 monthly .csv files into one master table
- Removed duplicate and null rows
- Standardized column types (datetime, text, duration)
- Removed outliers and negative ride durations
- Filtered non-standard ride types and station blanks
- Created derived columns:
  - Ride length (in minutes)
  - Day of week
  - Month of trip
  - User type (member vs. casual)

A Word/PDF file describing all data cleaning steps is included: Cyclistic_Data_Workflow.docx

## Dashboard Summary

### Page 1: Rider Type Overview
- Total Rides, Average Ride Duration, Percentage Share by Rider Type
- Ride Duration Distribution (Boxplot)
- Ride Type Preferences: Classic vs. Electric vs. Docked
- Day of Week and Month-wise breakdown

### Page 2: Deeper Ride Pattern Insights
- Top Stations by User Type
- Ride Duration by Bike Type and Rider Type
- Hourly Trends
- Filters for Rider Type, Day, and Month

Dashboard file: cyclistic_dashboard.pdf

## Key Insights

- Casual riders prefer weekends and afternoons, while members ride mostly on weekdays and commute hours.
- Electric bikes are more popular with casual users, while classic bikes are heavily used by members.
- Ride durations are longer for casual users — suggesting more recreational use.
- Top stations differ significantly between user types — useful for targeted marketing.



