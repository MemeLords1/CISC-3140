#Thomas Chen
#Tutorial 3: SELECT from Nobel

#1. Change the query shown so that it displays Nobel Prizes for 1950
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

#2. Show who won the 1962 prize for literature.
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

#3. Show the year and subject that won 'Albert Einstein' his Prize.
SELECT yr, subject FROM nobel
WHERE winner = 'Albert Einstein'

#4. Give the name of the 'Peace' Winners since the year 2000
SELECT winner FROM nobel
WHERE subject = 'Peace'
AND yr >= 2000

#5. Show all details of the Literature prize winners for 1980 to 1989.
SELECT yr, subject, winner FROM nobel
WHERE subject = 'Literature'
AND yr >= 1980 
AND yr <= 1989

#.6 Show all Details of Theodore Roosevelt, Woodrow Wilson, Jimmy Carter, and Barack Obama
SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
		   'Woodrow Wilson',
		   'Jimmy Carter',
		   'Barack Obama')

#7. Show the winners with first name John
SELECT winner from nobel
WHERE winner Like 'John%'

#8. Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.
SELECT * FROM nobel
WHERE (subject = 'Physics' AND yr = 1980) OR
(subject = 'Chemistry' AND yr = 1984)

#9. Show Year,Subject, and Name of winners for 1980 excluding Chemistry and Medicine
SELECT * FROM nobel
WHERE yr = 1980 
AND subject <> 'Chemistry'
AND subject <> 'Medicine'

#10.Show year, subject, name of peple who won a 'Medicine' prize in an early year together with winners of 'Literature' prize in a later year
SELECT * FROM nobel
WHERE (subject = 'Medicine' AND yr < 1910) OR
(subject = 'Literature' AND yr >= 2004)

#11. Find all detials of the prize won by PETER GRÜNBERG
SELECT * FROM nobel
  WHERE winner = 'PETER GRÜNBERG'

#12. Find all details of the prize won by EUGENE O'NEILL
SELECT * FROM nobel
  WHERE winner = 'Eugene O''Neill'

#13. List the winners that starts with Sir with the most recent first, then by name order.
SELECT winner, yr, subject FROM nobel
WHERE winner like 'Sir%'
ORDER BY yr DESC, winner

#14. Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.
SELECT winner, subject FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'),subject, winner
