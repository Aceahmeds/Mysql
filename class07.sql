# Class 7: Subqueries and Advanced Queries
# Introduction to subqueries
# Single-row and multi-row subqueries
# Correlated subqueries

create database class07;
use class07;

# create table students(
#     id int primary key auto_increment,
#     name varchar(100) not null,
#     age int not null
# );
#
# insert into students(name, age) values
# ('Ahmed', 22),
# ('Talha', 22),
# ('Sabir', 22),
# ('Siddiq', 22),
# ('Samiullah', 22),
# ('Naila', 22),
# ('Hammad', 22),
# ('Shumaila', 22),
# ('Waqas', 22),
# ('Anum', 22),
# ('Sohail', 22),
# ('Uzma', 22),
# ('Asad', 22),
# ('Lubna', 22),
# ('Yasir', 22),
# ('Shehzad', 22),
# ('Saba', 22),
# ('Fahad', 22),
# ('Rimsha', 22),
# ('Waqar', 22),
# ('Naveed', 22),
# ('Hina', 22),
# ('Jawad', 22),
# ('Shaista', 22),
# ('Zainab', 22);
#
# select * from students;
#
# select * from students where age=(select max(age) from students);
#
# select * from students where age=(select min(age) from students);


# 2nd Example

create table courses(
    id int primary key auto_increment,
    name varchar(100) not null
);

insert into courses(name) values
('C++'),
('Java'),
('Python'),
('JavaScript'),
('PHP'),
('C#'),
('Ruby');

create table students(
    id int primary key auto_increment,
    name varchar(100) not null,
    age int not null,
    course_id int not null,
    foreign key(course_id) references courses(id)
);

insert into students(name, age, course_id) values
('Ahmed', 22, 1),
('Talha', 22, 2),
('Sabir', 22, 2),
('Siddiq', 22, 4),
('Samiullah', 22, 5),
('Naila', 22, 1),
('Hammad', 22, 3),
('Shumaila', 22, 5),
('Waqas', 22, 1),
('Anum', 22, 2),
('Sohail', 22, 4),
('Uzma', 22, 3),
('Asad', 22, 5),
('Lubna', 22, 1),
('Yasir', 22, 2),
('Shehzad', 22, 3),
('Saba', 22, 4),
('Fahad', 22, 5),
('Rimsha', 22, 1),
('Waqar', 22, 2),
('Naveed', 22, 3),
('Hina', 22, 4),
('Jawad', 22, 5),
('Shaista', 22, 1),
('Zainab', 22, 2);

select * from students where age=(select max(age) from students);

select * from students where course_id=(select id from courses where name='Java');

# Correlated subqueries
# what is correlated subquery
# correlated subquery is a subquery that is related to the outer query

# Example:

select * from students where age=(select max(age) from students);
