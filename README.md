# AdventureWorks Sales Analytics Dashboard | SQL Server + Power BI

## Project Overview

This project is an end-to-end Business Intelligence solution built using SQL Server and Power BI. The objective was to analyze AdventureWorks sales data and generate actionable business insights related to product performance, customer behavior, geographic sales, and product returns.



---

# Project Objectives

- Analyze overall business performance using KPIs.
- Identify top-performing products and customer segments.
- Understand geographic sales distribution.
- Identify product return patterns.
- Build an interactive dashboard for business users.

---

# Tools & Technologies

- SQL 
- Power BI 
- DAX
- Data Modeling

---

# Project Workflow

### 1. SQL Data Preparation

- Imported AdventureWorks datasets into SQL Server.
- Cleaned numeric data using staging tables.
- Corrected decimal formatting issues.
- Validated data using SQL queries.
- Combined yearly sales tables into a single Sales table.

### 2. SQL Views Created

- **vw_SalesAnalysis**
  - Combined Sales, Products, Customers, Calendar and Territories.

- **vw_ProductDetails**
  - Combined Products, Categories and Subcategories.
  - Created to correctly model Sales and Returns.

### 3. Power BI Data Modeling

Implemented a star-schema style data model.

Dimension Tables

- Calendar
- vw_ProductDetails

Fact Tables

- vw_SalesAnalysis
- Returns

Relationships

- Calendar → Sales
- Calendar → Returns
- ProductDetails → Sales
- ProductDetails → Returns

### 4. DAX Measures

Created reusable business measures including:

- Total Revenue
- Total Cost
- Total Profit
- Profit Margin
- Total Orders
- Total Quantity
- Total Returns
- Return Rate

### 5. Interactive Dashboard Development

Created five interactive dashboard pages with slicers, KPI cards and cross-filtering.

---

# Dashboard Pages

---

# 1. Executive Dashboard

![Executive Dashboard](Dashboard%20Screenshots/Executive%20Dashboard.png)

## Purpose

Provides a high-level overview of business performance.

### Key Metrics

- Total Revenue
- Total Profit
- Profit Margin
- Total Orders

### Visuals

- Monthly Revenue Trend
- Interactive Year, Region and Occupation filters

### Business Insights

- Total Revenue exceeded **$24.9M**.
- Profit Margin remained close to **42%**, indicating healthy profitability.
- More than **25,000 customer orders** were analyzed.
- Overall Return Rate remained low at approximately **2.17%**.

---

# 2. Product Analysis

![Product Analysis](Dashboard%20Screenshots/Product%20Analysis.png)

## Purpose

Identify products generating the highest revenue and profit.

### Visuals

- Revenue by Category
- Revenue by Subcategory
- Top 10 Products by Revenue
- Top 10 Products by Profit

### Business Insights

- Bikes generated the highest revenue among all product categories.
- Road Bikes and Mountain Bikes were the strongest-performing subcategories.
- Revenue was concentrated among a relatively small number of premium bicycle models.
- Products with the highest revenue were not always the most profitable.

---

# 3. Customer Analysis

![Customer Analysis](Dashboard%20Screenshots/Customer%20Analysis.png)

## Purpose

Analyze customer demographics and purchasing behavior.

### Visuals

- Revenue by Occupation
- Revenue by Education Level
- Revenue by Gender
- Revenue by Home Owner
- Top 10 Customers by Revenue

### Business Insights

- Professional customers generated the highest revenue.
- Customers with Bachelor's degrees contributed the largest revenue share.
- Homeowners generated significantly more revenue than non-homeowners.
- Revenue distribution between male and female customers was relatively balanced.
- Revenue was distributed across many customers rather than depending on a single high-value customer.

---

# 4. Geographic Analysis

![Geographic Analysis](Dashboard%20Screenshots/Geographic%20Analysis.png)

## Purpose

Understand sales performance across different geographic regions.

### Visuals

- Revenue by Continent
- Revenue by Region
- Revenue Map by Country

### Business Insights

- North America generated the highest revenue.
- Europe ranked second in revenue contribution.
- Revenue varied considerably across sales regions.
- The map provides an overview of geographic revenue distribution and market concentration.

---

# 5. Returns Analysis

![Returns Analysis](Dashboard%20Screenshots/Returns%20Analysis.png)

## Purpose

Analyze product returns to identify quality and operational improvement opportunities.

### Visuals

- Monthly Return Trend
- Returns by Category
- Returns by Subcategory
- Top 10 Returned Products

### Business Insights

- Overall Return Rate remained relatively low.
- Accessories accounted for the largest share of returned products.
- Tires & Tubes recorded the highest number of returns among subcategories.
- Monthly returns increased during late 2016 and remained elevated through 2017.
- A relatively small number of products contributed disproportionately to total returns.

---

# Dashboard Features

- Interactive KPI Cards
- Dynamic Slicers
- Cross Filtering
- Drill-down Analysis
- Geographic Mapping
- Top N Analysis
- Monthly Trend Analysis
- Responsive Dashboard Layout

---

# SQL Concepts Used

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- Aggregate Functions
- INNER JOIN
- LEFT JOIN
- UNION ALL
- Views
- TRY_CONVERT
- Calculated Columns
- Data Validation
- Data Cleaning

---

# Power BI Skills Demonstrated

## Data Modeling

- Built a star-schema style model.
- Created one-to-many relationships.
- Connected multiple fact tables through shared dimensions.
- Implemented Calendar and Product dimension tables.

## DAX

- Aggregation Measures
- DIVIDE
- DISTINCTCOUNT
- SUM
- SUMX

## Visualization

- KPI Cards
- Clustered Bar Charts
- Line Charts
- Donut Charts
- Map Visual
- Interactive Slicers

---

# Business Recommendations

- Continue investing in premium bicycle products that generate the highest revenue.
- Investigate products with high return counts to identify possible quality issues.
- Focus marketing efforts on Professional and Bachelor's degree customer segments.
- Expand successful sales strategies from North America into other regions.
- Investigate the increase in returns during late 2016 to determine potential operational or product-related causes.

---

# Repository Structure

```
AdventureWorks-SQL-PowerBI-Dashboard
│
├── AdventureWorks.pbix
├── SQL Scripts
│
├── Dashboard Screenshots
│   ├── Executive Dashboard.png
│   ├── Product Analysis.png
│   ├── Customer Analysis.png
│   ├── Geographic Analysis.png
│   └── Returns Analysis.png
│
├── Dataset
│
└── README.md
```

---

# Skills Demonstrated

### SQL

- Data Cleaning
- Data Validation
- SQL Views
- Joins
- Data Transformation

### Power BI

- Data Modeling
- DAX
- KPI Cards
- Interactive Dashboards
- Maps
- Cross Filtering
- Slicers

### Business Analysis

- Executive Reporting
- Product Performance Analysis
- Customer Segmentation
- Geographic Analysis
- Returns Analysis
- KPI Reporting

---

# About This Project

This project was developed as part of my Data Analytics portfolio to demonstrate practical skills in SQL Server, Power BI, data modeling, DAX, and business intelligence reporting. The focus was not only on building dashboards but also on translating raw data into meaningful business insights that support data-driven decision-making.

---

# Author

**Pragati Bhardwaj**

Data Analyst Portfolio Project

Munich, Germany
