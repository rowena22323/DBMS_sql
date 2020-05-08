select hire from member;
select substr(hire,1,2),
       substr(hire,4,2),
       substr(hire,7,2) from member;

select replace(hire,'00','99')from member;

select round(987.654,2) "ROUND1", --987.65
       round(987.654,0) "ROUND2", --988
       round(987.654,-1) "ROUND3" FROM dual; --990

select trunc(987.654,2) "trunc1", --987.65
       trunc(987.654,0) "trunc2", --987
       trunc(987.654,-1) "trunc3" FROM dual; --980
       
select mod(121,10) "MOD", --1
       ceil(123.45) "CEIL",--124
       FLOOR(123.45) "FLOOR" from dual;--123
    
select power(2,3) from dual;

select sysdate from dual; 
select substr(sysdate,1,2) from dual;
select to_char(sysdate, 'yy-mm-dd') from dual;

select MONTHS_BETWEEN(SYSDATE,'20/04/07')from dual;

select add_months(sysdate,10)from dual;

select 2 + to_number('2') from dual;
 -- invalid number : select 2 + to_number('A') from dual;
 
 select * from member where to_char(hire,'yyyy')>2000;
 
 select * from member;

select nvl(bonus,0) from member;