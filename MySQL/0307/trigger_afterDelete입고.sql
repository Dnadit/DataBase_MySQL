-- [입고] 테이블에서 삭제(취소)하면 [상품] 테이블에서 재고수량을 수정하는 트리거
use db0306;
delimiter //
create trigger afterDelete입고
after delete on 입고 for each row
begin	
    update 상품 set 재고수량 = 재고수량 - old.입고수량 where 상품코드 = old.상품코드;
end; 
// delimiter ;