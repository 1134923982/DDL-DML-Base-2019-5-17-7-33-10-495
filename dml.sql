-- 插入记录  
insert into student (id,name,age,sex) values ('003','王五',19,'男');

-- 修改记录  

SET SQL_SAFE_UPDATES = 0;
update student set age=21 where name='王五';

--  删除记录  
delete from student where id='003';

-- 查询记录  
select id,name,age,sex from student;