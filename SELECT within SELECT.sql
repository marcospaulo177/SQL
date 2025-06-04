SELECT name
FROM world
WHERE population > (SELECT population From world WHERE name = 'russia');

SELECT name
FROM world
WHERE continent = 'europe'
AND gdp/population >(SELECT gdp/population FROM world WHERE name = 'united kingdom');

