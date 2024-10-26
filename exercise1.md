# Exercise 1: SQL SELECT Queries

## Problem Statement

This exercise focuses on retrieving data from the `movies` table in an SQLite database. You are required to use `SELECT` queries to extract different sets of information.

### Tasks

1. Find the `title` of each film.
2. Find the `director` of each film.
3. Find the `title` and `director` of each film.
4. Find the `title` and `year` of each film.
5. Find all the information about each film.

## Database

The database used for this exercise is [`sqlbolt_movies.db`](../databases/sqlbolt_movies.db).

## Solutions

### Task 1: Find the `title` of each film
```sql
SELECT title FROM movies;
