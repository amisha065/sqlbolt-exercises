-- ### 1. List all directors of Pixar movies (alphabetically), without duplicates
SELECT DISTINCT director     
FROM shuffled_movies
ORDER BY director;

--- ### 2. List the last four Pixar movies released (ordered from most recent to least)
SELECT title     
FROM shuffled_movies
ORDER BY year DESC
LIMIT 4;

-- ### 3. List the first five Pixar movies sorted alphabetically
SELECT title     
FROM shuffled_movies
ORDER BY title ASC
LIMIT 5;

-- ### 4. List the next five Pixar movies sorted alphabetically
SELECT title     
FROM shuffled_movies
ORDER BY title ASC
LIMIT 5 OFFSET 5;