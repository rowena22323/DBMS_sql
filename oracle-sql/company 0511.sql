create table emp4( no number(3,1),name varchar2(10) default 'no value'); --입력이 없을때 기본값 지정
select * from emp4;
insert into emp4(no,name) values(1,'test');
insert into emp4(no) values (2);

create table emp5( no number(3,1),name varchar2(10) not null); --null값 허용 안함
select * from emp5;
insert into emp5(no,name) values(1,'test');
insert into emp5(no) values (2);

create table emp7(no number (3,1),name varchar2 (10));
alter table emp7 add (location varchar2(30)); --location column 추가
select * from emp7;

create table member2(UserId number(6),UserName varchar2(100));
alter table member2 add (address varchar2(300));
alter table member2 add (address2 varchar2(300) default 'Seoul');
alter table member2 rename column address2 to addr; --컬럼 이름변경
rename member2 to member3; --테이블 이름변경
alter table member3 modify(addr varchar(3000));
alter table member3 drop column addr;
truncate table member3;
select * from member3;
drop table member3;

create table member4( emp_no number(3),emp_name varchar(30));
insert into member4 values (1,'이순신');
insert into member4 values (2,'홍길동');
insert into member4 values (3,'강감찬');
select * from member4;
update member4 set emp_name='권율'; --컬럼 전체 행 내용 변경
update member4 set emp_name='이순신' where emp_no = 1; --update에는 where조건절 사용 가능
update member4 set emp_name='홍길동' where emp_no = 2;

create table dept2 as select * from dept;
select * from dept2;
--delete from dept2;
insert into dept2 select * from dept;
desc dept2;

select * from dept;
desc dept;
insert into dept values (60, '전산팀',600);
update dept set dept_name = 'IT' where dept_id = 60; --반영결과는 select로 확인
--subquery <-> Join 왔다갔다~~
select dept_id from dept where dept_name='인사부';
select * from member where dept_id = (select dept_id from dept where dept_name='인사부');
--join : 바로 위와 똑같은 문장! sub query와 차이점이 무어냐! 때에 따라 다르다네~
select * from member, dept where member.dept_id = dept.dept_id and dept.dept_name='인사부';

delete from dept where dept_id=60; --무시무시한 delete 하하하...
select * from dept;