delimiter //
CREATE TRIGGER AfterInsertBook
AFTER INSERT ON Book FOR EACH ROW
BEGIN
DECLARE average INTEGER;
INSERT INTO Book_log
VALUES(new.bookid, new.bookname, new.publisher, new.price);
END;
//
delimiter ;