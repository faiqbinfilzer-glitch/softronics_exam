create table students_table(
	ID int primary key,
	Name varchar(50),
	Department varchar(20),
	City varchar(20),
	Marks float,
	Fees int,
	Status varchar(20))
insert into students_table(
ID,Name,Department,City,Marks,Fees,Status)
values
(1,'Arun','Computer Sci.','Kozhikode',85.5,45000,'Active'),
(2,'Meera','Data Science','Kochi',92,50000,'Active'),
(3,'Rahul','Commerce','Kannur',72.5,30000,'Active'),
(4,'Anjali','Mathematics','Thrissur',88,35000,'Active'),
(5,'Nikhil','Computer Sci.','Kochi',67,45000,'Active'),
(6,'Priya','Data Science','Kozhikode',96.5,50000,'Active'),
(7,'Akhil','Commerce','Palakkad',55,30000,'Inactive'),
(8,'Sneha','Computer Sci.','Kannur',81,45000,'Active'),
(9,'Vishnu','Data Science','Thrissur',78.5,50000,'Active'),
(10,'Divya','Mathematics','Kochi',91,35000,'Active'),
(11,'Kiran','Computer Sci.','Kozhikode',64,45000,'Inactive'),
(12,'Lakshmi','Data Science','Kannur',89.5,50000,'Active')

select * from students_table

create table Departments_table(
	Department varchar(50),
	HOD_Name varchar(50),
	Building varchar(20))
insert into Departments_table
values
('Computer Science','Suresh Kumar','Block A'),
('Data Science','Anitha Nair','Block B'),
('Commerce','Rahul Menon','Block C'),
('Mathematics','Priya Das','Block D'),
('Mechanical','Arun Raj','Block E'),
('Electronics','Meera Thommas','Block F')

--1A
select Name,Department,City,Marks from students_table;

--1B
select Name,Marks from students_table
where Marks between 70 and 90;

--1C
select * from students_table
where Status='Active' and Department in ('Data Science','Computer Sci.')

--1D
select * from students_table
where Name like 'A%';

--1E
select top(5) * from students_table
order by Marks desc

--2A
select count(*) as total_students from students_table

--2B
select Department,avg(Marks) as average_marks from students_table
group by Department

--2C
select Department,count(Department) as Number_Of_Students from students_table
group by Department

--2D
select Department,avg(Marks) as average_marks from students_table
group by Department
having avg(Marks)>80;

--2E
select max(Marks) as maximum,min(Marks) as minimum from students_table

--3A
select 
	s.Name,
	s.Department,
	d.HOD_Name,
	d.Building from students_table s
	inner join Departments_table d
	on s.Department =d.Department;

--3B
select Department from students_table
union
select Department from Departments_table

--3C
select Department from students_table
union all
select Department from Departments_table