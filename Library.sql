--create database LibraryUNi

--use LibraryUni

--create table Books(	
--Id int primary key identity,
--FirstName nvarchar(20),
--Lastname nvarchar(20),
--IssueDate date,
--Writer nvarchar(20),
--Amount decimal,



--)


--select * from Books

--create table Readers(
--İd int primary key identity,
--FirstName nvarchar(20) not null,
--LastName nvarchar(20),
--PhoneNumber nvarchar(60),
--SerialId int unique not null,




--)



--select * from Readers


--create table Faculty(
--Id int primary key identity,
--FacultyName nvarchar(100)

--)


--select * from Faculty


--alter table Books
--add ReaderId int references Readers(SerialId)

select 

concat(

Books.Name, ' ', Books.Writer


) 'Book Info',

Readers.FirstName + ' ' + Readers.LastName + ' ' as 'Student Info ',
Readers.SerialId 'Ticket Number ',


Faculty.FacultyName 'Faculty Name '



from Books
--select * from Books
join Readers on Books.ReaderId = Readers.SerialId
join Faculty on Readers.FacultyId = Faculty.Id







--alter table Readers
--add FacultyId int references Faculty(Id) 

--select * from Readers