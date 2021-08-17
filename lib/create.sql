/*This is a comment in sql*/
/*Here we need to create 3 different tables*/
/*Numeric values can have a decimal, Integers are whole numbers*/

CREATE TABLE projects ( 
id INTEGER PRIMARY KEY,
title TEXT,
category TEXT,
funding_goal NUMERIC,
start_date TEXT,
end_date TEXT
);

CREATE TABLE users(
id INTEGER PRIMARY KEY,
name TEXT,
age INTEGER
);

CREATE TABLE pledges(
id INTEGER PRIMARY KEY,
amount NUMERIC,
user_id INTEGER,
project_id INTEGER
);