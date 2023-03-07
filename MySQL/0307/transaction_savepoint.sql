use db0220;
start transaction;
savepoint A;
delete from book1;
savepoint B;
delete from book2;
rollback to savepoint B;
commit;

select * from book1;
select * from book2;