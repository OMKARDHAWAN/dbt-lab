drop procedure if exists pro1;
delimiter $
create procedure pro1()
BEGIN
   select 'hello world' R1;
end $
delimiter;  