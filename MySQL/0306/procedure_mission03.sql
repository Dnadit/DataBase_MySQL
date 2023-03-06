use db0221;
delimiter //
create procedure `과목수강자수` (in p과목번호 char(6), out 수 int)
begin
	select count(distinct 과목번호) into 수 from 수강신청내역 where 과목번호=p과목번호;
end;
//
delimiter ;