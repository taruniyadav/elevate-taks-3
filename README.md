**SQL Data Analysis Project - Ecommerce Dataset**
**Objective**
This project was developed as part of my internship, where the goal was to extract, manipulate, and analyze data from an existing Ecommerce SQL Database using SQL Server and Visual Studio Code. The dataset used is a simulated Ecommerce Product Dataset, which includes products from various categories like Electronics, Furniture, Fitness, and others.

**Tools & Technologies**
SQL Server (LocalDB)

Visual Studio Code with MSSQL Extension

SQL (Structured Query Language)

Windows OS

**Database Overview**
A new database named EcommerceDB was created, and within this database, a table called Products was defined. The table consists of columns such as product ID, product name, price, and category. Sample data was inserted into the table to provide a realistic set of products across different categories for analysis.

**Queries and SQL Operations Performed**
1. Basic Queries
Performed simple data extraction using SELECT and filtered data with WHERE conditions. Additionally, data was sorted using the ORDER BY clause and grouped by categories using GROUP BY.

2. Aggregate Functions
Used aggregate functions like SUM, AVG, MIN, and MAX to perform calculations such as the total value of products, the average price, and identifying the highest and lowest-priced products in the dataset.

3. Subqueries
Implemented subqueries to create more complex queries. Subqueries were used to filter and return results based on the results of another query, for example, finding products whose prices are higher than the average price.

4. Views
Created views to simplify recurring queries and make it easier to work with complex data. Views were used to represent frequently used data sets, such as products priced above the average price.

5. Indexes for Performance Optimization
Added indexes on frequently queried columns such as price and category to improve the performance of search and filter operations. This optimization helps speed up query execution times, especially when dealing with large datasets.

**Screenshots**
Screenshots of SQL queries and their results have been provided in the repository under the screenshots/ folder to show the output and validation of the executed queries.

**Conclusion**
Through this project, I gained experience in:

Extracting and manipulating structured data using SQL.

Performing various analytical tasks using aggregate functions.

Writing subqueries to handle complex filtering.

Creating views to simplify repeated queries.

Optimizing query performance by using indexes.

This project helped me develop a solid understanding of SQL, data analysis, and performance optimization, which will be valuable in working with large databases and real-world data analysis scenarios.
