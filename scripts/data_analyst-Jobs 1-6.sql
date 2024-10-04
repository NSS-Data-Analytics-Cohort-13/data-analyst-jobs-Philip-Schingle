

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

Select COUNT(DISTINCT data_analyst_jobs.title)
FROM data_analyst_jobs


__Q7. 881

Select COUNT(DISTINCT data_analyst_jobs.title)
FROM data_analyst_jobs
WHERE location= 'CA'

--Q8. 230

SELECT ROUND(AVG(star_rating), 2) AS avg_rating, company
FROM data_analyst_jobs
WHERE (review_count> '5000')
AND company IS not NULL
Group BY company 
ORDER BY avg_rating ASC;

--Q9. 40


SELECT ROUND(AVG(star_rating), 2) AS avg_rating, company, location
FROM data_analyst_jobs
WHERE (review_count> '5000')
AND company IS not NULL
Group BY company, location
ORDER BY avg_rating DESC;

--Q10. Kaiser Permanente 4.20

SELECT count(title) AS title_count
FROM data_analyst_jobs 
WHERE title LIKE '%Analyst%';

--Q11. 1636

SELECT (title) AS title_count
FROM data_analyst_jobs
WHERE title NOT LIKE '%Analyst%'
AND title NOT LIKE '%Analytics%';

--Q12. it is not case sensitive

--Q12. 39

SELECT title, days_since_posting,skill, domain
FROM data_analyst_jobs
WHERE days_since_posting> 21 AND skill='SQL' AND domain IS NOT NULL
ORDER BY days_since_posting DESC; 


--Qbonus COnsulting and Buisness Services, computers and Electronics Real Estate. ALL 3 have been listed for more than two weeks.