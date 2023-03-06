use db0221;
delimiter //
create procedure `새수강신청` (in p학번 char(7), out p수강신청번호 int)
begin
	set p수강신청번호 = p수강신청번호 + 1;	
	insert into 수강신청(수강신청번호, 학번, 날짜, 연도, 학기) values (p수강신청번호, p학번, current_timestamp(), '2023', '1');	
end;
//
delimiter ;