-- **数据库级别：**  
--  显示所有数据库  
show databases;

--  进入某个数据库  
use student_examination_sys;

--  创建一个数据库  
create database student;

--  创建指定字符集的数据库  
create database test2 character set utf8;

--  显示数据库的创建信息   
show create database test2;

--  修改数据库的编码  
alter database student character set utf8;

--  删除一个数据库  
drop database test2; 
-- **表级别**
--  修改表名
rename table student to new_student;

--  修改字段的数据类型
alter table new_student modify id varchar(20);

--  修改字段名
alter table new_student change name new_name varchar(35);

--  添加字段
alter table new_student add address varchar(100);

--  删除字段
alter table new_student drop address;

--  修改表的存储引擎
alter table new_student engine=MEMORY;

--  删除表的外键约束
alter table new_student add constraint name_fk foreign key (new_name) references subject(id);
alter table new_student drop foreign key name_fk;

--  删除一张表
drop table new_student;
