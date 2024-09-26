# Class 6: Joining Tables
# Introduction to joins
# INNER JOIN
# LEFT JOIN
# RIGHT JOIN
# CROSS JOIN

create database class06;
use class06;

create table  cities(
    id int primary key auto_increment,
    name varchar(100) not null
);

create table students(
    id int primary key auto_increment,
    name varchar(100) not null,
    age int not null,
    city_id int not null,
    foreign key(city_id) references  cities(id)
);

insert into cities(name) values
('Karachi'),
('Lahore'),
('Islamabad'),
('Rawalpindi'),
('Faisalabad'),
('Multan'),
('Peshawar'),
('Quetta'),
('Gujranwala'),
('Sialkot'),
('Hyderabad'),
('Sargodha'),
('Bahawalpur');

insert into students(name, age, city_id) values
('Ayesha Khan', 14, 1),
('Ahmed Ali', 15, 2),
('Sara Iqbal', 13, 3),
('Bilal Hussain', 16, 4),
('Zara Malik', 14, 5),
('Hassan Sheikh', 15, 6),
('Fatima Abbas', 13, 7),
('Usman Javed', 14, 8),
('Nida Riaz', 15, 9),
('Omar Tariq', 13, 10),
('Maria Zafar', 16, 11),
('Arif Butt', 14, 12),
('Kiran Aziz', 15, 13);

select * from students;

select * from cities;

# INNER JOIN

select * from students inner join cities on students.city_id = cities.id;

-- select students.name, students.age, cities.name from students
-- inner join cities
-- on students.city_id = cities.id;

# LEFT JOIN

select students.name, students.age, cities.name from students
left join cities
on students.city_id = cities.id;

# RIGHT JOIN

select students.name, students.age, cities.name from students
right join cities
on students.city_id = cities.id;

# CROSS JOIN

select students.name, students.age, cities.name from students
cross join cities;

