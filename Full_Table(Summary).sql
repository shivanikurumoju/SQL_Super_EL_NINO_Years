SELECT * FROM "Super_EL-NINO_Years";

--Which event affected the most unique regions?--
SELECT event, 
COUNT(DISTINCT region) AS Total_Regions
FROM "Super_EL-NINO_Years"
GROUP BY event
ORDER BY Total_Regions DESC ;

--Which region experienced the strongest El Niño?--
SELECT region, 
	peak_oni
FROM "Super_EL-NINO_Years"
ORDER BY peak_oni DESC
LIMIT 1;

--Show regions where Peak ONI is 2.8--
SELECT region,
	peak_oni
FROM "Super_EL-NINO_Years"
WHERE peak_oni = 2.8;

--Show only flooding-related impacts--
SELECT * FROM "Super_EL-NINO_Years"
WHERE major_impact ILIKE '%flood%';

--Summary table--
SELECT 
	COUNT(*) AS Total_Records,
	COUNT(DISTINCT event) AS Total_Events,
	COUNT(DISTINCT peak_season) AS Total_Peak_Seasons,
	COUNT(DISTINCT region) AS Total_regions,
	ROUND(AVG(peak_oni),1) AS Avg_Peak_ONI,
	MAX(peak_oni) AS Maximum_Peak_ONI,
	MIN(peak_oni) AS Minimum_Peak_ONI
FROM "Super_EL-NINO_Years";