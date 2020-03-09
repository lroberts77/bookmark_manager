The website will have the following specification:

1.Show a list of bookmarks

2.Add new bookmarks

3.Delete bookmarks

4.Update bookmarks

5.Comment on bookmarks

6.Tag bookmarks into categories

7.Filter bookmarks by tag

8.Users are restricted to manage only their own bookmarks

This is a start, but it's not enough to simply record the SQL queries, the README needs to be updated with instructions on how to use these. Anyone needing to setup the database from scratch will need to do the following things:

Connect to psql

Create the database using the psql command CREATE DATABASE bookmark_manager;

Connect to the database using the pqsl command \c bookmark_manager;

Run the query we have saved in the file 01_create_bookmarks_table.sql

Make sure your README is updated with clear instructions to guide the developer through these steps.
