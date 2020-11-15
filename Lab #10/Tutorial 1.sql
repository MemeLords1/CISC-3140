#Thomas Chen
#Tutorial 1: SELECT NAME

#1. Finding Country that start with Y
SELECT name FROM world
  WHERE name LIKE 'Y%'

#2. Finding Countries that end with Y
SELECT name FROM world
  WHERE name LIKE '%y'

#3. Finding Countries that contain X
SELECT name FROM world
  WHERE name LIKE '%x%'

#4. Finding Countires that end with "land"
SELECT name FROM world
  WHERE name LIKE '%land'

#5. Finding Countires that start with C and end with ia
SELECT name FROM world
  WHERE name LIKE 'C%ia'

#6. Finding Countires that contain "oo"
SELECT name FROM world
  WHERE name LIKE '%oo%'

#7. Finding Countires that have three or more A
SELECT name FROM world
  WHERE name LIKE '%a%a%a%'

#8. Finding Countires that have T as the Second Character
SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name

#9. Countires that have two O separted by two other character
SELECT name FROM world
 WHERE name LIKE '%o__o%'

#10. Finding Countires that have Four characters only
SELECT name FROM world
 WHERE name LIKE '____'

#11. Find Country where the name is the capital city
SELECT capital FROM world
 WHERE name LIKE capital

#12. Find Countires where the capital is the country plus "City"
SELECT name
  FROM world
 WHERE capital LIKE concat(name, '_City')

#13. Find Capital and the name where capital includes the name of the country
SELECT capital, name
  FROM world
 WHERE capital LIKE concat(name, '%%')

#14. Find capital and the name where capital is an extension of the name
SELECT capital, name
  FROM world
 WHERE capital LIKE concat(name, '%_')

#15. Find name and the extension where the capital is an extension of name
SELECT name, REPLACE(capital, name, '') FROM world
  WHERE capital LIKE concat(name, '%_')
