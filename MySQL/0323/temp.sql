use pnusw34;
delimiter //
	create trigger afterDelete
    after delete on `user`
    for each row
    begin
        insert into deluser values (old.uid, old.uname, old.email, current_timestamp());
    end; //
delimiter ;

insert into user values('1', '강유현', 'afdas@gmail.com', current_timestamp());
select * from user;	
delete from user where uid = '1';
select * from deluser;
show triggers;
delete from deluser where deluid = '1';
call updateUser('1', '강길동', 'ghhh@naver.com');