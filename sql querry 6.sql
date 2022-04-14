create database op
use op
create table db(id int identity,name varchar(20),age int,salary int)
insert into db(name,age,salary)values
('ashu',21,120000),
('mayank',22,130000),
('pratu',23,140000),
('vinshu',24,150000),
('sita',25,160000)
select*from db
update db set age=26 where id=1
select*from db where age=24
select count(distinct name) from db
distinct  from db
delete  from db where id= 1
create proc inser_data
@name varchar (20),
@age int ,
@salary int 
as 
begin
insert into db(name,age,salary)values
(@name,@age,@salary)
end
inser_data 'Lavi',55,1200
create proc show_data
as begin
select * from db
end
show_data
create proc delet_data
@id int 
as
begin
delete from db where id=@id
end
delet_data 10
alter proc update_data
@id int,
@name varchar (20),
@age int,
@salary int
as begin
update db set name = @name , age = @age , salary = @salary where @id =id
end
update_data @id = 11,@name = 'papi',@age = 21,@salary = 1224
show_datas