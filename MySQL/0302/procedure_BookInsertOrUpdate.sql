use db0220;
delimiter //
create procedure BookInsertOrUpdate(
	myBookID integer,
    myBookName varchar(40),
    myPublisher varchar(40),
    myPrice int)
begin
	declare mycount integer;
    select count(*) into mycount from Book where bookname like myBookName;
    if mycount!=0 then
		set sql_safe_updates=0; -- delete, update 연산에 필요한 설정 문
		update Book set price = myprice
		where bookname like mybookname;
    else
		insert into Book(bookid, bookname, publisher, price)
        values(mybookid, mybookname, mypublisher, myprice);
	end if;
end;
//
delimiter ;