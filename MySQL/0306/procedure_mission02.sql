use db0221;
delimiter //
CREATE PROCEDURE `통계` (out student int, out professor int, out class int)
BEGIN	
	select count(*) into student from 학생;
    select count(*) into professor from 교수;
    select count(*) into class from 과목;
END;
//
delimiter ;