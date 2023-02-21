# DataBase_MySQL
## 표현방법
    테이블명.컬럼명  

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
    + DELETE문
    
## 참고사이트
https://www.programiz.com/sql
