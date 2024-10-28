[SQL Lesson 7: OUTER JOINs](https://sqlbolt.com/lesson/select_queries_with_outer_joins)

Imagine you are managing data for a school, and you have two tables:

- Students Table: Contains information about all students.

    |student_id | name|
    |----------|---------|
    |1          | Alice|
    |2          | Bob|
    |3          | Charlie|
    |4          | David|


- Attendance Table: Contains attendance records.

    |student_id | attended|
    |-----------|-----------|
    |1          | Yes|
    |3          | No|

    Now, you want to create a report that lists all students and their attendance status.

    ## Using INNER JOIN:
    An INNER JOIN would only return students who have a match in both tables:

    ```sql
    SELECT students.name, attendance.attended
    FROM students
    INNER JOIN attendance ON students.student_id = attendance.student_id;
    ```

    - Result:

    |name     | attended|
    |------|--------------|
    |Alice    | Yes|
    |Charlie  | No|

- Issue: Students like Bob and David who don’t have any attendance records are excluded from the result, even though they exist in the Students table.

    ## Solution: Using LEFT OUTER JOIN:
    
    A LEFT OUTER JOIN solves this problem by including all students, even those without a matching row in the Attendance table:

    ```sql
    SELECT students.name, attendance.attended
    FROM students
    LEFT JOIN attendance ON students.student_id = attendance.student_id;
    ```

    |name     | attended|
    |--------|------------|
    |Alice    | Yes|
    |Bob      | NULL|
    |Charlie  | No|
    |David    | NULL|

    Explanation: The LEFT JOIN includes all rows from the Students table. If there is no corresponding attendance data, it fills in NULL. This way, you can see that Bob and David haven’t had any attendance data recorded.

```sql
SELECT column, another_column, …
FROM mytable
INNER/LEFT/RIGHT/FULL JOIN another_table 
    ON mytable.id = another_table.matching_id
WHERE condition(s)
ORDER BY column, … ASC/DESC
LIMIT num_limit OFFSET num_offset;
```
Like the INNER JOIN these three new joins have to specify which column to join the data on.<br>

- When joining table A to table B, a LEFT JOIN simply includes rows from A regardless of whether a matching row is found in B. 
- The RIGHT JOIN is the same, but reversed, keeping rows in B regardless of whether a match is found in A. 
- Finally, a FULL JOIN simply means that rows from both tables are kept, regardless of whether a matching row exists in the other table.