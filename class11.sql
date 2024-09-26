# Class 11: Stored Procedures and Triggers
# Creating stored procedures
# Creating stored functions
# Introduction to triggers


create database class11;
use class11;

create table students(
    id int primary key auto_increment,
    s_name varchar(100) not null,
    s_age int not null
);
# STORED PROCEDURES
# Stored procedures are reusable SQL statements that can be called from other SQL statements.

# How to create a stored procedure in MySQL?

delimiter //
create procedure getStudents()
begin
    select * from students;
end //
delimiter ;


# How to use stored procedures in MySQL?

call getStudents();

delimiter //
create procedure addStudents(
    name varchar(100),
    age int
)
begin
    insert into students(s_name, s_age) values (name, age);
end //
delimiter ;


call addStudents('Ahmed', 22);

# TRIGGERS
# Triggers are used to automate the execution of SQL statements.

delimiter //
create trigger after_insert_trigger
    before update
    on students
    for each row
begin
    select 'Updating students table';
    select old.s_name, old.s_age, new.s_name, new.s_age;
    end //
delimiter ;


# create table students(
#     id int primary key auto_increment,
#     name varchar(100) not null ,
#     age int not null ,
#     enrollmentDate DATE,
#     gender varchar(10) not null
# );

# INSERT INTO students (name, age, enrollmentDate, gender)
# VALUES ('Ali Khan', 25, '2022-01-01', 'Male'),
#        ('Fatima Ahmed', 30, '2021-12-31', 'Female'),
#        ('Ahmed Raza', 28, '2022-02-15', 'Male'),
#        ('Ayesha Malik', 23, '2022-03-01', 'Female'),
#        ('Bilal Qureshi', 35, '2021-04-10', 'Male'),
#        ('Sana Khan', 27, '2021-05-20', 'Female'),
#        ('Saad Ali', 29, '2021-06-15', 'Male'),
#        ('Hira Shahid', 22, '2021-07-01', 'Female'),
#        ('Usman Aslam', 32, '2021-08-10', 'Male'),
#        ('Sadia Iqbal', 26, '2021-09-20', 'Female'),
#        ('Hamza Khan', 24, '2021-10-15', 'Male'),
#        ('Aisha Rehman', 21, '2021-11-01', 'Female'),
#        ('Zain Ali', 37, '2021-12-10', 'Male'),
#        ('Anam Khan', 30, '2021-12-31', 'Female');
#
# select * from students;
#
# delimiter //
# create trigger myTrigger
#     before insert
#     on students
#     for each row
# begin
#     if NEW.gender = 'Male' then set new.name=concat('Mr. ', NEW.name);
#     else set new.name=concat('Ms. ', new.name);
#     end if;
# end //
# delimiter ;