drop trigger if exists t1;
delimiter $
create trigger t1 after update on studentdata for each row
begin 
  insert into log_table(rollno,name,mark,division) value(old.rollno,old.sname,old.marks,old.divison);
end $ 
delimiter ;