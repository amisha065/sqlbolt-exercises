#[SQL Review: Simple SELECT Queries](https://sqlbolt.com/lesson/select_queries_review)

To recap, we are comfortable with the following keywords and have seen them in practice in a toy example:

```sql
SELECT column, another_column, …
FROM mytable
WHERE condition(s)
ORDER BY column ASC/DESC
LIMIT num_limit OFFSET num_offset;
```

Now lets work with a different table. This table instead contains information about a few of the most populous cities of North America[1](https://en.wikipedia.org/wiki/List_of_North_American_cities_by_population) including their population and geo-spatial location in the world.

## Tasks    

1. List all the Canadian cities and their populations
2. Order all the cities in the United States by their latitude from north to south
3. List all the cities west of Chicago, ordered from west to east
4. List the two largest cities in Mexico (by population)
5. List the third and fourth largest cities (by population) in the United States and their population

We'll use the `north_american_cities` table from the [`north_american_cities_database.db`](../databases/north_american_cities_database.db) database for this exerise. 

### 1. List all the Canadian cities and their populations

```sql
SELECT city, population
FROM north_american_cities
WHERE country = 'Canada';
```
### 2. Order all the cities in the United States by their latitude from north to south

```sql
SELECT city, latitude
FROM north_american_cities
WHERE country = 'United States'
ORDER BY latitude DESC;
```

> North to South means Decreasing values of latitude


### 3. List all the cities west of Chicago, ordered from west to east (Important)

#### Wrong way

```sql
SELECT city, latitude
FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude ASC;
```

> The bad part about the way, did it above is that we hardcoded the longitude number for Chicago in our code. The better way to create a subquery to retrive the **longitude of Chicago**.

#### Right way

Goal: Use a subquery to find cities with a longitude west of Chicago.

```sql
SELECT longitude
FROM north_american_cities
WHERE city = "Chicago"
```

This will result in `-87.629798`. Now use this subquery inside the incorrect version of the code


```sql
SELECT city, latitude
FROM north_american_cities
WHERE longitude < (
    SELECT longitude
    FROM north_american_cities
    WHERE city = "Chicago"
)
ORDER BY longitude ASC;
```

### 4. List the two largest cities in Mexico (by population)
```sql
SELECT city, population
FROM north_american_cities
WHERE country = 'Mexico'
ORDER BY population DESC
LIMIT 2;

```
### 5. List the third and fourth largest cities (by population) in the United States and their population
```sql
SELECT city, population
FROM north_american_cities
WHERE country = 'United States'
ORDER BY population DESC
LIMIT 2 OFFSET 2;
```
