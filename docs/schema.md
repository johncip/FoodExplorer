# Schema Information

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
email           | string    | not null, unique
password_digest | string    | not null
session_token   | string    | not null, unique


## lists
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
owner_id    | integer   | not null, foreign key (references users)
title       | string    | not null
favorite    | boolean   | not null, default false


## restaurants
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
name        | string    | not null
address     | string    |
city        | string    | not null
state       | string    | not null
zip         | string    | not null
TBD         | TBD       | TBD (during Phase III)


## listings

Listings are a join table where per-user/per-list restaurant information (like a review) is stored.

NB: Restuarants have an author_id because lists will be able to be authored by multiple users.

column name   | data type | details
--------------|-----------|-----------------------
id            | integer   | not null, primary key
restuarant_id | integer   | not null, foreign key (references restaurants)
list_id       | integer   | not null, foreign key (references lists)
author_id     | integer   | not null, foreign key (references users)
favorite      | boolean   | not null, default false
TBD           | TBD       | TBD


## list_comments
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
author_id   | integer   | not null, foreign key (references user)
list_id     | integer   | not null, foreign key (references lists)
body        | text      | not null
