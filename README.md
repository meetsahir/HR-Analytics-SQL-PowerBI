# HR Analytics Dashboard (SQL + Power BI)

This project analyzes employee data to uncover insights related to attrition, workforce demographics, salary trends, and employee performance.   The goal is to build an end-to-end analytics solution using SQL Server for data transformation and Power BI for visualization.

**Tools Used**
- SQL Server (Data Cleaning & Transformation)
- Power BI (Data Visualization)
- Excel (Initial Exploration)

**Dataset**

Dataset Source: Kaggle HR Dataset  
Note: Attrition was derived using the `Termd` column (1 = Left, 0 = Active).

**Process**
-  Loaded dataset into SQL Server  
-  Cleaned and transformed data  
-  Created derived metrics (Attrition, Tenure)  
-  Built SQL views for KPI analysis  
-  Connected Power BI to SQL Server  
-  Designed interactive dashboard

**Key KPIs**
- Total Employees  
- Attrition Rate  
- Average Salary  
- Average Tenure  
- Department-wise Attrition

**Key Insights**
- Around 50% of the employees are in the 40-50 years age bucket 
- More than 80% of the employees meets the performance score   
- Attrition rate of the employees is at **33%**
- Most of the attrition happens from Production
- Employees with higher satisfaction with lower tenure and lower salary show higher attrition
- There is no direct co-relation between absences and attrition but then trends show that employees with greater number of leaves have higher attrition

**Dashboard Preview**

**Overview Dashboard**

<img width="1446" height="815" alt="Image" src="https://github.com/user-attachments/assets/3cb0b675-e82a-4aa9-acfe-c6506025ea1c" />

**Attrition Dashboard**

<img width="1441" height="807" alt="Image" src="https://github.com/user-attachments/assets/1bb2cf57-49b2-41d0-b555-ac602b1a9360" />

**Workforce Insights**

<img width="1444" height="817" alt="Image" src="https://github.com/user-attachments/assets/24b06a53-b787-4c22-9f26-9f7d7abda36f" />


**Project Structure**
HR-Analytics-Project/
│
├── SQL/
├── PowerBI/
├── images/
├── README.md

