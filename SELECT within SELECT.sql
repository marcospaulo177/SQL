SELECT name
FROM world
WHERE population > (SELECT population From world WHERE name = 'russia');

SELECT name
FROM world
WHERE continent = 'europe'
AND gdp/population >(SELECT gdp/population FROM world WHERE name = 'united kingdom');

SELECT name, continent
FROM world
WHERE continent IN(SELECT continent FROM world WHERE name IN('argentina','australia'))
ORDER BY name ASC

SELECT name, population
FROM world
WHERE population>(SELECT population FROM world WHERE name = 'united kingdom')
AND population<(SELECT population FROM world WHERE name = 'germany');

SELECT name CONCAT(ROUND(100* population/(SELECT population FROM world WHERE name='germany')), '%') AS percentage
FROM world
WHERE continent = 'europe'

SELECT name
FROM world
WHERE gdp> ALL (SELECT gdp FROM world WHERE continent='europe' AND gdp IS NOT NULL);

SELECT continent, name, area
FROM world AS w1
WHERE area=(SELECT MAX(area) FROM world AS w2 WHERE w1.continent=w2.continent);

SELECT continent,name
FROM world AS w1
WHERE name=(SELECT MIN(name) FROM world AS w2 WHERE w1.continent=w2.continent);

SELECT name,continent,population
FROM world
WHERE continent IN(SELECT continent FROM world GROUP BY continent HAVING MAX(population)<= 25000000);


SELECT name,continent
FROM world AS w1
WHERE population> 3*(SELECT MAX(population)FROM world AS w2 WHERE w1.continent=w2.continent AND w1.name!=w2.name);
