drop procedure if exists deleteStudent;
delimiter $ 
create procedure deleteStudent(in stuid int)
BEGIN
  if (select  true from studentdata where rollno = stuid) then 
     delete from studentdata where rollno = stuid;
  else 
    select 'Student data not found ... ';
  end if;
END $ 
delimiter ;
