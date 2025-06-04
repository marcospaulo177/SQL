SELECT SUM(population)
FROM world


select distinct continent from world

select sum(gdp) from world where continent = 'Africa'

select count(name) from world where area>=1000000


select sum(population) from world
where name in('Estonia', 'Latvia', 'Lithuania')

select continent, count(name) from world
Group By continent

select continent,count(name) from world
where population>=10000000
Group By continent


select continent from world
Group By continent
Having sum(population)>=100000000
