# SQLBolt Exercises Solutions

This repository contains my solutions for the exercises provided by [SQLBolt](https://sqlbolt.com/). It is a hands-on SQL practice project focused on building proficiency with SQL queries, using a local SQLite database.

## Project Overview

Each exercise involves solving SQL challenges based on the tables inside the `database` directory 

## Repository Structure

- **databases/**: Contains the SQLite database files used for practicing the exercises.
- **solutions/**: Contains Markdown files with the task, explanations and solutions for each exercise.
- **queries/**:  Contains `.sql` files with queries for each exercise for direct execution locally.
- **setup.md**: Contains detailed instructions on how to set up the environment to run the exercises locally on VSCode.

## How to Use

1. **Clone the repository**:
```bash
    git clone https://github.com/amisha065/sqlbolt-exercises.git
```

2. **Navigate to the project directory:**
``` bash
    cd sqlbolt-exercises
```

3. **Database Setup:**
    Go to the `databases/` folder to find the SQLite database that is used for a particular exercises. For example for `exercise1_solution.md`, `sqlbolt_movies.db` database was used.

4. **View Solutions:**
    The SQL solutions are available in the `solutions/` directory, with each exercise in a separate Markdown file, e.g., `exercise1_solution.md`.

5. **Run Queries:**
    - Open the `sqlbolt_movies.db` file in VS Code using the *SQLite Viewer* extension.
    - Open the `exeriseX_queries.sql` file in VS code so view/edit the query
    - From the `.sql` file, open VS code control palete (Shift+Ctrl+P) and select `SQLite: Run Query` (or Shift+Ctrl+Q) to run the query. Select the correct `.db` if prompted

Here is an example of what it should look like:

![VS Code SQLite Setup Screenshot](/images/vscode_sqlite_sqliteviewer_setup.png)

## Index
* [Exercise 1 Solution](solutions/exercise1_solution.md): TODO

## Contribution
    Feel free to contribute by submitting pull requests if you have improvements or additional exercises to share.

## License
This project is licensed under the MIT License. See the LICENSE file for more details.