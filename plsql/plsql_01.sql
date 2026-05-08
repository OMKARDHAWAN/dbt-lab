
drop procedure if exists  pro1;
delimiter $
create procedure pro1()
BEGIN
   declare x int;
   declare y int default 20;
   
   set x := 10;
 
   select x + y;
end $
delimiter ;