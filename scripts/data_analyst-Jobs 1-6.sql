

SELECT *
FROM data_analyst_jobs

--Q1. 1793


SELECT *
FROM data_analyst_jobs
LIMIT 10


--Q2. ExxonMobile


-- Q3.

SELECT *
FROM data_analyst_jobs
WHERE location= 'TN'

--3a. 21

SELECT *
FROM data_analyst_jobs
WHERE location= 'KY'


--3b. 6

SELECT *
FROM data_analyst_jobs
WHERE location= 'TN'
AND star_rating BETWEEN 4 AND 5


--Q4. 4

SELECT *
FROM data_analyst_jobs
WHERE review_count
BETWEEN 500 AND 1000

--Q5. 151

SELECT AVG(star_rating) AS avg_rating, location AS state
FROM data_analyst_jobs
GROUP BY location 

--Q6. RI
