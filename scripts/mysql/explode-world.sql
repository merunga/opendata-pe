USE world;

SELECT * FROM (
  SELECT
   "Continente" as "Continente",
   "Pais" as "Pais",
   "Departamento" as "Departamento",
   "Ciudad" as "Ciudad",
   "Population" as "Poblacion"
  FROM DUAL
  UNION
  (
    SELECT
     country.Continent as "Continente",
     country.Name as "Pais",
     city.District as "Departamento",
     city.Name as "Ciudad",
     city.Population as "Poblacion"
    FROM City as city
    JOIN Country as country ON city.CountryCode = country.Code
    ORDER BY
      country.Name ASC,
      city.District ASC,
      city.Name ASC
    -- LIMIT 100
  )
) AS data
INTO OUTFILE "c:\\Users\\merunga\\Documents\\GitHub\\opendata-pe\\output\\ciudades-del-mundo.csv"
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

