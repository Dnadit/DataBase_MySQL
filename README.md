# DataBase_MySQL
## 표현방법
테이블명.컬럼명  

## ERD(Entity Relationship Diagram)  
ERD를 그리고 Table 구축  
Reverse Engineer는 Table을 가지고 ERD를 그리는 것.   

## SELECT문
SELECT 속성이름  
(INTO)  
FROM table이름  
(WHERE) 검색조건  
(GROUP BY) 속성이름  
(HAVING)  검색조건
(ORDER BY) 속성이름 ASC/DESC 
    
## JOIN
+ 동등조인과 자연조인(Natural Join)  
    동등조인 : 중복속성(Col)이 들어옴.  
    자연조인 : 중복속성(Col)이 제거되어 들어옴.  
+ 조인  
    조인 (INNER JOIN)(default) : 기준 테이블과 조인 테이블 모두 데이터가 존재해야 조회됨  
    아우터 조인 (OUTER JOIN) : 기준 테이블에만 데이터가 존재하면 조회됨  
        
## 데이터 조작어 - 삽입, 수정, 삭제
+ INSERT문
+ UPDATE문  
    UPDATE 테이블이름  
    SET 속성이름1=값1  
    WHERE 검색조건;  
+ DELETE문
## 색인(Index)
+ 색인(index)을 이용하여 데이터를 조회하면 조회하려는 데이터만 읽고 비교하여 결과를 반환하기 때문에 데이터를 조회하는 시간이 최소화된다.
+ 하지만, 하나의 테이블에 많은 색인을 생성하면 INSERT, UPDATE, DELETE 하는 시간이 많이 소요된다.
+ 따라서, 조회를 많이하는 경우 색인을 생성하고 삽입, 수정, 삭제가 많이 일어나면 색인을 생성하지 않아야 한다.
## 참고사이트
https://www.programiz.com/sql
