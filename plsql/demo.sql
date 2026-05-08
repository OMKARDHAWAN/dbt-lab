-- drop procedure if exists pro1;
-- delimiter $
-- create procedure pro1()
-- BEGIN 
--  decl are deptno int;
--  declare deptname, loc , pwd, startedon varchar(20);
--  declare c1 cursor for select * from dept;
--  declare exit handler for not found select 'all data fetch!!!';
--  open c1;

--   lbl : loop
--    fetch c1 into deptno,deptname,loc,pwd,startedon;
--    select deptno,deptname,loc,pwd,startedon;
--   end LOOP;
 
--  close c1;



-- END $ 
-- delimiter ;

-- write a trigger to save old value of marks when marks changes;
