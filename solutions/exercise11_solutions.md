# [SQL Lesson 11: Queries with aggregates (Pt. 1)](https://sqlbolt.com/lesson/select_queries_with_aggregates_pt_2)

## Notes

One thing that you might have noticed is that if the `GROUP BY` clause is executed after the `WHERE` clause (which filters the rows which are to be grouped), then how exactly do we filter the grouped rows?

Luckily, SQL allows us to do this by adding an additional `HAVING` clause which is used specifically with the `GROUP BY` clause to allow us to filter grouped rows from the result set.

The `HAVING` clause is used in SQL to filter groups of records returned by the `GROUP BY` clause. It’s similar to the `WHERE` clause, but the key difference is that `HAVING` is used to filter aggregated data, while `WHERE` is used to filter individual rows before they are aggregated.

- Why is HAVING Needed?

The WHERE clause cannot be used to filter aggregate results, such as those produced by SUM(), AVG(), COUNT(), etc.
After aggregating data, if you want to filter groups based on the aggregation results, you need the HAVING clause.


mployee Salaries
Imagine you have an Employees table:

markdown
Copy code
Employees
------------------------
department | salary
------------------------
HR         | 50000
IT         | 70000
IT         | 80000
HR         | 55000
Sales      | 40000
Sales      | 45000
To find departments whose total salary exceeds 100,000, you would use:

sql
Copy code
SELECT department, SUM(salary) AS total_salary
FROM Employees
GROUP BY department
HAVING SUM(salary) > 100000;
Explanation:

GROUP BY department: Groups the records by department.
HAVING SUM(salary) > 100000: Ensures only departments whose total salary exceeds 100,000 are returned.
Result:

diff
Copy code
department | total_salary
-------------------------
IT         | 150000
HR         | 105000
Summary:
WHERE filters individual rows before grouping.
HAVING filters aggregated data after grouping.
HAVING is essential when you need to apply conditions to aggregated results, such as totals or averages.
This makes the HAVING clause incredibly useful when working with grouped data, especially for filtering groups based on the outcome of aggregate functions like SUM(), COUNT(), or AVG().










## Tasks

1. Find the number of Artists in the studio (without a HAVING clause)

```sql
SELECT COUNT(role)
FROM employees
WHERE role = 'Artist'
;
```


2. For each role, find the average number of years employed by employees in that role

```sql
SELECT role, COUNT(role) AS total_employee_in_role
FROM employees
GROUP BY role
;
```

3. Find the total number of employee years worked in each building


```sql
SELECT role, SUM(years_employed) AS total_years_employed
FROM employees
WHERE role = 'Engineer';
```

OR

```sql
SELECT role, SUM(years_employed) AS total_years_employed
FROM employees
GROUP BY role
HAVING role = 'Engineer';
```