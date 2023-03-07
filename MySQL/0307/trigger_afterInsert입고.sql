-- [입고] 테이블에 상품이 입고가 되면 [상품] 테이블에 상품의 재고수량이 수정되는 트리거
use db0306;
delimiter //
create trigger afterInsert입고
after insert on 입고 for each row
begin	
    update 상품 set 재고수량 = new.입고수량 + 재고수량 where 상품코드 = new.상품코드;
end; 
// delimiter ;