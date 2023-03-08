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
## 정규화
+ 중복과 이상현상을 막기위해 정규화를 하여야 한다.
+ 제1정규형 : 릴레이션의 모든 속성값이 원자값.
+ 제2정규형 : 속성들이 기본키에 완전함수종속.
+ 제3정규형 : 속성들이 기본키에 비이행적(non-transitive)으로 종속.
## 데이터베이스 설계
1. 요구사항 분석
2. 개념적 설계(ERD 설계) : 개체,속성,관계 파악
3. 논리적 설계 : 릴레이션 스키마를 설계
    1. 모든 개체를 릴레이션으로 변환.
    2. n:m 관계는 릴레이션으로 변환.
    3. 1:1, 1:n 관계는 왜래키로 표현.
    4. 다중값 속성은 릴레이션으로 변환.
## 참고사이트
https://www.programiz.com/sql
