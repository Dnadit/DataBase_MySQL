-- 테이블의 색인 정보를 확인
SHOW INDEX FROM dept_emp;

-- 테이블과 관련된 정보를 조회
SHOW TABLE STATUS LIKE 'dept_emp';
-- 'Index_legth' 열은 기본키를 제외한 색인을 저장하는 페이지 수에 페이지 크기를 곱한 결과로 바이트 수이다.

-- 'dept_emp' 테이블에 설정된 색인을 삭제.
-- 외래키 설정과 'dept_emp' 열에 설정된 색인만 삭제.
ALTER TABLE dept_emp DROP foreign key dept_emp_ibfk_1;
ALTER TABLE dept_emp DROP foreign key dept_emp_ibfk_2;
drop index dept_no on dept_emp;

analyze table `dept_emp`;
SHOW INDEX FROM dept_emp;

alter table `dept_emp` drop primary key;

select * from dept_emp order by emp_no asc limit 1;
select * from dept_emp order by emp_no desc limit 1;

-- 첫 번째 행과 마지막 행의 실행 계획이 결과 ? Full Scan
select count(*) from dept_emp;
explain select * from dept_emp where emp_no = 10001;
explain select * from dept_emp where emp_no = 499999;

-- index를 넣으면 조회 효율성이 좋아짐.
alter table dept_emp add primary key (emp_no,dept_no);
explain select * from dept_emp where emp_no = 10001;
explain select * from dept_emp where emp_no = 499999;

-- 색인(index)을 이용하여 데이터를 조회하면 조회하려는 데이터만 읽고 비교하여 결과를 반환하기 때문에 데이터를 조회하는 시간이 최소화된다.

select count(*) from dept_emp where dept_no = 'd006';
explain select * from dept_emp where dept_no = 'd006';

create index dept_emp on dept_emp(dept_no);
explain select * from dept_emp where dept_no = 'd006';

-- 하나의 테이블에 많은 색인을 생성하면 INSERT, UPDATE, DELETE 하는 시간이 많이 소요된다.

select * from dept_emp where dept_no = 'd006' and from_date = ' 1996-11-24';
explain select * from dept_emp where dept_no = 'd006' and from_date = ' 1996-11-24';

create index from_date on dept_emp(from_date);
select * from dept_emp where dept_no = 'd006' and from_date = ' 1996-11-24';
explain select * from dept_emp where dept_no = 'd006' and from_date = ' 1996-11-24';

alter table `dept_emp` drop primary key;
alter table `dept_emp` drop index `dept_emp`;
alter table `dept_emp` drop index `from_date`;
analyze table dept_emp;

ALTER TABLE dept_emp DROP foreign key dept_emp_ibfk_1;
ALTER TABLE dept_emp DROP foreign key dept_emp_ibfk_2;
drop index dept_no on dept_emp;

explain select a.emp_no, b.first_name, b.last_name
from dept_emp a inner join employees b
on a.emp_no = b.emp_no;

explain select a.emp_no, b.first_name, b.last_name
from dept_emp a inner join employees b
on a.emp_no = b.emp_no
where a.emp_no = 10001;

alter table employees add primary key (`emp_no`);
alter table dept_emp add primary key (`emp_no`, `dept_no`);
