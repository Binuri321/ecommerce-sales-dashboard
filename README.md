# E-Commerce Sales Dashboard

# Introduction
This project analyzes e-commerce sales data using SQL and Power BI to help company leadership make informed decisions about product performance, regional sales trends, and customer activity. The goal is to translate raw sales data into actionable insights that drive business growth and efficiency.

# Dataset Information
- Source: Kaggle e-commerce sales dataset.
- Contents: Sales records including Invoice No, Stock code, Quantity, Unit Price, Invoice Date, Customer ID, Country, and Description.


# Business Problem
- Which products are top performers and which are underperforming?
- What are the key sales trends across different regions?
- Who are the most valuable customers?
- What is the monthly rolling revenue?

# Data Cleaning
- Tools Used: Excel for initial cleaning, SQL Server for further processing.
- Steps:
  - Removed duplicate records and corrected inconsistent formatting.
  - Handled missing values by either imputing or removing affected rows.
  - Created new columns (e.g., TotalPrice = Quantity × Unit Price).
  - Standardized Invoice date and categorical fields for easier analysis.
- Challenges: Addressing missing customer IDs and standardizing product names required careful review.

# Analysis
- Techniques Used:
  - SQL aggregation queries to calculate total sales, identify top products, and segment customers by purchase behavior.
  - Regional breakdowns to compare sales by country and city.
- Sample Queries:
  - Total sales by product and region.
  - Top 10 customers by total spend.
  - Monthly sales trends and YoY growth.

# Visualizations
- Power BI Dashboard:  
  - Sales Overview: Line and bar charts showing Monthly revenue trends, monthly orders and monthly customers.
  - Product Performance: Stacked bar charts for category-wise sales.


# Key Findings

- The UK is the biggest market and the Regency Cake Stand is the best-selling product.
- Total sales and number of customers are going down month by month.
- Most sales come from just a few products and countries.
- Overall revenue is slowly declining over time.
  
# Business Recommendations
- Keep your current customers happy and encourage them to buy again with special offers or loyalty programs.
- Promote your best-selling products more to increase sales.
- Try to grow sales in other countries besides the UK.
- Find out why sales and customers are dropping and fix those issues.
- Add new products to attract more buyers and reduce dependence on a few items.
- Spend marketing money wisely by focusing on products and places that bring the most sale


# Credits
- Dataset: Kaggle E-Commerce Data = [(https://www.kaggle.com/datasets/carrie1/ecommerce-data)]
- Tools: SQL Server, Power BI, Excel






