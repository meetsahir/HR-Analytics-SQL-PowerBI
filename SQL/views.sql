-- Creating View to be loaded in Power BI
-- Adding the necessary columns like Tenure, Tenure bracket, Attrition and removing unwanted columns 
CREATE VIEW vw_HRData_Master AS
SELECT EmpID, GenderID, DeptID, Salary, Termd, Sex, DateofHire, DateofTermination, Department, PerformanceScore, EngagementSurvey, EmpSatisfaction, LastPerformanceReview_Date, DaysLateLast30, Absences, EmploymentStatus, RecruitmentSource,
	   CASE WHEN Termd = 1 THEN 'Yes' ELSE 'No' END AS Attrition,
	   DATEDIFF(YEAR, DateofHire, ISNULL(DateOfTermination, GETDATE())) AS Tenure, 
	   DATEDIFF(YEAR, LastPerformanceReview_Date, ISNULL(DateOfTermination, GETDATE())) AS Review_Tenure,
	   DATEDIFF(YEAR, DOB, GETDATE()) AS Age
FROM HRDataset
