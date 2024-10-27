# SQL Lesson 2: Queries with constraints (Pt. 1)

## Problem Statement

In the previous exerice we learnt the usage of `SELECT` clause to display **columns** that are pertinent to us from a given table of many many columns. However, we still didn't know how to put a condition on which **rows** wewanted to display. This is where the `WHERE` clause comes into play!

## Explanation

The `WHERE` clause is applied to each row of data by checking specific column values to determine whether it should be included in the results or not.

``` sql
SELECT column, another_column, …
FROM mytable
WHERE condition
    AND/OR another_condition
    AND/OR …;
```

More complex clauses can be constructed by joining numerous AND or OR logical keywords (ie. num_wheels >= 4 AND doors <= 2).

|Operator|	Condition|	SQL Example|
|--------|-----------|-------------|
|=, !=, <, <=, >, >=|	Standard numerical operators|	col_name != 4|
|BETWEEN … AND …|	Number is within range of two values (inclusive)|	col_name BETWEEN 1.5 AND 10.5|
|NOT BETWEEN … AND …|	Number is not within range of two values (inclusive)|	col_name NOT BETWEEN 1 AND 10|
|IN (…)|	Number exists in a list|	col_name IN (2, 4, 6)|
|NOT IN (…)|	Number does not exist in a list|	col_name NOT IN (1, 3, 5)|

- Notice we use `=` for equality not `==`


## Database

The database used for this exercise is [`sqlbolt_movies.db`](../databases/sqlbolt_movies.db). Snapshot below:

|Id|title|director|	year|length_minutes|
|--|-----|--------|-----|--------------|
|1|	Toy Story|	John Lasseter|	1995|	81|
|2|	A Bug's Life|	John Lasseter|	1998|	95|
|3|	Toy Story 2|	John Lasseter|	1999|	93|
|4|	Monsters, Inc.|	Pete Docter|	2001|	92|
|5|	Finding Nemo|	Andrew Stanton|	2003|	107|
|6|	The Incredibles|	Brad Bird|	2004|	116|
|and so on...|

## Tasks

1. Find the movie with a row id of 6
2. Find the movies released in the years between 2000 and 2010
3. Find the movies not released in the years between 2000 and 2010
4. Find the first 5 Pixar movies and their release year

The query (`.sql`) is present in `/queries` directory if you wanted to run it locally. [exercise1_queries.sql](../queries/exercise2_queries.sql)

### Task 1: Find the movie with a row id of 6
```sql
SELECT * FROM movies
WHERE id = 6;
```
### Task 2: Find the movies released in the years between 2000 and 2010
```sql
SELECT * FROM movies
WHERE year BETWEEN 2000 AND 2010;
```
### Task 3: Find the movies not released in the years between 2000 and 2010
```sql
SELECT * FROM movies
WHERE year NOT BETWEEN 2000 AND 2010;
```
### Task 4: Find the first 5 Pixar movies and their release year
```sql
SELECT * FROM movies
WHERE id BETWEEN 1 AND 5;
```