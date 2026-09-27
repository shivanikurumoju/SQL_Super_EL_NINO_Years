CREATE TABLE "Super_EL-NINO_Years" (
    event VARCHAR(20),
    peak_oni DECIMAL(3,1),
    peak_season VARCHAR(10),
    region VARCHAR(50),
    major_impact VARCHAR(100)
);

COPY "Super_EL-NINO_Years"
FROM 'C:\Temp\Super_EL-NINO_Years(1).csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);

SELECT * FROM "Super_EL-NINO_Years";



