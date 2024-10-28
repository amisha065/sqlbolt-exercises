# [SQL Lesson 9: Queries with expressions](https://sqlbolt.com/lesson/select_queries_with_expressions)

## Notes

Basically, we learn about AS to make aliases

```sql
SELECT column AS better_column_name, …
FROM a_long_widgets_table_name AS mywidgets
INNER JOIN widget_sales
  ON mywidgets.id = widget_sales.widget_id;
```


## Tasks

1. List all movies and their ratings in percent

```sql
SELECT title, (boxoffice.domestic_sales + boxoffice.international_sales)/1e6 AS combined_sales
FROM movies  
INNER JOIN boxoffice 
ON movies.Id = boxoffice.movie_id;
```


2. List all movies and their ratings in percent


```sql
SELECT movies.title, (boxoffice.rating * 10) AS rating_in_percent
FROM movies  
INNER JOIN boxoffice 
ON movies.Id = boxoffice.movie_id;
```

3. List all movies that were released on even number years


```sql
SELECT title,year
FROM movies  
WHERE year % 2 =  0;
```