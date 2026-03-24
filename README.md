# HR Analytics Dashboard (SQL + Power BI)

## 📌 Overview
This project analyzes employee data to uncover insights related to attrition, workforce demographics, salary trends, and employee performance.

The objective was to build an end-to-end analytics solution using SQL Server for data transformation and Power BI for interactive visualization.

---

## 🛠️ Tools Used
- SQL Server (Data Cleaning & Transformation)
- Power BI (Data Visualization)
- Excel (Initial Exploration)

---

## 📂 Dataset
Dataset Source: Kaggle HR Dataset  
Note: Attrition was derived using the `Termd` column (1 = Left, 0 = Active).

---

## ⚙️ Process
- Loaded dataset into SQL Server  
- Performed data cleaning and transformation  
- Created derived metrics such as Attrition and Tenure  
- Built SQL views for KPI analysis  
- Connected Power BI to SQL Server  
- Designed an interactive dashboard  

---

## 📊 Key KPIs
- Total Employees  
- Attrition Rate  
- Average Salary  
- Average Tenure  
- Department-wise Attrition  

---

## 🧠 SQL Concepts Used
- Joins  
- Common Table Expressions (CTEs)  
- Window Functions  
- Aggregations  
- Case Statements  
- Views & Stored Procedures  

---

## 🔍 Key Insights
- A significant portion of employees (~50%) falls within the 40–50 age group  
- Over 80% of employees meet performance expectations  
- Overall attrition rate stands at **33%**  
- The Production department shows the highest attrition levels  
- Employees with lower satisfaction, lower tenure, and lower salary tend to have higher attrition  
- While no strong direct correlation exists between absences and attrition, higher absenteeism shows a noticeable trend toward increased attrition  

---

## 📊 Dashboard Preview

### 🔹 Overview Dashboard
<img width="1446" height="815" alt="Overview" src="https://github.com/user-attachments/assets/3cb0b675-e82a-4aa9-acfe-c6506025ea1c" />

### 🔹 Attrition Dashboard
<img width="1441" height="807" alt="Attrition" src="https://github.com/user-attachments/assets/1bb2cf57-49b2-41d0-b555-ac602b1a9360" />

### 🔹 Workforce Insights
<img width="1444" height="817" alt="Workforce" src="https://github.com/user-attachments/assets/24b06a53-b787-4c22-9f26-9f7d7abda36f" />

---

## 📁 Project Structure
HR-Analytics-Project/
│
├── SQL/
├── PowerBI/
├── images/
├── README.md
