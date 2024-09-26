# Class 08:
# UNION
# UNION ALL
# if
# case

create database class08;
use class08;

create table students(
     id int primary key auto_increment,
    name varchar(100) not null,
    age int not null
);

create table lecturer(
     id int primary key auto_increment,
    name varchar(100) not null,
    age int not null
);

insert into students(id, name, age) VALUES (1,'Ahmed',22),(2,'Talha',22),(3,'Siddiq',22);
insert into lecturer(id, name, age) VALUES (1,'Ahmed',22),(2,'Ali',22),(3,'Moid',22);

select * from students
union
select * from lecturer;

select * from students
union all
select * from lecturer;

# if


create table students2(
    id int primary key auto_increment,
    name varchar(100) not null,
    percentage int not null
);

select *,
if(percentage<40, 'Fail','Pass') as result
from students2;


# case

select
case
when percentage>=80 and percentage<=100 then 'Excellent'
when percentage>=60 and percentage<80 then 'Good'
when percentage>=40 and percentage<60 then 'Fair'
when percentage>=20 and percentage<40 then 'Poor'
    else 'Fail'
end as Grade
from students2;

