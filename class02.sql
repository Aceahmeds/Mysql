# Class 2: Basic Data Definition Language (DDL)
# Creating tables: CREATE TABLE
# Altering tables: ALTER TABLE
# Dropping tables: DROP TABLE

create database class02;
use class02;

create table students(
    id int,
    name varchar(100),
    age int
);

# How to Drop a Table

drop table students;

# How to Truncate a Table

truncate table students;

################# How To Modify a table

    #  How To add a Column

    ALTER TABLE students ADD email VARCHAR(20);

#  How To Delete a Column

ALTER TABLE students DROP COLUMN email;

#  How To Change The Datatype of a Column

ALTER TABLE students MODIFY age VARCHAR(15);

#  How To Rename a Table

ALTER TABLE students RENAME TO Students;

# Add a primary key constraint to the id column in the students table.

ALTER TABLE students ADD PRIMARY KEY (id);

# Remove the primary key constraint from the students table.

ALTER TABLE students DROP PRIMARY KEY;


# ALTER TABLE Shipments ADD CONSTRAINT fk_customer FOREIGN KEY (CustomerID) REFERENCES Clients(CustomerID);
# ALTER TABLE Shipments DROP FOREIGN KEY fk_customer;
# ALTER TABLE Clients ADD CONSTRAINT unique_email UNIQUE (Email);
# ALTER TABLE Clients DROP INDEX unique_email;
# ALTER TABLE Clients ALTER COLUMN Country SET DEFAULT 'Unknown';
# ALTER TABLE Clients ALTER COLUMN Country DROP DEFAULT;
# ALTER TABLE Clients ADD INDEX idx_lastname (LastName);
# ALTER TABLE Clients DROP INDEX idx_lastname;



