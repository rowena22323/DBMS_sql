-- DECODE()�Լ� : IF���� ����Ŭ SQL������ ������ �Լ�: A=B. �����߿�
select * from dept;
select dept_name,loc_id from dept;
select dept_name, decode(loc_id, 100, 'Seoul', 200, 'Incheon') as "location" from dept;

--CASE�� (CASE ǥ���� ���ο��� �޸��� ������ �ʴ´�) A>B CASE condition WHEN result THEN print ELSE print2 END
select dept_name, case loc_id when 100 then 'Incheon' when 200 then 'Seoul' end from dept;

--group �Լ��� ����
select * from member;
select count(*), count(member_id) from member;
select max(sal), min(sal), sum(sal) from member;
select member_id, max(sal), min(sal), sum(sal) from member; --���ϱ׷��� �׷��Լ��� �ƴմϴ�. (����)
select avg(nvl(bonus,0)) from member; -- ��ü�ο� ��� ���ʽ� ���
select sum(bonus) / count(bonus) from member; --���ʽ��� ��������� ���� ���

--group by... (aggregation) + order by
select dept_id, count(*), avg(sal), max(sal), min(sal) from member group by dept_id;
select dept_id, jikwi, count(*) from member group by dept_id; -- (����) jikwi�� groping ���� �ʾҽ��ϴ�.
  -- select���� ���� �׷��Լ� �̿��� �÷��̳� ǥ������ �ݵ�� group by���� ���Ǿ�� �մϴ�.


