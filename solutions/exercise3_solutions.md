# SQL Lesson 3: Queries with constraints (Pt. 2)

Now in previous exerise we learnt about the `WHERE` clause and how it works in conjunction with `BETWEEN`, `IN` etc. However, as we can see it fails with substring matching or when we want to select something regardless of case. And that's where there are somemore operators that come to the rescue!

# Concept

- `LIKE`
- `%` and `_` 

|Operator|	Condition|	SQL Example|
|--------|-----------|-------------|
|LIKE|	Case insensitive exact string comparison|	col_name LIKE "ABC"|
|NOT  LIKE|	Case insensitive exact string inequality comparison|	col_name NOT LIKE "ABC"|
|%|	 to match a sequence of zero or more characters  (only with LIKE or NOT LIKE)|	col_name LIKE "%AT%" (matches "AT", "ATTIC", "CAT" or even "BATS")|
|_|	 to match a single character  (only with LIKE or NOT LIKE)|	col_name LIKE "AN_" (matches "AND", but not "AN")|

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

1. Find all the Toy Story movies
2. Find all the movies directed by John Lasseter
3. Find all the movies (and director) not directed by John Lasseter
4. Find all the WALL-* movies

The query (`.sql`) is present in `/queries` directory if you wanted to run it locally. [exercise1_queries.sql](../queries/exercise3_queries.sql)

### 1. Find all the Toy Story movies
```
SELECT * FROM movies 
WHERE title LIKE "Toy Story%";
```
### 2. Find all the movies directed by John Lasseter
```
SELECT * FROM movies 
WHERE director LIKE "John Lasseter";
```
### 3. Find all the movies (and director) not directed by John Lasseter
```
SELECT title, director FROM movies 
WHERE director NOT LIKE "John Lasseter";
```
### 4. Find all the WALL-* movies
```
SELECT * from movies
WHERE title LIKE "WALL-%";
```


