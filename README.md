## User Stories

As a user,
So that I can quickly go to websites I visit regularly
I want to be able to see a list of bookmarks

public/images/bookmark_manager_1.png

### To set up the database:
-Connect to 'psql'
-Create the database using the psql command 'CREATE DATABASE bookmark_manager;'
-Connect to the database using the pqsl command '\c bookmark_manager;'
-Run the SQL query saved in the 'db/migrations' folder in the file '01_create_bookmarks_table.sql'