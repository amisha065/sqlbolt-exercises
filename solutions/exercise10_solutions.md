# [SQL Lesson 10: Queries with aggregates (Pt. 1)](https://sqlbolt.com/lesson/select_queries_with_aggregates)

## Notes

MAX(), MIN(), AVG(), COUNT(), SUM()
GROUP BY

## Tasks

1. Find the longest time that an employee has been at the studio

```sql
SELECT MAX(years_employed) AS max_years
FROM employees;
```


2. For each role, find the average number of years employed by employees in that role

```sql
SELECT role, AVG(years_employed) AS avg_years_employed
FROM employees
GROUP BY ROLE;
```

3. Find the total number of employee years worked in each building


```sql
SELECT Building, SUM(years_employed) AS total_employee_years
FROM employees
GROUP BY Building
```