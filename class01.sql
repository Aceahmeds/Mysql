# Class 1: Introduction to Database

# What is Database?
# Database is a collection of data that is organized in a systematic way.

# What is MySQL?
# MySQL is a relational database management system (RDBMS).

# What is the difference between MySQL and SQL?
# MySQL is a relational database management system (RDBMS).
# SQL is a language that is used to communicate with MySQL.

# Difference between DBMS and RDBMS
# DBMS (Database Management System):

# Definition: DBMS is a software system that allows users to define, create, maintain, and control access to databases.
# Data Model: DBMS supports various data models like hierarchical, network, and relational.
# Data Storage: DBMS can store data in files, and it provides tools for data retrieval and manipulation.
# Relationships: DBMS may not enforce relationships between tables.
# Scalability: DBMS may not be as scalable as RDBMS.
# Normalization: DBMS may not enforce normalization rules.
# Examples: Microsoft Access, FileMaker.

# RDBMS (Relational Database Management System):
#
# Definition: RDBMS is a specific type of DBMS that manages data based on the relational model.
# Data Model: RDBMS stores data in tables with rows and columns, following normalization rules.
# Data Storage: RDBMS stores data in a structured manner using tables with keys to establish relationships.
# Relationships: RDBMS enforces relationships between tables using foreign keys.
# Scalability: RDBMS is designed for scalability and can handle large datasets efficiently.
# Normalization: RDBMS enforces normalization rules to reduce redundancy and improve data integrity.
# Examples: MySQL, PostgreSQL, Oracle.
#


# Difference between SQL and NOSQL

# SQL (Structured Query Language):
#
# Type: SQL is a declarative programming language used for managing relational databases.
# Data Model: SQL is designed to work with relational databases, which store data in tables with rows and columns.
# Query Language: SQL is used to query, manipulate, and define the structure of relational databases.
# Schema: SQL requires a predefined schema to define the structure of the database.
# ACID Compliance: SQL databases are ACID-compliant, ensuring data integrity and consistency.
# Transactions: SQL databases support transactions to ensure atomicity, consistency, isolation, and durability.
# Joins: SQL supports various types of joins to retrieve data from multiple tables.
# Scaling: SQL databases can scale vertically and horizontally using techniques like sharding and replication.

# NoSQL (Not Only SQL):
#
# Type: NoSQL databases are designed to handle large amounts of unstructured or semi-structured data.
# Data Model: NoSQL databases use various data models like key-value, document, graph, and column-family.
# Query Language: NoSQL databases have their own query languages, often inspired by SQL but with different syntax and features.
# Schema: NoSQL databases are schema-less or have flexible schemas.




# The SQL commands are mainly categorized into five categories:
#
# DDL – Data Definition Language
# DQL – Data Query Language
# DML – Data Manipulation Language
# DCL – Data Control Language
# TCL – Transaction Control Language

# How To Create a Database

create database class01;

# How To Select a Database

use class01;

# How To Create a Table

create table students(
    id int,
    name varchar(100),
    age int
);

# How To Drop a Database?

drop database class01;

#  Data types in MYSQL

# 3 types of categories in datatype

# 1. String
# 2. Numeric
# 3. Date and Time

# String:
# VARCHAR: Variable-length string that can store up to 65,535 characters.
# CHAR: Fixed-length string that can store up to 255 characters.
# TEXT: Variable-length string that can store up to 65,535 characters.
# TINYTEXT: Variable-length string that can store up to 255 characters.
# BLOB: Binary Large Object that can store up to 65,535 bytes.
# MEDIUMBLOB: Binary Large Object that can store up to 16,777,215 bytes.
# LONGBLOB: Binary Large Object that can store up to 4,294,967,295 bytes.
# Numeric:
# TINYINT: 1-byte integer that can store values from -128 to 127.
# SMALLINT: 2-byte integer that can store values from -32768 to 32767.
# INT or INTEGER: 4-byte integer that can store values from -2147483648 to 2147483647.
# BIGINT: 8-byte integer that can store values from -9223372036854775808 to 9223372036854775807.
# FLOAT: Single-precision floating-point number.
# DOUBLE: Double-precision floating-point number.
# DECIMAL or NUMERIC: Exact-value number with a fixed precision.
# Date and Time:
# DATE: Stores a date value in the format 'YYYY-MM-DD'.
# TIME: Stores a time value in the format 'HH:MM:SS'.
# DATETIME: Stores both date and time values in the format 'YYYY-MM-DD HH:MM:SS'.
# TIMESTAMP: Stores both date and time values in the format 'YYYY-MM-DD HH:MM:SS' and allows for time zone support.
# YEAR: Stores a year value from -9999 to 9999.

# Constraints in MYSQL

# NOT NULL
# UNIQUE
# DEFAULT
# CHECK
# PRIMARY KEY
# FOREIGN KEY

create table students(
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(100) NOT NULL ,
    age int NOT NULL CHECK ( age > 15 )
);



