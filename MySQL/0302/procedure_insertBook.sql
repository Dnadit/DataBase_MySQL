use db0220;
delimiter //
create procedure insertBook(
	in myBookID INTEGER,
    in myBookName varchar(40),
    in myPublisher varchar(40),
    in myPrice integer)
begin
	insert into Book(bookid, bookname, publisher, price)
    values(myBookID, myBookName, myPublisher, myPrice);
end;
//
delimiter ;