

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
WHERE location= 'KY' OR location = 'TN'


--3b. 27

SELECT COUNT (title) AS star_rating_above4
FROM data_analyst_jobs
WHERE location= 'TN'
AND star_rating >4;


--Q4. 3

SELECT *
FROM data_analyst_jobs
WHERE review_count
BETWEEN 500 AND 1000

--Q5. 151

SELECT  location AS state, ROUND(AVG(star_rating),1) AS avg_rating, location AS state
FROM data_analyst_jobs
WHERE star_rating IS NOT NULL
GROUP BY location
ORDER BY avg_rating DESC;

--Q6. NEBRASKA

Select COUNT(DISTINCT data_analyst_jobs.title)
FROM data_analyst_jobs


__Q7. 881

Select COUNT(DISTINCT data_analyst_jobs.title)
FROM data_analyst_jobs
WHERE location= 'CA'

--Q8. 230

SELECT company, AVG(star_rating) AS avg_star_rating
FROM data_analyst_jobs
WHERE company IS NOT NULL
GROUP BY company
HAVING MIN (review_count) > 5000;

--Q9. 40
SELECT ROUND(AVG(star_rating), 2) AS avg_rating, company
FROM data_analyst_jobs
WHERE (review_count> '5000')
AND company IS not NULL
Group BY company 
ORDER BY avg_rating DESC;


--Q10. Kaiser Permanente 4.20

SELECT DISTINCT title AS job_title
FROM data_analyst_jobs 
WHERE title ILIKE '%ANALYST%';

--Q11. 774

SELECT (title) AS title_count
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%'
AND title NOT ILIKE '%Analytics%';

--Q12. Tableau
--Q12. 39

SELECT title, days_since_posting,skill, domain AS industry
FROM data_analyst_jobs
WHERE days_since_posting> 21 AND skill LIKE '%SQL%' AND domain IS NOT NULL
ORDER BY days_since_posting DESC

--Qbonus COnsulting and Buisness Services, Resturants, Travel and Leisure. ALL 3 have been listed for more than two weeks.