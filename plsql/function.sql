

DROP FUNCTION IF EXISTS f1;
delimiter $
CREATE FUNCTION f1() RETURNS VARCHAR(40)
deterministic
begin
declare x, y, z VARCHAR(40) default "";
declare cnt INT default 1;
lbl:loop
SELECT CAST(CHAR(FLOOR(65 + RAND() * 27)) as CHAR) INTO y;
SELECT CAST(CHAR(FLOOR( 97 + RAND() * 27)) as CHAR) INTO z;
SET x := CONCAT(x, y, z);
if cnt > 2 then
leave lbl;
end if;
SET cnt := cnt + 1;
end loop lbl;
return(x);
end $
delimiter ;