create table emp4( no number(3,1),name varchar2(10) default 'no value'); --�Է��� ������ �⺻�� ����
select * from emp4;
insert into emp4(no,name) values(1,'test');
insert into emp4(no) values (2);

create table emp5( no number(3,1),name varchar2(10) not null); --null�� ��� ����
select * from emp5;
insert into emp5(no,name) values(1,'test');
insert into emp5(no) values (2);

create table emp7(no number (3,1),name varchar2 (10));
alter table emp7 add (location varchar2(30)); --location column �߰�
select * from emp7;

create table member2(UserId number(6),UserName varchar2(100));
alter table member2 add (address varchar2(300));
alter table member2 add (address2 varchar2(300) default 'Seoul');
alter table member2 rename column address2 to addr; --�÷� �̸�����
rename member2 to member3; --���̺� �̸�����
alter table member3 modify(addr varchar(3000));
alter table member3 drop column addr;
truncate table member3;
select * from member3;
drop table member3;

create table member4( emp_no number(3),emp_name varchar(30));
insert into member4 values (1,'�̼���');
insert into member4 values (2,'ȫ�浿');
insert into member4 values (3,'������');
select * from member4;
update member4 set emp_name='����'; --�÷� ��ü �� ���� ����
update member4 set emp_name='�̼���' where emp_no = 1; --update���� where������ ��� ����
update member4 set emp_name='ȫ�浿' where emp_no = 2;

create table dept2 as select * from dept;
select * from dept2;
--delete from dept2;
insert into dept2 select * from dept;
desc dept2;

select * from dept;
desc dept;
insert into dept values (60, '������',600);
update dept set dept_name = 'IT' where dept_id = 60; --�ݿ������ select�� Ȯ��
--subquery <-> Join �Դٰ���~~
select dept_id from dept where dept_name='�λ��';
select * from member where dept_id = (select dept_id from dept where dept_name='�λ��');
--join : �ٷ� ���� �Ȱ��� ����! sub query�� �������� �����! ���� ���� �ٸ��ٳ�~
select * from member, dept where member.dept_id = dept.dept_id and dept.dept_name='�λ��';

delete from dept where dept_id=60; --���ù����� delete ������...
select * from dept;