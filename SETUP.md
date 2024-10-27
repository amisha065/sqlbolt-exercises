# Development Setup Guide

## Prerequisites

To work with this project, you will need the following installed on Ubuntu:

- **SQLite**: To create and manage the databases.
  
- **VS Code**: The recommended code editor for managing this project.
    + **VS code Extensions**: 
        1. SQLite Viewer: Allows us to view the `.db` directly from VS Code.
        2. SQLite: Allows up to run queries on the `db` 


## Setup Instructions

### Step 1: Clone the Repository
```bash
    cd sqlbolt-exercises
    git clone https://github.com/amisha065/sqlbolt-exercises.git
```

### Step 2: Install SQLite
``` bash
    sudo apt update
    sudo apt install sqlite3
```

### Step 3: Open the Project in VS Code
1. Open VS Code and go to **File > Open Folder**.
2. Select the cloned project folder (`sqlbolt-exercises`).

### Step 4: Install the SQLite Viewer Extension
1. Go to the Extensions panel in VS Code (left sidebar).
2. Search for **"SQLite Viewer"** and click *Install*.
3. This extension will allow you to open `.db` files 

### Step 5: Install the SQLite Extension
1. Go to the Extensions panel in VS Code (left sidebar).
2. Search for **"SQLite"** and click *Install*.

### Step 6: Create or Open the Database 
1.  Navigate to the `databases/` folder in the Explorer panel.
2. Right-click on `sqlbolt_movies.db` and select **"Open with -> SQLite Viewer"**.
3. You can now see the database structure and open the SQL editor to execute queries.

Here is an example of what it should look like:

![SQLite Viewer](/images/open_db_sqlviewer.png)

### Step 6: Creating/Running SQL Queries

1. **New Query**: Open VS Code command palette (Shift+Ctrl+P) and type `>SQLite  New Query`
2. **Write Queries**: Write your SQL queries in the editor. And Save it in the `/queries` directory. 
3. **Run Queries**: Click the command palette (Shift+Ctrl+P) and type `>SQLite  Run New Query` or (Shift+Ctrl+Q). Select the appropiate `.db` from the `/database` directory 

Here is an example of the database(`.db`), query(.`sql`) and the returned output looks like:

![VS Code SQLite Setup Screenshot](/images/vscode_sqlite_sqliteviewer_setup.png)
