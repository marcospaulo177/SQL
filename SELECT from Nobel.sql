SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950


SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'literature'

SELECT yr, subject
FROM nobel
WHERE winner='Albert Einstein'

SELECT winner
FROM nobel
WHERE subject= 'peace' AND yr>=2000

SELECT*
FROM nobel
WHERE yr BETWEEN 1980 AND 1989 AND subject = 'literature';

SELECT* 
FROM nobel
WHERE winner IN ('Theodore Roosevelt','Thomas Woodrow Wilson','Jimmy Carter','Barack Obama');

SELECT WINNER
FROM nobel
WHERE winner LIKE 'John%'

SELECT yr,subject,winner
FROM nobel
WHERE(subject='physics' AND yr=1980) OR (subject='chemistry' AND yr=1984);

SELECT yr,subject, winner
FROM nobel
WHERE yr= 1980 AND
subject NOT IN ('chemistry','medicine');

SELECT yr,subject, winner
FROM nobel
WHERE(subject='medicine' AND yr < 1910) OR (subject='literature' AND yr >= 2004);

SELECT*
FROM nobel
WHERE winner='peter grünberg';

SELECT*
FROM nobel
WHERE winner="eugene o'neill";

SELECT winner,yr,subject 
FROM nobel
WHERE winner LIKE'Sir%'
ORDER BY yr DESC,
winner ASC; 

SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN('chemistry','physics'),subject, winner
