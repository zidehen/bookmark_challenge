# Bookmark Manager 

## User Stories

```
As a user
So that I can quickly go to websites I visit regularly
I want to be able to see a list of bookmarks
```
```
As a user
So that I can save new websites 
I would like to add new bookmarks to my list
```
```
As a user
So that I can remove websites I am no longer interested in 
I would like to delete bookmarks from my list
```

## Domain Model

![Domain model](https://github.com/makersacademy/course/raw/main/bookmark_manager/images/bookmark_manager_1.png)

### To set up the bookmark_manager database:
1. Connect to 'psql'
2. Create the database using the psql command 'CREATE DATABASE bookmark_manager;'
3. Connect to the database using the pqsl command '\c bookmark_manager;'
4. Run the SQL query saved in the 'db/migrations' folder in the file '01_create_bookmarks_table.sql'

### To set up the bookmark_manager_test database:
1. Connect to 'psql'
2. Create the database using the psql command 'CREATE DATABASE bookmark_manager_test;'
3. Connect to the database using the pqsl command '\c bookmark_manager_test;'
4. Run the SQL query saved in the 'db/migrations' folder in the file '01_create_bookmarks_table.sql'

### To run the Bookmark Manager app:
```
Run rackup
localhost:9292
```