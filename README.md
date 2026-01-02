# Bank-Compliance-SQL-Analysis
SQL-based analysis of client and transaction risk for a global banking institution.
### Advanced Techniques & Deliverables
* **Subqueries:** Demonstrated the ability to nest queries to perform multiple counts across different parameters in one execution.
* **Common Table Expressions (CTEs):** Used WITH clauses to create readable, modular code for complex revenue analysis.
* **Business Communication:** Included a full data dictionary and management-ready presentation to bridge the gap between technical data and executive decision-making.

* Deep Dive: SQL Analysis Approach
For this project, I moved from broad market analysis to specific customer targeting using a multi-step querying process.

1. Geographic Market Profiling (top_10_countries.sql)

The Goal: Identify which countries hold the largest customer bases.


Approach: I used INNER JOINs to connect the customer table to address, city, and country tables to access geographic names.


Key Skill: Used COUNT and GROUP BY to aggregate data at a national level.

2. Targeted Urban Analysis (top_10_cities_analysis.sql)

The Goal: Zoom in on the top 10 cities within those high-growth countries.


Approach: I built upon the previous query by adding a WHERE clause with an IN operator to filter for specific target markets.


Key Skill: Data filtering and refined grouping.

3. High-Value Customer Identification (high_value_customer_rewards.sql)

The Goal: Find the top 5 most loyal customers (highest total spend) in our target cities to launch a rewards program.


Approach: I integrated the payment table into my existing joins to calculate the SUM of all transactions per customer.


Key Skill: Complex multi-table joins and financial data aggregation.
