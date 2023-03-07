use db0307;
create table account(
accNum char(10) primary key,
amount int not null default 0);
/*
delimiter //
create trigger amountZero
before update on account
for each row
begin	
	if new.amount<0 then update account set amount=old.amount;    
    end if;
end //
delimiter ;
drop trigger amountZero;
*/

delimiter //
create trigger amountZeroSqlState
before update on account
for each row
begin	
	if (new.amount < 0) then
		signal sqlstate '45000';
	end if;
end //
delimiter ;

delimiter //
create procedure `account_transaction` (
in sender char(15),
in recip char(15),
in pamount int)
begin
	declare exit handler for sqlexception rollback;
    start transaction;
    update account
    set amount=amount-pamount
    where accNum=sender;
    update account
    set amount=amount+pamount
    where accNum=recip;
    commit;
end // 
delimiter ;


call account_transaction('B', 'A', 40000);
select * from account;

delete from account;
insert into account values('A', 45000);
insert into account values('B', 100000);

start transaction;
update account set amount=amount-40000 where accNum='A';
update account set amount=amount+40000 where accNum='B';
rollback;

