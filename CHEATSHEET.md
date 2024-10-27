# My SQL cheatsheet

1. How to shuffle up a sql table and save it as a new one using sqlite3 command

```sql
sqlite3 sqlbolt_movies.db
CREATE TABLE shuffled_movies AS
SELECT * FROM movies
ORDER BY RANDOM();

.exit
```