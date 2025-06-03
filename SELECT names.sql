SELECT name FROM world
  'y%'

SELECT name FROM world
  WHERE name LIKE '%y'

SELECT name FROM world
  WHERE name LIKE '%x%'

SELECT name FROM world
  WHERE name LIKE '%land'

SELECT name FROM world
  WHERE name LIKE 'c%ia'


SELECT name FROM world
  WHERE name LIKE '%oo%'

SELECT name FROM world
  WHERE name LIKE '%a%a%a%'

SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name

SELECT name FROM world
 WHERE name LIKE '%o__o%'

SELECT name FROM world
 WHERE LENGTH (name) = 4;

SELECT name
  FROM world
 WHERE name = capital

SELECT name
  FROM world
 WHERE capital = CONCAT(name, ' City');

SELECT capital, name FROM world
WHERE capital LIKE CONCAT('%', name, '%')

SELECT capital, name FROM world
WHERE capital LIKE CONCAT(name, '%') AND capital <> NAME

SELECT name, REPLACE(capital, name, '')
   FROM world
WHERE capital LIKE CONCAT('%', name, '%')
   AND capital != name
