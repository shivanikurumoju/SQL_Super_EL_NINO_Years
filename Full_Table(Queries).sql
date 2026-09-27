SELECT * FROM "Super_EL-NINO_Years";

-- Count total records---
SELECT COUNT(*) AS Total_Records
FROM "Super_EL-NINO_Years";
-- Output= 22--

--Count Unique El Niño Events--
SELECT COUNT(DISTINCT event) AS Total_Events
FROM "Super_EL-NINO_Years";
--Output= 5--

-- Show All Unique Events--    
SELECT DISTINCT event	
FROM "Super_EL-NINO_Years";
-- output= Shows effected years--

--Find Maximum Peak ONI--
SELECT MAX(peak_oni) AS Strongest_Event
FROM "Super_EL-NINO_Years";
--output= 2.8--

--Find Minimum Peak ONI--
SELECT MIN(peak_oni) AS Weakest_Event
FROM "Super_EL-NINO_Years";
--Output= 2.1--

-- Find Average Peak Oni--
SELECT ROUND(AVG(peak_oni),1) AS Average_Peak_ONI
FROM "Super_EL-NINO_Years";
--Output= 2.3--

--Count Records Of Each Events--
SELECT event ,
COUNT(*) AS Total_Events
FROM "Super_EL-NINO_Years"
GROUP BY event
ORDER BY Total_Events DESC ;

--Records by peak season -- 
SELECT peak_season,
Count(*) AS Total_Peak_Season
FROM "Super_EL-NINO_Years"
GROUP BY peak_season;

--Regions with droughts--
SELECT *
FROM "Super_EL-NINO_Years"
WHERE major_impact='Drought';

--Indian Records--
SELECT *
FROM "Super_EL-NINO_Years"
WHERE region='India';

--Top 3 Strongest peak_season--
SELECT * FROM "Super_EL-NINO_Years"
ORDER BY peak_season
LIMIT 3;

--Events with Peak ONI greater than the average--
SELECT * FROM "Super_EL-NINO_Years"
WHERE peak_oni > 
(
Select AVG(peak_oni)
from "Super_EL-NINO_Years"
);

--Number of impacts by season--
SELECT peak_season, 
	 major_impact,
	 COUNT(*) AS Impacts_By_Season
FROM "Super_EL-NINO_Years"
GROUP BY peak_season, major_impact
ORDER BY Impacts_By_Season DESC;






