# [SQL Lesson 8: A short note on NULLs](https://sqlbolt.com/lesson/select_queries_with_nulls)

## Notes

Sometimes, it's also not possible to avoid `NULL` values, as we saw in the last lesson when outer-joining two tables with asymmetric data. In these cases, you can test a column for `NULL` values in a WHERE clause by using either the IS `NULL` or IS NOT `NULL` constraint.

- Select query with constraints on NULL values

```sql
SELECT column, another_column, …
FROM mytable
WHERE column IS/IS NOT NULL
AND/OR another_condition
AND/OR …;
```


## Tasks

1. Find the name and role of all employees who have not been assigned to a building

```sql
SELECT name, role
FROM employees
WHERE building IS NULL
;
```


2. Find the names of the buildings that hold no employees

```sql
SELECT buildings.building_name
FROM buildings
LEFT JOIN employees
ON buildings.building_name = employees.building
WHERE employees.building IS NULL
;
```