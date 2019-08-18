--create database Cars
 use Cars
--create table CarProperties(
--Id int primary key identity,
--ProductionYear datetime not null check(GETDATE() >= ProductionYear),
--EngineType nvarchar(20) not null,
--EnginePower  float,
--GearBox nvarchar(20),
--Color nvarchar(20),
--Milage decimal,

--)



	


--alter table CarProperties 
--add ModelId int references CarModels(Id)


--create table CarModels (

-- Id int primary key identity,
-- ModelNames nvarchar(20) not null,

--)

--select * from CarModels

--alter table CarModels 
--add MarkaId int references CarMarks(Id)


--create table CarMarks (
--Id int primary key identity,
--MarkaNames nvarchar(20)

--)

--select * from CarMarks		









select 


 CONCAT(CarProperties.EngineType, ' ', CarProperties.EnginePower, ' '	)  'Main Info about car'	,
 CarModels.ModelNames,
 CarMarks.MarkaNames



from CarProperties

join CarModels on CarProperties.ModelId = CarModels.Id

join CarMarks on CarModels.MarkaId = CarMarks.Id
