# My SQL cheatsheet

1. How to create a new database and create table using sqlite3 command

    1. Open Terminal
    1. Run the sqlite3 command with your desired database name:
        `sqlite3 my_database.db`
    1. This command will create a new database file named my_database.db (or open it if it already exists).
    1. To create a table, do the following:

    ```sql
    CREATE TABLE north_american_cities (
    city TEXT,
    country TEXT,
    population INTEGER,
    latitude REAL,
    longitude REAL
    );
    ```
    1. `.exit` to exit out of sqlite3


1. How to Insert data into a table

- Open the database which has the relavent table
```sqlite3 north_american_cities_database.db```

- Now use the `INSERT INTO` clause to insert single/multiple entries like so:

```sql
INSERT INTO north_american_cities (city, country, population, latitude, longitude) VALUES
('Guadalajara', 'Mexico', 1500800, 20.659699, -103.349609),
('Toronto', 'Canada', 2795060, 43.653226, -79.383184),
('Houston', 'United States', 2195914, 29.760427, -95.369803),
('New York', 'United States', 8405837, 40.712784, -74.005941),
('Philadelphia', 'United States', 1553165, 39.952584, -75.165222),
('Havana', 'Cuba', 2106146, 23.05407, -82.345189),
('Mexico City', 'Mexico', 8555500, 19.432608, -99.133208),
('Phoenix', 'United States', 1513367, 33.448377, -112.074037),
('Los Angeles', 'United States', 3884307, 34.052234, -118.243685),
('Ecatepec de Morelos', 'Mexico', 1742000, 19.601841, -99.050674),
('Montreal', 'Canada', 1717767, 45.501689, -73.567256),
('Chicago', 'United States', 2718782, 41.878114, -87.629798);

.exit
```

3. How to view a SQL table

```SELECT * FROM north_american_cities LIMIT 5;```

```excel
Guadalajara|Mexico|1500800|20.659699|-103.349609
Toronto|Canada|2795060|43.653226|-79.383184
Houston|United States|2195914|29.760427|-95.369803
New York|United States|8405837|40.712784|-74.005941
Philadelphia|United States|1553165|39.952584|-75.165222
```

4. How to shuffle up a sql table and save it as a new one using sqlite3 command

```sql
sqlite3 sqlbolt_movies.db
CREATE TABLE shuffled_movies AS
SELECT * FROM movies
ORDER BY RANDOM();

.exit
```