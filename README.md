# ScienceQtech Employee Performance Mapping — SQL

## 📌 Project Overview

This project focuses on analyzing employee data using SQL to support employee performance mapping and business decision-making.

The analysis covers employee details, departments, performance ratings, salaries, experience, managerial relationships, bonuses, and salary distribution across countries and continents.

## 🎯 Objectives

- Analyze employee details and departmental information
- Filter employees based on performance ratings
- Analyze salary ranges across different roles
- Rank employees based on years of experience
- Identify employees with higher experience levels
- Calculate employee bonuses based on salary and performance rating
- Analyze average salary distribution by country and continent
- Create database views for filtered employee data
- Apply indexing to improve query performance

## 🗂️ Dataset

The project uses three tables:

- `emp_record_table` — Employee details, roles, departments, experience, salary, ratings, managers, and project assignments
- `proj_table` — Project information including project name, domain, dates, quarter, and status
- `data_science_team` — Employee information for the Data Science team

## 🛠️ Tools & Technologies

- MySQL
- SQL
- MySQL Workbench

## 🔍 SQL Concepts Used

- SELECT statements
- WHERE and BETWEEN filters
- CONCAT
- UNION
- GROUP BY
- Aggregate functions — MIN, MAX, AVG, COUNT
- Window functions
- RANK()
- Subqueries
- Views
- Indexing
- ALTER TABLE
- Conditional data analysis
- Salary and bonus calculations

## 📊 Key Analysis Areas

### Employee & Department Analysis
Retrieved employee information and analyzed employees across different departments.

### Performance Analysis
Filtered employees based on performance ratings and compared individual ratings with the maximum rating within their department.

### Salary Analysis
Calculated minimum and maximum salaries across different employee roles and analyzed average salary distribution by country and continent.

### Experience Analysis
Ranked employees based on their years of experience and identified employees with more than ten years of experience.

### Bonus Calculation
Calculated employee bonuses using the project-defined formula:

**Bonus = 5% of Salary × Employee Rating**

### Database Optimization
Created an index on `FIRST_NAME` to support the query used to find an employee named Eric.

## 📁 Repository Contents

- `SQL Project.sql` — SQL queries used for the analysis
- `README.md` — Project documentation

## 💡 Skills Demonstrated

- SQL Querying
- Data Analysis
- Business Data Interpretation
- Employee Performance Analysis
- Salary Analysis
- Data Aggregation
- Database Concepts
- Query Optimization
- Analytical Thinking
