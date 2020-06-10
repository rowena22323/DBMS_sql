select * from member;
--1. ��� ������ �޿��Ѿ�, �޿����, �ְ�޿�, �ּұ޿�
select sum(sal), avg(sal), max(sal), min(sal) from member;
--2. ������ ������ ������ ��
select jikwi, count(member_id) from member group by jikwi;
--3. ������ �߿��� �������� ��
select count(distinct mgr) from member; -- �Ŵ��� ��ҿ������� �ߺ� ������ ���� ī��Ʈ
--4. �� ���� ���� ���ϰ� 2000, 2001, 2002, 2003�⿡ �Ի��� ���� �� �����.....
select to_char(hire,'yyyy'), count(hire) from member group by to_char(hire,'yyyy');

select count(*) from member;
select decode(to_char(hire,'yyyy'),2000,1) from member;

select count(*), count(decode(to_char(hire,'yyyy'),2000,1)), count(decode(to_char(hire,'yyyy'),2001,1)),
count(decode(to_char(hire,'yyyy'),2002,1)),count(decode(to_char(hire,'yyyy'),2003,1))from member;

--5. ���޵� ���ʽ��� ��հ� (���ʽ��� ���� ���� 0���� ����)
select avg(nvl(bonus,0)) from member;

--6. �ְ� �޿��� 10000���� �Ѵ� �μ���ȣ�� ��ձ޿�
select dept_id,avg(sal)  from member group by dept_id having (max(sal)>10000);

--7. ������ �μ����� �ٹ��ϴ� ��� ������ �̸�, ����, �μ���ȣ, �μ��̸�
select m.name, m.jikwi, m.dept_id, d.dept_name from dept d, member m where m.dept_id=30 and d.dept_name='������';

--8. �����̸��� ���, ������ �̸��� ��� ǥ��
select m1.name, m1.member_id, m2.name, m2.member_id from member m1, member m2 where m1.mgr=m2.member_id;

--9. �����ڰ� �������� ���� ������ ���� ������ �̸�, ���, �������̸�, ��� ǥ��
select m1.name, m1.member_id, nvl(m2.name,'����'), decode(m2.member_id,null,'����',m2.member_id) from member m1 left outer join member m2 on m1.mgr=m2.member_id;

--10. �����ں��� ���� �Ի��� ��� ������ �̸�, �Ի���, �������̸�, �Ի��� ǥ��
select m1.name, m1.hire, m2.name, m2.hire from member m1, member m2 where m1.mgr=m2.member_id and m1.hire<m2.hire;

--11. ���ʽ��� �޴� ������ �̸�, �μ���ȣ, �μ��̸�
select m.name, m.dept_id, d.dept_name from member m, dept d where m.dept_id = d.dept_id and m.bonus is not null;