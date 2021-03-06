#Thomas Chen
#Tutorial 5: SUM and COUNT

#1. Show the total popluation of the world
SELECT SUM(population)
FROM world

#2. List all the continents
SELECT DISTINCT continent
FROM world

#3. GIVE the total GDP of Africa
SELECT SUM(gdp) FROM world
WHERE continent = 'AFRICA'

#4. How many contries have an area of at least 1000000
SELECT COUNT(name) FROM world
WHERE area >= 1000000

#5. The Total popluation of ('Estonia', 'Latvia' , 'Lithuania')
SELECT SUM(population) FROM world
WHERE name IN('Estonia', 'Latvia', 'Lithuania')

#6. Finding Each continent and showing the continent and number of countires.
SELECT continent, COUNT(name) FROM world
GROUP BY continent

#7. Show the continent and number of countires with population of at least 10 million
SELECT continent, COUNT(name) FROM world
WHERE population >= 10000000
GROUP BY continent

#8. List the continents that have a total population of at least 100 million.
SELECT continent FROM world
GROUP BY continent
HAVING SUM(population) >= 100000000
