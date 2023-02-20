-- read by using join
select name
from customer, orders ,book
where customer.custid = orders.custid and orders.bookid = book.bookid and book.publisher = '대한미디어';
-- read by using subquery
select name
from customer
where custid in (select custid 
					from orders 
					where bookid in(select bookid 
									from book 
									where publisher='대한미디어'));