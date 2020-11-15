#Thomas Chen
#Tutorial 4: SELECT within SELECT

#1. List Each Country name where the population is larger than that of 'Russia'
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

#2. Show countires in Europe with a per capita GDP greater than 'United Kingdom'
SELECT name FROM world
WHERE continent LIKE 'Europe' AND gdp/population >
(SELECT gdp/population FROM world
WHERE name = 'United Kingdom')

#3. List name of countries in the continents containing either Argentina or Australia.
SELECT name, continent FROM world 
  WHERE continent IN ((SELECT continent FROM world 
      WHERE name = 'Argentina'), (SELECT continent FROM world
      WHERE name = 'Australia')) 
ORDER BY name

#4. Which country has a population that is more than Canada but less than Poland
SELECT name FROM world
  WHERE population > 'Canada' AND population < 'Poland'

#5. Show Names and population of each country in Europe as Percentage.
SELECT name, CONCAT(ROUND((population/(SELECT population FROM world 
WHERE name = 'Germany')*100)),'%') FROM world
  WHERE continent = 'Europe'

#6. Showing which countires have a GDP greater than every country in Europe.
SELECT name FROM world
  WHERE gdp > ALL(SELECT gdp
                  FROM world
                  WHERE continent = 'Europe'
                  AND GDP > 0)

#7. Finding the largest country by area in each continent.
SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND area>0)

#8. List Each Continent and the name of the country that comes first alphabetically.
SELECT continent, name FROM world x
WHERE name <= ALL(SELECT name FROM world y
WHERE y.continent = x.continent
ORDER BY name)

#9. Find the continents where all countires have a population <= 25000000. Then find the name of the countires associated with these continents.
SELECT name, continent, population FROM world x
WHERE 25000000 >= ALL(SELECT population FROm world y
WHERE y.continent = x.continent
AND population > 0)

#10. Show countires that have population more than three times that of any of their neighbours
SELECT name, continent FROM world x
WHERE population > ALL(SELECT population * 3 FROM world y
WHERE y.continent = x.continent
AND population > 0
AND y.name <> x.name)
