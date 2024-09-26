-- Class 4: Basic Queries
-- Retrieving data: SELECT
-- Filtering data: WHERE clause
-- Sorting data: ORDER BY

create database class04;
use class04;

CREATE TABLE Students (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    DOB DATE,
    City VARCHAR(50)
);

INSERT INTO Students (Name, Age, DOB, City) VALUES
('Ayesha Khan', 14, '2010-04-15', 'Karachi'),
('Ahmed Ali', 15, '2009-05-20', 'Lahore'),
('Sara Iqbal', 13, '2011-03-30', 'Islamabad'),
('Bilal Hussain', 16, '2008-06-12', 'Rawalpindi'),
('Zara Malik', 14, '2010-07-22', 'Faisalabad'),
('Hassan Sheikh', 15, '2009-01-18', 'Multan'),
('Fatima Abbas', 13, '2011-02-25', 'Peshawar'),
('Usman Javed', 14, '2010-03-14', 'Quetta'),
('Nida Riaz', 15, '2009-09-28', 'Gujranwala'),
('Omar Tariq', 13, '2011-10-10', 'Sialkot'),
('Maria Zafar', 16, '2008-11-05', 'Hyderabad'),
('Arif Butt', 14, '2010-12-19', 'Sargodha'),
('Kiran Aziz', 15, '2009-08-21', 'Bahawalpur'),
('Shahid Nawaz', 13, '2011-04-12', 'Sukkur'),
('Rabia Chaudhry', 14, '2010-05-16', 'Rahim Yar Khan'),
('Imran Aslam', 15, '2009-12-02', 'Sahiwal'),
('Farah Anwar', 13, '2011-06-08', 'Abbottabad'),
('Zeeshan Haider', 16, '2008-02-26', 'Jhelum'),
('Mehwish Farooq', 14, '2010-09-30', 'Gujrat'),
('Nabeel Akhtar', 15, '2009-11-14', 'Mardan'),
('Sadia Awan', 13, '2011-08-23', 'Kasur'),
('Tahir Gill', 14, '2010-07-19', 'Sheikhupura'),
('Rizwan Shah', 15, '2009-03-07', 'Mirpur Khas'),
('Yasmin Qureshi', 13, '2011-12-15', 'Mingora'),
('Adnan Yousuf', 16, '2008-04-10', 'Chiniot'),
('Samiullah Dar', 14, '2010-01-05', 'Okara'),
('Naila Khan', 15, '2009-05-18', 'Wah Cantonment'),
('Hammad Niaz', 13, '2011-09-22', 'Dera Ghazi Khan'),
('Shumaila Munir', 14, '2010-06-13', 'Nowshera'),
('Waqas Tariq', 15, '2009-02-20', 'Kamoke'),
('Anum Malik', 13, '2011-07-21', 'Khuzdar'),
('Sohail Siddiqui', 14, '2010-10-26', 'Mianwali'),
('Uzma Javed', 15, '2009-01-15', 'Jhang'),
('Asad Mehmood', 13, '2011-11-03', 'Dera Ismail Khan'),
('Lubna Qadir', 16, '2008-09-30', 'Chaman'),
('Yasir Azeem', 14, '2010-12-28', 'Muzaffargarh'),
('Shehzad Abbas', 15, '2009-03-19', 'Bhakkar'),
('Saba Tariq', 13, '2011-08-11', 'Zhob'),
('Fahad Khan', 14, '2010-07-25', 'Khairpur'),
('Rimsha Nadeem', 15, '2009-04-30', 'Khanewal'),
('Waqar Rana', 13, '2011-02-27', 'Charsadda'),
('Naveed Hameed', 16, '2008-05-14', 'Kot Addu'),
('Hina Nasir', 14, '2010-08-08', 'Hub'),
('Jawad Latif', 15, '2009-09-09', 'Tando Allahyar'),
('Shaista Qamar', 13, '2011-06-05', 'Larkana'),
('Adil Zahid', 14, '2010-03-21', 'Bannu'),
('Khalid Irfan', 15, '2009-10-18', 'Ghotki'),
('Sana Rasheed', 13, '2011-04-17', 'Kotri'),
('Zainab Shafiq', 16, '2008-11-27', 'Hafizabad'),
('Zeeshan Tariq', 14, '2010-01-22', 'Turbat');

-- How To Select Data

select ID, Name, Age, DOB, City from Students;

-- Filtering data using WHERE clause

select * from Students where Age=13;

select * from Students where Age=13 or Age=14;

select * from Students where Age=13 and Name='A';
select * from Students where not Age=13 ;

-- ORDER BY and distinct keyword

select * from Students order by DOB;

select distinct City from Students;


-- Limit and offset

select * from Students order by DOB limit 10,3;





