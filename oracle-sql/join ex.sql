select * from member; --����Ű : dept_id
select * from dept;

select * from dept,member; --īƼ�� �� ���� �߻�!
--join ���� ���
select dept.dept_name, member.name from dept, member where dept.dept_id = member.dept_id;
select t.dept_name, s.name from member s, dept t where s.dept_id = t.dept_id; --��Ī���
--ANSI join
select t.dept_name, s.name from member s inner join dept t on s.dept_id = t.dept_id;

--outer join : ���� ���̺��� �����Ͱ� �ְ� �ٸ��� ���̺��� ���°��, �����Ͱ� �ִ� �� ���̺��� ������ ���� ���
select * from dept s, member t where s.dept_id = t.dept_id; --���� �� �ȳ��´�... ������ �Ϸ���?
-- outer join �������̺� ���� ����� �ٸ�
select s.dept_name, t.name from dept s left outer join member t on s.dept_id = t.dept_id;
select s.dept_name, t.name from dept s right outer join member t on s.dept_id = t.dept_id;

-- �μ��� �ѹ����� ����� �̸�
select s.dept_name, t.name from dept s, member t where s.dept_id = t.dept_id and s.dept_name = '�ѹ���';
-- self join : ���ϴ� �����Ͱ� �ϳ��� ���̺� �� ������� ���? recursive�ϰ� self join~
select s.name, t.name from member s,member t where s.member_id = t.mgr;
--self join�� left outerjoin�� �����ϴ�.








