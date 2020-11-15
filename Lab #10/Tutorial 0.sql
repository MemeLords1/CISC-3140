#Thomas Chen
#Tutorial 0: SELECT basics

#1. Select the population of Germany using the WHERE clause
SELECT population FROM world
  WHERE name = 'Germany'

#2. Show the name and the population for 'Sweden', 'Norway' and 'Denmark' only from the table World
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

#3. Checking range between 200,000 and 250,000
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000
