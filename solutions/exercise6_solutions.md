# [SQL Lesson 6: Multi-table queries with JOINs](https://sqlbolt.com/lesson/select_queries_with_joins)

Up to now, we've been working with a single table, but entity data in the real world is often broken down into pieces and stored across multiple orthogonal tables using a process known as normalization[[1](https://en.wikipedia.org/wiki/Database_normalization)].

## Database normalization

Imagine a table for an online store:

- **Original Table**:

    |OrderID | CustomerName | ProductName | ProductPrice | CustomerAddress|
    |--------|--------------|-------------|--------------|----------------|

    Problem: If a customer orders multiple products, their information is repeated for every product. And it comes with a lot of downsides:
        1. As we can see, it adds to a lot of redundant information
        2. Also chances of user error is high. It is possible that the entry person but miss miss something in the address or something
        3. Just too bulky. Needs lot of space to store.

    To solve this, we can break this table into multiple **orthogonal** tables. Data is divided into smaller tables, and relationships are created between them using **keys**.

 - **Normalized Tables:**

    1.  **Customers Table**

    | CustomerID | CustomerName | CustomerAddress |
    |------------|--------------|-----------------|
    <br>
    <br>

    2. **Orders Table**

    | OrderID  | CustomerID | 
    |----------|------------|
    <br>
    <br>

    3. **Products Table**

    | ProductID   | ProductName | ProductPrice | 
    |-------------|-------------|--------------|
    <br>
    <br>

    4. **OrderDetails Table**

    | OrderID   | ProductID | 
    |-----------|-----------|

    In this normalized structure, **customer details** are stored in one place, making updates easier and reducing redundancy. For example, if a customer changes their address, you only need to update it in one place.

As a trade-off, queries get slightly more complex since they have to be able to find data from different parts of the database, and performance issues can arise when working with many large tables.

## Multi-table queries with JOINs

In order to answer questions about an entity that has data spanning multiple tables in a normalized database, we need to learn how to write a query that can combine all that data and pull out exactly the information we need.

Using the JOIN clause in a query, we can combine row data across two separate tables using this unique key. The first of the joins that we will introduce is the INNER JOIN.

```sql
SELECT column, another_table_column, …
FROM mytable
INNER JOIN another_table 
    ON mytable.id = another_table.id
WHERE condition(s)
ORDER BY column, … ASC/DESC
LIMIT num_limit OFFSET num_offset;
```

The INNER JOIN is a process that matches rows from the first table and the second table which have the same key (as defined by the ON constraint) to create a result row with the combined columns from both tables. After the tables are joined, the other clauses we learned previously are then applied.

## Tasks    

We've added a new table `boxoffice` to the [`sqlbolt_movies.db`](../databases/sqlbolt_movies.db) database so we try practice some joins. 

The `boxoffice` table stores information about the ratings and sales of each particular Pixar movie, and the Movie_id column in that table corresponds with the `Id` column in the Movies table 1-to-1. Try and solve the tasks below using the `INNER JOIN` introduced above.



1. Find the domestic and international sales for each movie
2. Show the sales numbers for each movie that did better internationally rather than domestically
3. List all the movies by their ratings in descending order



### 1. Find the domestic and international sales for each movie

```sql
SELECT title, domestic_sales, international_sales 
FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id;
```
### 2. Show the sales numbers for each movie that did better internationally rather than domestically

```sql
SELECT title, domestic_sales, international_sales 
FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id
WHERE boxoffice.international_sales > boxoffice.domestic_sales;
```


### 3. List all the movies by their ratings in descending order

```sql
SELECT title, rating
FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id
ORDER BY boxoffice.rating DESC;
```
