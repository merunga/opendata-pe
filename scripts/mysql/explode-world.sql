USE world;
SELECT
 country.Continent as "Continente",
 country.Name as "Pais",
 city.District as "Departamento",
 city.Name as "Ciudad",
 city.Population as "Poblacion"
FROM
 City as city
JOIN Country as country
ON city.CountryCode = country.Code
ORDER BY country.Continent, country.Name, city.District, city.Name
LIMIT 100;

