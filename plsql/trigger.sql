drop trigger if exists t1;
delimiter $
create trigger t1 before insert on studentdata for each row
begin 
  set new.divison := 'A';
end $ 
delimiter ;

