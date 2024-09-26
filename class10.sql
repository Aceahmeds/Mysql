# Class 10: Views and Transactions
# Creating and using views
# Modifying data through views
# Transactions: COMMIT, ROLLBACK and SAVEPOINT

# WHAT IS A VIEW?
# A view is a virtual table based on the result-set of an SQL statement.

create database class10;
use class10;

create table courses(
    id int primary key auto_increment,
    name varchar(100) not null
);
create table cities(
    id int primary key auto_increment,
    name varchar(100) not null
);
create table genders(
    id int primary key auto_increment,
    name varchar(100) not null
);
create table students(
    id int primary key auto_increment,
    name varchar(100) not null,
    age int not null,
    course_id int not null,
    city_id int not null,
    gender_id int not null,
    foreign key(course_id) references courses(id),
    foreign key(city_id) references cities(id),
    foreign key(gender_id) references genders(id)
);

insert into courses(name) values
('C'),
('C++'),
('Java'),
('Python');

insert into cities(name) values
('Karachi'),
('Lahore'),
('Islamabad'),
('Rawalpindi'),
('Faisalabad'),
('Multan');

insert into genders(name) values
('Male'),
('Female');

insert into students(name, age, course_id, city_id, gender_id) values
('Ahmed', 22, 1, 1, 1),
('Talha', 22, 2, 2, 1),
('Siddiq', 22, 3, 3, 1),
('Ayesha', 22, 4, 4, 2),
('Fatima', 22, 1, 5, 2),
('Nida', 22, 2, 6, 2);

select * from students;

select students.id, students.name, students.age, students.course_id, students.city_id, students.gender_id, courses.name as course, cities.name as city, genders.name as gender from students inner join courses on students.course_id=courses.id
inner join cities on students.city_id=cities.id
inner join genders on students.gender_id=genders.id;

# CREATING A VIEW

create view studentsData
as
    select * from students inner join courses on students.course_id=courses.id
inner join cities on students.city_id=cities.id
inner join genders on students.gender_id=genders.id;


# USING A VIEW

select * from studentsData;


# MODIFYING VIEW

# 1.
alter view studentsData
as
     select students.id, students.name, students.age, students.course_id, students.city_id, students.gender_id, courses.name as course, cities.name as city, genders.name as gender from students inner join courses on students.course_id=courses.id
inner join cities on students.city_id=cities.id
inner join genders on students.gender_id=genders.id;
# 2.
create or replace view studentsData
as
     select students.id, students.name, students.age, students.course_id, students.city_id, students.gender_id, courses.name as course, cities.name as city, genders.name as gender from students inner join courses on students.course_id=courses.id
inner join cities on students.city_id=cities.id
inner join genders on students.gender_id=genders.id;

# DELETING A VIEW

drop view studentsData;

# RENAMING A VIEW

rename table studentsData to studentsInfo;


# TRANSACTIONS

# 1. COMMIT
# 2. ROLLBACK
# 3. SAVEPOINT

# COMMIT
# commit is used for permanently saved the changes made in the current transaction.
commit;
insert into students(name, age, course_id, city_id, gender_id) values
('Ahmed', 22, 1, 1, 1),
('Talha', 22, 2, 2, 1),
('Siddiq', 22, 3, 3, 1),
('Ayesha', 22, 4, 4, 2),
('Fatima', 22, 1, 5, 2),
('Nida', 22, 2, 6, 2);

# ROLLBACK
# rollback is used to undo the changes made in the current transaction.
rollback;


# SAVEPOINT
# savepoint is used to create a save point in the current transaction.
savepoint savepoint1;
insert into students(name, age, course_id, city_id, gender_id) values
('Ahmed', 22, 1, 1, 1);
savepoint savepoint2;
insert into students(name, age, course_id, city_id, gender_id) values
('Talha', 22, 2, 2, 1);
savepoint savepoint3;
insert into students(name, age, course_id, city_id, gender_id) values
('Siddiq', 22, 3, 3, 1);
savepoint savepoint4;
insert into students(name, age, course_id, city_id, gender_id) values
('Ayesha', 22, 4, 4, 2);
savepoint savepoint5;
insert into students(name, age, course_id, city_id, gender_id) values
('Fatima', 22, 1, 5, 2);
savepoint savepoint6;
insert into students(name, age, course_id, city_id, gender_id) values
('Nida', 22, 2, 6, 2);

rollback to savepoint5


