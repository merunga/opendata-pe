USE world;
SHOW TABLES;

DESCRIBE Country;
SELECT COUNT(*) FROM Country;
SELECT name FROM Country LIMIT 50;

DESCRIBE City;
SELECT COUNT(*) FROM City;
SELECT name FROM City LIMIT 20;

SELECT
 District as "Departamento",
 Name as "Ciudad"
FROM
 City as city
WHERE CountryCode = "PER"
ORDER BY District, Name;
