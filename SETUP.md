# Development Setup Guide

## Prerequisites

To work with this project, you will need the following installed on Ubuntu:

- **SQLite**: To create and manage the databases.
  
- **VS Code**: The recommended code editor for managing this project.
    + **VS code Extensions**: 
        1. SQLite: Allows up to run queries on the `db` 


## Setup Instructions

### Step 1: Clone the Repository
```bash   
    git clone https://github.com/amisha065/sqlbolt-exercises.git
    cd sqlbolt-exercises
```

### Step 2: Install SQLite
``` bash
    sudo apt update
    sudo apt install sqlite3
```

### Step 3: Open the Project in VS Code
1. Open VS Code and go to **File > Open Folder**.
2. Select the cloned project folder (`sqlbolt-exercises`).

### Step 4: Install the SQLite Extension
1. Go to the Extensions panel in VS Code (left sidebar).
2. Search for **"SQLite"** and click *Install*.
3. This extension will allow you to open `.db` files 
3. This extension will allow you to run queries `.sql` on the  `.db` files 

### Step 5: Create a new database (optional)

- **Method 1**: Using `sqlite3` Command Line

    1. **Open Terminal** and type:
    ```bash
    cd databases/
    sqlite3 my_database.db
    ```
    This will create a new database file named `my_database.db` (or open it if it already exists).

    2. **Create Tables**: After opening, you can create tables by typing SQL commands:
    ```sql
    CREATE TABLE movies (id INTEGER PRIMARY KEY, title TEXT, director TEXT, year INTEGER);
    INSERT INTO movies (title, director, year) VALUES ('Inception', 'Christopher Nolan', 2010);
    .exit
    ```

- **Method 2**: Using VS Code (NOT TRIED)

    1. Open VS Code.
    2. Create an Empty File: Go to File > New File and save it as my_database.db in your desired directory.
    3. Use SQLite Extension: Install the SQLite extension, and open the .db file using the extension.
    4. Add Tables: Use the SQL editor to run CREATE TABLE commands to structure your new database.


### Step 6: Open the Database from VS Code
1.  Navigate to the `databases/` folder in the Explorer panel.
2. Right-click on `sqlbolt_movies.db` and select **"Open Database "**. It will show the database in the SQLITE_EXPLORER view (Left Bottom)
3. Right click on the `movies` table

Here is an example of what it should look like:

![SQLite Database](/images/open_db_example.png)

### Step 6: Creating/Running SQL Queries

1. **New Query**: Open VS Code command palette (Shift+Ctrl+P) and type `>SQLite  New Query`
2. **Write Queries**: Write your SQL queries in the editor. And Save it in the `/queries` directory. 
3. **Run Queries**: Click the command palette (Shift+Ctrl+P) and type `>SQLite  Run New Query` or (Shift+Ctrl+Q). Select the appropiate `.db` from the `/database` directory 

Here is an example of the database(`.db`), query(.`sql`) and the returned output looks like:

![VS Code SQLite Setup Screenshot](/images/vscode_sqlite_sqliteviewer_setup.png)
