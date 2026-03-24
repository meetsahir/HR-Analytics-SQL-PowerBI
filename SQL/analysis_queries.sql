--- Creating a column for attrition 
SELECT *, 
	   CASE WHEN Termd = 1 THEN 'Yes' ELSE 'No' END AS Attrition
FROM HRDataset
