#Thomas Chen
#Tutorial 2: SELECT from World

#1. Selects the name, continent and population records from world table
SELECT name, continent, population FROM world

#2. Show name for countries that have a population of at least 200 Million
SELECT name FROM world
WHERE population = 200000000

#3. Per capita GDP for countires with a population of at least 200 Million
SELECT name, GDP/population FROM world
  WHERE population > 200000000

#4. Show name and population in millions for 'South America' divide by 1000000.
SELECT name, population/1000000 FROM world
  WHERE continent LIKE 'South America'

#5. Show name and population for France, Germany, Italy
SELECT name, population FROM world
  WHERE name IN ('France', 'Germany', 'Italy');

#6. Show Countires which have a name that includes 'United'
SELECT name FROM world
  WHERE name LIKE '%United%'

#7. Show Countires that are big by area or by population.
SELECT name, population, area FROM world
  WHERE population > 250000000 OR area > 3000000

#8. Show Counties that are big by area or by population but not both.
SELECT name, population, area FROM world
  WHERE population > 250000000 XOR area > 3000000

# 9. Showing population in millions and GDP in billions both to 2 decimal places.
SELECT name, ROUND(population/1000000,2), ROUND(GDP/1000000000,2) FROM world
  WHERE continent LIKE 'South America'

#10. Show per-capita GDP for the trillion dollar countires to the neatest 1,000.
SELECT name, ROUND(GDP/population,-3) FROM world
  WHERE GDP > 1000000000000

#11. Show name and capital where they have the same number of characters
SELECT name, capital FROM world
 WHERE LENGTH(name) = LENGTH(capital)

#12. Show name and capital where the first letters of each match.
SELECT name, capital FROM world
  WHERE LEFT(name,1) = LEFT(capital,1) && name <> capital

#13. Find the Country that has all the vowels and no spaces in its name.
SELECT name FROM world
  WHERE name LIKE '%A%E%' 
  AND name LIKE '%I%' 
  AND name LIKE '%O%U%'
  AND name NOT LIKE '% %'
