# HR-Performance-Analysis
End- to-end Employee performance analysis, featuring SQL data cleaning, DAX tenure calculation, and power Bi Visualization

# HR Performance Analysis: From SQL Cleaning to Power BI Insights 📊

# 1. Project Overview
This project is an end-to-end data analysis workflow focused on understanding employee performance across different demographics, tenure levels, and departments within an organization. The goal was to transform raw HR data into actionable business intelligence to inform decisions regarding compensation, training, and talent investment.

# 2. Technical Methodology

The project was executed in two primary phases: Data Preparation (SQL) and Visualization & Analysis (Power BI).

# Phase 1: Data Preparation (SQL)

The raw dataset contained critical gaps, specifically text values in the salary column. This required advanced SQL cleaning to maintain data integrity and accuracy.
Advanced Salary Imputation using CTEs

To update missing salary values, I implemented a robust method using a Common Table Expression (CTE):

1. CTE Creation: A CTE was created to calculate the reliable AVERAGE(Salary) grouped by Department.

2. Targeted Update: The main HR table was joined with the CTE. Null salary records were then updated based on the average salary of the specific department the employee belonged to.
This ensured that the imputed values were contextually relevant and minimized data distortion, setting a strong foundation for the analysis.

# Phase 2: Visualization (Power BI)

In Power BI, a crucial feature was engineered using DAX to analyze the impact of employee tenure on performance.

DAX Feature: Employee Tenure. 
A new calculated column, Tenure_Years, was created to determine the exact number of years each employee has been with the company:

Tenure_Years = DATEDIFF(HR[Joining_Date], TODAY(), YEAR)

# 3. Core Visualizations and Analysis

The final Power BI dashboard was designed to allow departmental managers to filter results and gain specific insights into their teams.

Visualization -
Purpose -
Key Insight

1. Performance Score by Age : Identifies which age bracket (young, middle, veteran) demonstrates the highest performance scores.
Helps in understanding motivational drivers across different career stages.
2. Performance Score by Position: Reveals which roles are contributing most significantly to organizational growth.
Crucial for informing decisions on performance compensation and salary increase reviews.
3. Performance Score by Tenure: Tracks whether new, middle-tenure, or long-term employees are the highest performers.
Identifies potential knowledge transfer issues or risks of long-term employee stagnation.

# 4. Key Business Insights
The analysis revealed several high-impact, department-specific trends:

Department -
Key Finding -
Hypothesis (Why?)

1.Finance:
Employees aged 40+ performed better than others. why?

Institutional Knowledge: Their deep understanding of long-standing financial processes and risk mitigation procedures is invaluable.
Sales.

2. Younger employees aged 25-35 performed better. why?

Technological Agility: They are likely more familiar with and adept at
optimizing modern CRM tools and digital sales platforms, leading to better results.
Cross-Departmental.

In Finance, Marketing, and Sales, employees with ~5 years of tenure outperformed those with significantly longer tenure. why?

Peak Efficiency: Employees around the 5-year mark have mastered their role, built strong internal networks, and are often highly motivated, marking a peak efficiency period before potential stagnation sets in.
These insights enable targeted talent investment strategies, ensuring that training and compensation are channeled where they can have the greatest impact.

# 5. Tools and Technologies
● Data Cleaning & Manipulation: SQL
● Data Analysis & Modeling: DAX (Power BI)
● Visualization & Reporting: Power BI
● Dataset Schema: Names, Age, Salary, Gender, Department, Position, Joining Date, Performance Score.

# 6. Access the Project
You can interact with the live dashboard and connect with me using the links below:

Link
Live Power BI Report : https://app.powerbi.com/links/QoVtCoWEP9?ctid=a4879b4c-e3d0-4db9-a4e6-2c806df65037&pbi_source=linkShare

My LinkedIn Profile : https://www.linkedin.com/posts/oluwapelumi-ologun-32851521a_datafam-sql-powerbi-activity-7387147860171091968-N36p?utm_source=social_share_send&utm_medium=android_app&rcm=ACoAADc_0JABHWuvWJPPIZ2_27HlumaX55ho48E&utm_campaign=copy_link
https://www.linkedin.com/posts/oluwapelumi-ologun-32851521a_datafam-sql-powerbi-activity-7387147860171091968-N36p?utm_source=social_share_send&utm_medium=android_app&rcm=ACoAADc_0JABHWuvWJPPIZ2_27HlumaX55ho48E&utm_campaign=copy_link

