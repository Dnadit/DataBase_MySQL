use db0221;
delimiter //
create procedure `새학과`(
in my학과번호 char(2),
in my학과명 char(20),
in my전화번호 char(20))
begin
insert into 학과(학과번호, 학과명, 전화번호) values (my학과번호, my학과명, my전화번호);	
end
//
delimiter ;
