DROP TABLE IF EXISTS netflix;
CREATE TABLE Netflix
(
	show_id VARCHAR(6),
	type VARCHAR(10),
	title VARCHAR(150),
	director VARCHAR(208),
	casts VARCHAR(1000),
	country VARCHAR(150),
	date_added VARCHAR(50),
	release_year INT,
	rating VARCHAR(10),
	duration VARCHAR(15),
	listed_in VARCHAR(100),
	description VARCHAR(250)
);
SELECT*FROM Netflix;

SELECT
COUNT(*) AS Total_Content
FROM Netflix;

SELECT DISTINCT TYPE
FROM Netflix;

SELECT*FROM Netflix;

-- 15 Business Problems

-- 1. Count the number of Movies vs TV Shows
SELECT type,
 COUNT(*) AS Total
 FROM Netflix
 GROUP BY type;

-- 2. Find the most common rating for movies and TV shows.
SELECT 
	type,rating
FROM
(
	SELECT
	type,rating,
	COUNT(*),
	RANK()OVER(PARTITION BY type ORDER BY COUNT(*) DESC) AS ranking
FROM Netflix	
GROUP BY 1,2
)as t1
WHERE ranking = 1

-- 3. List all movies released in a specific year (e.g., 2021)
SELECT * 
FROM netflix
WHERE
	type = 'Movie'
	AND
	release_year = 2021

-- 4. Find the top 5 countries with the most content on Netflix
SELECT * 
FROM
(
	SELECT 
		UNNEST(STRING_TO_ARRAY(country, ',')) as country,
		COUNT(*) as total_content
	FROM netflix
	GROUP BY 1
)as t1
WHERE country IS NOT NULL
ORDER BY total_content DESC
LIMIT 5


-- 5. Identify the longest movie
SELECT*FROM Netflix
WHERE
type = 'Movie' AND 
duration = (SELECT MAX(duration)FROM Netflix)

-- 6. Find content added in the last 5 years
SELECT*
FROM Netflix
WHERE TO_DATE(date_added, 'Month DD, YYYY') >= CURRENT_DATE - INTERVAL '5 years';
	
-- 7. Find all the movies/TV shows by director 'Rajiv Chilaka'!
SELECT*FROM netflix
WHERE director LIKE '%Rajiv Chilaka%'
	
-- 8. List all TV shows with more than 5 seasons
SELECT*FROM Netflix
WHERE 
	type = 'TV Show'
	AND
	SPLIT_PART(duration,' ',1)::numeric > 5 

-- 9. Count the number of content items in each genre
SELECT
	UNNEST(STRING_TO_ARRAY(listed_in,','))AS genre,
	COUNT(show_id)AS total_content
FROM Netflix
GROUP BY 1

-- 10.Find each year and the average numbers of content release in India on netflix. 
-- return top 5 year with highest avg content release!
SELECT
	EXTRACT(YEAR FROM TO_DATE(date_Added, 'Month DD, YYYY'))as year,
	COUNT(*)as yearly_content,
	ROUND(
	COUNT(*)::numeric/(SELECT COUNT(*)FROM Netflix WHERE country = 'India')::numeric*100
	,2)AS avg_content_per_year
FROM Netflix
WHERE country = 'India'
GROUP BY 1

-- 11. List all movies that are documentaries
SELECT * FROM netflix
WHERE listed_in LIKE '%Documentaries'

-- 12. Find all content without a director
SELECT * FROM netflix
WHERE director IS NULL

-- 13. Find how many movies actor 'Salman Khan' appeared in last 10 years!
SELECT * FROM Netflix
WHERE 
	casts LIKE '%Salman Khan%'
	AND 
	release_year>EXTRACT(YEAR FROM CURRENT_DATE) - 10
	
-- 14. Find the top 10 actors who have appeared in the highest number of movies produced in India.
SELECT 
	UNNEST(STRING_TO_ARRAY(casts, ',')) as actor,
	COUNT(*)
FROM netflix
WHERE country = 'India'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10

-- 15. Categorize the content based on the presence of the keywords 'kill' and 'violence' in the description field. 
-- Label content containing these keywords as 'Bad' and all other 
-- content as 'Good'. Count how many items fall into each category.
SELECT 
    category,
	TYPE,
    COUNT(*) AS content_count
FROM (
    SELECT 
		*,
        CASE 
            WHEN description ILIKE '%kill%' OR description ILIKE '%violence%' THEN 'Bad'
            ELSE 'Good'
        END AS category
    FROM netflix
) AS categorized_content
GROUP BY 1,2













