# SQL Lesson 1: SELECT queries 101

## Problem Statement

This exercise focuses on retrieving data using `SELECT` queries to extract different sets of information.

## Explanation
To retrieve data from a SQL database, we need to write SELECT statements, which are often colloquially refered to as *queries*.

And given a table of data, the most basic query we could write would be one that selects for a couple columns (properties) of the table with all the rows (instances).

- Select query for a specific columns
```
SELECT column, another_column, …
FROM mytable;
```

## Tasks

1. Find the `title` of each film.
2. Find the `director` of each film.
3. Find the `title` and `director` of each film.
4. Find the `title` and `year` of each film.
5. Find all the information about each film.

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

## Solutions

The query (`.sql`) is present in `/queries` directory if you wanted to run it locally. [exercise1_queries.sql](../queries/exercise1_queries.sql)

### Task 1: Find the `title` of each film
```sql
SELECT title FROM movies;
```
### Task 2: Find the `director` of each film
```sql
SELECT director FROM movies;
```
### Task 3: Find the `title` and `director` of each film
```sql
SELECT title,director FROM movies;
```
### Task 4: Find the `title` and `year` of each film
```sql
SELECT title, year FROM movies;
```
### Task 5: Find `all information` about each film
```sql
SELECT * FROM movies;
```