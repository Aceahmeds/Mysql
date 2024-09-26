# Class 3: Basic Data Manipulation Language (DML)
# Inserting data: INSERT INTO
# Updating data: UPDATE
# Deleting data: DELETE

create database class03;
use class03;

create table students(
    id int,
    name varchar(100),
    age int
);

# How To insert Data in the Table

insert into students(id, name, age) VALUES (1,'Ahmed',22);

# How To insert Multiple Data in the Table

insert into students(id, name, age) VALUES (1,'Talha',22),(2,'Sabir',22),(3,'Siddiq',22);

# How To Update Data in the Table

update students
set age=24 where name='Siddiq';

# How To Delete Data in the Table

delete
from students
where id=1;
