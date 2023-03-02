delimiter //
use db0221;
create procedure 새학과(
	my학과번호 char(2),
    my학과명 char(20),
    my전화번호 char(20)
    )
begin
	declare mycount integer;
    select count(*) into mycount from 학과 where 학과번호 == my학과번호;
    if mycount=0 then
		insert into 학과(학과번호, 학과명, 전화번호)
		values (my학과번호, my학과명, my전화번호);
	else 
		
end
//
delimiter ;