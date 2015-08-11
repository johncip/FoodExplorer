# Schema Information

## lists
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
owner_id    | integer   | not null, foreign key (references users)
title       | string    | not null

## restaurants
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
author_id   | integer   | not null, foreign key (references users)
name        | string    | not null
address     | string    |
city        | string    | not null
state       | string    | not null
zip         | string    | not null
TBD         | TBD       | TBD (during Phase III)

NB: Restuarants have an author_id because it's planned to have lists that are
shared among and authored by multiple users.

## listings
column name   | data type | details
--------------|-----------|-----------------------
id            | integer   | not null, primary key
restuarant_id | integer   | not null, foreign key (references restaurants)
list_id       | integer   | not null, foreign key (references lists)

## list_comments
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
list_id     | integer   | not null, foreign key (references lists)
body        | text      | not null

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
email           | string    | not null, unique
password_digest | string    | not null
session_token   | string    | not null, unique

##
