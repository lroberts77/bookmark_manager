### The website will have the following specification:

- Show a list of bookmarks

- Add new bookmarks
 
- Delete bookmarks

- Update bookmarks

- Comment on bookmarks

- Tag bookmarks into categories

- Filter bookmarks by tag

- Users are restricted to manage only their own bookmarks

This is a start, but it's not enough to simply record the SQL queries, the README needs to be updated with instructions on how to use these. Anyone needing to setup the database from scratch will need to do the following things:

- Connect to psql with the command `psql postgres;`

- Create the database using the psql command `CREATE DATABASE "bookmark_manager";`

- Connect to the database using the pqsl command `\c bookmark_manager;`

- Run the query we have saved in the file `01_create_bookmarks_table.sql`

### To set up the database


Connect to `psql` and create the `bookmark_manager` database:	Connect to `psql` and create the `bookmark_manager` and `bookmark_manager_test` databases:


```	```
CREATE DATABASE bookmark_manager;	CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
```	```


To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.	To set up the appropriate tables, connect to each database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.


### To run the Bookmark Manager app:	### To run the Bookmark Manager app:



Make sure your README is updated with clear instructions to guide the developer through these steps.
