--create database News
--use News


--create table News(

--Id int primary key identity,
--NewsHead nvarchar(50) not null unique ,
--NewsContext nvarchar(250) not null,
--NewsImage image,
--PostedDate	date,



--)

select 

concat(
News.NewsHead, '--- ' , News.PostedDate) 'News Info ',
NewsWriter.PosterName 'Who posted new? ',
Comments.Comments 'Comments ',
Comments.CommentDate 'When comment is written?',
CONCAT(Comments.WhichPost, '  ',  'nomreli posta ', CommentWriter.CmtName, ' ', 'trefinden komment atildi') ' Comment info'



from News

 join NewsWriter on  News.PosterId = NewsWriter.Id
 join Comments on News.Id = Comments.WhichPost
 join CommentWriter on Comments.CmtId = CommentWriter.Id



--alter table News  
--add PosterId int references NewsWriter(Id)




--create table Comments(

--Id int primary key identity,
--Comments text,
--CommentContext nvarchar(500),
--CommentDate date


--)

--select * from Comments
--join CommentWriter on  Comments.CmtId = CommentWriter.Id


--alter table Comments 
--add CmtId int references CommentWriter(Id)


--alter table Comments 
--add WhichPost int references News(Id)





--create table NewsWriter(

--Id int primary key identity,
--PosterName nvarchar(50)

--)


--create table CommentWriter
--(

--Id int primary key identity,
--CmtName nvarchar (50)

--)