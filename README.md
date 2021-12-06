# Bookmark Manager 

## User Stories

```
As a user
So that I can quickly go to websites I visit regularly
I want to be able to see a list of bookmarks
```

## Domain Model

![Domain model](https://github.com/makersacademy/course/raw/main/bookmark_manager/images/bookmark_manager_1.png)

### To set up the database:
-Connect to 'psql'
-Create the database using the psql command 'CREATE DATABASE bookmark_manager;'
-Connect to the database using the pqsl command '\c bookmark_manager;'
-Run the SQL query saved in the 'db/migrations' folder in the file '01_create_bookmarks_table.sql'