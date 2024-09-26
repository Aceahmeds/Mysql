# Class 9: Indexes and Performance
# Creating indexes
# Benefits of indexing
# Query optimization using indexes

# What is an index?
# indexes are used to speed up queries in a database system and to improve the performance of queries.

# Guidelines for creating indexes
# 1. Indexes should be created on columns that are frequently used in the query
# 2. Automatically creates the index on the primary key and the unique key of the table
# 3. Index columns that are used for joins to improve query performance
# 4. Avoid columns that contain too many NULL values
# 5. Small tables should not have indexes

create database class09;
use class09;

create table students
(
    id   int primary key auto_increment,
    name varchar(100) not null,
    age  int          not null
);

create index idx_age on students (age);

insert into students(id, name, age)
VALUES (1, 'Ahmed', 22),
       (2, 'Talha', 22),
       (3, 'Siddiq', 22);

select *
from students
where age = 22;


# String Functions
# What are string functions?
# String functions are used to manipulate strings in SQL.

select concat('Hello', 'World');

select concat(name, ' is ', age, ' years old')
from students;

# LOWER
#     (string)
#     : Converts a string to lowercase. Example: SELECT LOWER('Hello World') AS lowercase;
# - Output: hello world
# UPPER(string): Converts a string to uppercase. Example:
# SELECT UPPER('hello world') AS uppercase;
# - Output: HELLO WORLD
# LENGTH(string): Returns the length of a string. Example:
# SELECT LENGTH('Hello World') AS length;
# - Output: 11
# CONCAT(string1, string2): Concatenates two strings. Example:
# SELECT CONCAT('Hello', ' World') AS concatenated;
# - Output: Hello World
# SUBSTRING(string, start, length): Returns a substring of a string. Example:
# SELECT SUBSTRING('Hello World', 1, 5) AS substring;
# - Output: Hello
# LTRIM(string): Removes leading whitespace from a string. Example:
# SELECT LTRIM(' Hello World') AS trimmed;
# - Output: Hello World
# RTRIM(string): Removes trailing whitespace from a string. Example:
# SELECT RTRIM('Hello World ') AS trimmed;
# - Output: Hello World
# TRIM(string): Removes leading and trailing whitespace from a string. Example:
# SELECT TRIM(' Hello World ') AS trimmed;
# - Output: Hello World
# REPLACE (string, old_value, new_value): Replaces occurrences of a substring in a string. Example:
# SELECT
# REPLACE ('Hello World', 'World', 'Universe') AS replaced;
# - Output: Hello Universe
# INSTR(string, substring): Returns the position of the first occurrence of a substring in a string. Example:
# SELECT INSTR('Hello World', 'World') AS position;
# - Output: 7
# LOCATE(string, substring): Returns the position of the first occurrence of a substring in a string. Example:
# SELECT LOCATE('World', 'Hello World') AS position;
# - Output: 7
# LEFT(string, length): Returns the leftmost characters of a string. Example:
# SELECT LEFT('Hello World', 5) AS left;
# - Output: Hello
# RIGHT(string, length): Returns the rightmost characters of a string. Example:
# SELECT RIGHT('Hello World', 5) AS right;
# - Output: World
# SUBSTRING_INDEX(string, delimiter, position): Returns a substring before a specified delimiter. Example: SELECT SUBSTRING_INDEX('Hello,World,Universe', ',', 2) AS substring;
# - Output: Hello,World
# REGEXP_REPLACE(string, pattern, replacement): Replaces matches of a regular expression pattern with a replacement string. Example:
# SELECT REGEXP_REPLACE('Hello World', '[A-Z]', 'a') AS replaced;
# - Output: hello world
# REGEXP_REPLACE(string, pattern, replacement): Replaces matches of a regular expression pattern with a replacement string. Example:
# SELECT REGEXP_REPLACE('Hello World', '[A-Z]', 'a') AS replaced;
# - Output: hello world
# REGEXP_REPLACE(string, pattern, replacement): Replaces matches of a regular expression pattern with a replacement string. Example:
# SELECT REGEXP_REPLACE('Hello World', '[A-Z]', 'a') AS replaced;
# - Output: `hello world
#


