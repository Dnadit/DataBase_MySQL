use db0220;
-- 트랜잭션
commit;
rollback;

select @@autocommit;
set autocommit=1;

create table book1 (select * from book);
create table book2 (select * from book);

delete from book2;
select * from book1;
select * from book2;
rollback;
commit;

start transaction;
delete from book1;
delete from book2;
rollback;