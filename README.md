Amazon Product Performance Analysis


Project Overview

This project analyzes Amazon product data to understand customer behavior, pricing strategies, and product demand patterns. The goal is to identify key factors influencing product popularity such as ratings, reviews, discounts, and sponsorship.

The analysis was performed using Python for data cleaning, SQL for analytical queries, and Power BI for interactive visualization.

Dataset Information

The dataset contains information about Amazon products including:

Product Title

Product Rating

Number of Reviews

Monthly Purchases

Discounted Price

Listed Price

Best Seller Status

Sponsored Products

Coupon Availability

Delivery Details

Dataset size: 40K+ product records

Tools & Technologies Used

Python

Pandas

NumPy

Data Cleaning

Feature Engineering

SQL

Aggregations

Window Functions

Ranking Functions

Analytical Queries

Power BI

Interactive Dashboard

Data Visualization

KPI Metrics

Data Cleaning Process (Python)

Key preprocessing steps included:

Cleaning rating values

Converting review counts to numeric format

Handling missing values

Cleaning price columns

Creating discount percentage feature

Standardizing demand values (bought_in_last_month)

Example feature engineering:

discount_percentage = 
(listed_price - discounted_price) / listed_price * 100
SQL Analysis

SQL queries were used to analyze product performance.

Key analysis performed:

Top products by reviews

Highest demand products

Average product pricing

Sponsored vs organic products

Discount impact on demand

Ranking products using window functions

Example query:

SELECT title, number_of_reviews,
RANK() OVER (ORDER BY number_of_reviews DESC)
FROM amazon_products;
Power BI Dashboard

An interactive dashboard was built to visualize insights.

KPI Metrics

Total Products

Average Rating

Average Price

Total Reviews

Visualizations

Rating Distribution

Price Distribution

Top Products by Reviews

Highest Demand Products

Discount vs Demand

Sponsored vs Organic Products

Key Insights

• Products with ratings above 4.5 tend to have higher customer demand.

• Discounted products show increased purchase activity, indicating strong price sensitivity.

• Products with higher review counts tend to maintain stable ratings, showing customer trust.

• Sponsored products appear frequently but are not always the highest rated.

Project Workflow
Raw Dataset
    ↓
Python Data Cleaning
    ↓
Exploratory Data Analysis
    ↓
SQL Business Queries
    ↓
Power BI Dashboard
    ↓
Business Insights
Project Outcome

This project demonstrates how data analysis can be used to understand customer behavior, product performance, and pricing strategies in e-commerce platforms.

The analysis provides actionable insights that can help businesses optimize pricing, promotions, and product positioning.

<img width="1182" height="796" alt="image" src="https://github.com/user-attachments/assets/56d387da-10f5-4e9d-b045-1c8cb3fe427a" />
