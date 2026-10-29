# 120 Years of Olympic History - SQL Data Analysis

## Project Overview
This project explores a comprehensive dataset of the modern Olympic Games from Athens 1896 to Rio 2016. Using PostgreSQL, I analyzed athlete demographics, regional performance, and historical trends to uncover insights into Olympic history.

## Tools & Technologies Used
* **Database:** PostgreSQL
* **IDE:** Visual Studio Code
* **Techniques:** Multi-table JOINS, Aggregate Functions, Scalar and Correlated Subqueries, Date Extraction, Filtering (HAVING)

## Dataset
The dataset was sourced from Kaggle: [120 years of Olympic history: athletes and results]. It consists of two relational tables:
1. `athlete_events`: Contains records of individual athletes, their physical attributes, and medal outcomes.
2. `noc_regions`: Maps National Olympic Committee (NOC) codes to standard geopolitical regions.

## Key Questions Answered
1. Which 10 countries have historically won the most Gold medals?
2. Who are the youngest athletes to ever win a Gold medal?
3. Which Indian athletes have won medals, and in which sports?
4. What are all the Olympic sports that contain the word "Ball"?
5. Which athletes are taller than the overall historical average height?
6. Which 5 regions accumulated the highest total medal count during the 2016 Games?
7. How has overall Olympic participation grown decade by decade?
8. Who is the heaviest athlete to ever secure a Gold medal?

## How to Run
The `olympic_history_queries.sql` file contains all the analytical queries. The database was built locally using the `COPY` command to import the CSV files directly into PostgreSQL.