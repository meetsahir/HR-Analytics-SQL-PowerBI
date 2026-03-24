--- Creating a column for attrition 
SELECT *, 
	   CASE WHEN Termd = 1 THEN 'Yes' ELSE 'No' END AS Attrition
FROM HRDataset

--- Attrition analysis 
SELECT CASE WHEN Termd = 1 THEN 'Yes' ELSE 'No' END AS Attrition,
       -- counts the total number of employees as result is grouped by Termd, so final result shows total employees by termd
	   COUNT(*) AS Total,                             
	   -- count of employees is divided by total employees, using WINDOW function as we need the sum in both the columns
	   ROUND(COUNT(*) * 100.0/ SUM(COUNT(*)) OVER (), 2) AS Percentage        
FROM HRDataset
GROUP BY Termd

-- Attrition analysis by department 
SELECT Department, 
	   -- counts the total number of employees grouped by Department
	   COUNT(*) AS Total_Employees,
	   -- counts the total number of employees based on attrition and further grouped by Department 
	   SUM(CASE WHEN Termd = 1 THEN 1 ELSE 0 END) AS Attrition_Count,
	   -- finds the attrition rate based on Department 
	   ROUND(SUM(CASE WHEN Termd = 1 THEN 1 ELSE 0 END) * 100.0/ COUNT(*), 2) AS Attrition_Rate
FROM HRDataset
GROUP BY Department


-- Demographic Analysis 
SELECT Sex, 
	   COUNT(*) AS Total
FROM HRDataset
GROUP BY Sex

-- Salary Analysis 
SELECT Department,
	   AVG(Salary) AS Avg_Salary,
	   MAX(Salary) AS Max_Salary,
	   MIN(Salary) AS Min_Salary
FROM HRDataset
GROUP BY Department

-- Tenure Analysis 
SELECT EmpID,
	   DATEDIFF(YEAR, DateOfHire, ISNULL(DateOfTermination, GETDATE())) AS Tenure_Years
FROM HRDataset

-- Attrition by Tenure
SELECT DATEDIFF(YEAR, DateofHire, ISNULL(DateOfTermination, GETDATE())) AS Tenure,
	   COUNT(*) AS Employee_Count,
	   SUM(CASE WHEN termd = 1 THEN 1 ELSE 0 END) AS Attrition,
	   ROUND(SUM(CASE WHEN Termd = 1 THEN 1 ELSE 0 END) * 100.0/ COUNT(*), 2) AS Attrition_Rate
FROM HRDataset
GROUP BY DATEDIFF(YEAR, DateofHire, ISNULL(DateOfTermination, GETDATE()))

-- Attrition by Performance Score 
SELECT PerformanceScore, 
	   COUNT(*) AS Total_Employees,
	   SUM(CASE WHEN termd = 1 THEN 1 ELSE 0 END) AS Attrition_Count, 
	   ROUND(SUM(CASE WHEN Termd = 1 THEN 1 ELSE 0 END) * 100.0/ COUNT(*), 2) AS Attrition_Rate
FROM HRDataset
GROUP BY PerformanceScore

-- Attrition by Last Performance Review Date
SELECT DATEDIFF(YEAR, LastPerformanceReview_Date, GETDATE()) AS Performance_Review_Years, 
	   COUNT(*) AS Total_Employees,
	   SUM(CASE WHEN termd = 1 THEN 1 ELSE 0 END) AS Attrition_Count, 
	   ROUND(SUM(CASE WHEN Termd = 1 THEN 1 ELSE 0 END) * 100.0/ COUNT(*), 2) AS Attrition_Rate
FROM HRDataset
GROUP BY DATEDIFF(YEAR, LastPerformanceReview_Date, GETDATE())

-- Attrition by Engagement Survey
SELECT EngagementSurvey, 
	   COUNT(*) AS Total_Employees,
	   SUM(CASE WHEN termd = 1 THEN 1 ELSE 0 END) AS Attrition_Count, 
	   ROUND(SUM(CASE WHEN Termd = 1 THEN 1 ELSE 0 END) * 100.0/ COUNT(*), 2) AS Attrition_Rate
FROM HRDataset
GROUP BY EngagementSurvey

-- Attrition by EmpSatisfaction
SELECT EmpSatisfaction, 
	   COUNT(*) AS Total_Employees,
	   SUM(CASE WHEN termd = 1 THEN 1 ELSE 0 END) AS Attrition_Count, 
	   ROUND(SUM(CASE WHEN Termd = 1 THEN 1 ELSE 0 END) * 100.0/ COUNT(*), 2) AS Attrition_Rate
FROM HRDataset
GROUP BY EmpSatisfaction

-- Attrition by Absences
SELECT Absences, 
	   COUNT(*) AS Total_Employees,
	   SUM(CASE WHEN termd = 1 THEN 1 ELSE 0 END) AS Attrition_Count, 
	   ROUND(SUM(CASE WHEN Termd = 1 THEN 1 ELSE 0 END) * 100.0/ COUNT(*), 2) AS Attrition_Rate
FROM HRDataset
GROUP BY Absences

-- Attrition by Late Last 30 days
SELECT DaysLateLast30, 
	   COUNT(*) AS Total_Employees,
	   SUM(CASE WHEN termd = 1 THEN 1 ELSE 0 END) AS Attrition_Count, 
	   ROUND(SUM(CASE WHEN Termd = 1 THEN 1 ELSE 0 END) * 100.0/ COUNT(*), 2) AS Attrition_Rate
FROM HRDataset
GROUP BY DaysLateLast30
