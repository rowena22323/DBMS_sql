SELECT * FROM member;

-- 1. �޿��� 14000���� 30000���̿� ���Ե��� �ʴ� ��� ������ �̸��� �޿� ǥ��
select name, sal from member where sal<14000 or sal>30000;

--2. ������ ���, �̸�, �޿�, 20%�λ�޿� ǥ��
select member_id, name, sal, (sal*1.2)"�λ�" from member;

--3. �� ������ �ٹ� �޼��� ǥ���Ͻʽÿ�. / 4. ����� �Ҽ��� ��°�ڸ����� �ݿø� �մϴ�.
select name, round(MONTHS_BETWEEN(SYSDATE,hire),2) from member;

--5. �� ������ �̸�, �޿��� ǥ���ϴ� ���ǹ�. �޿��� 10�ڸ� ���̿� ���ʿ� #ǥ�ð�ä������ ����.
select name, lpad(sal,10,'#') from member;

--6. �� ������ ���, �̸�, �Ի��ϰ� �Ի��� �Ŀ� 10���� ����� ��¥�� ǥ�� ('yyyy-mm-dd')
select member_id, name, hire,to_char(add_months(hire,10),'YYYY-MM-DD') from member;

--7.member���̺��� ����� �̸�, ����, �Ի��ϰ� �Ի��� ������ ǥ���ϵ�, �������� ó������
select name, to_char(hire,'day') from member order by to_char(hire-1,'d');

--8. ��� ������ �̸�, ����, ������ ��� ǥ��(A ~ E)
select name, jikwi, decode(jikwi,'����','A','����','B','����','C','�븮','D','���','E') "���" from member;

--9. �� �������� �̸��� ������ ��� (sal*12+bonus)
select name, (sal*12+nvl(bonus,0)) "salary" from member;

--10. 2004�⿡ �Ի��� ������ ����� �̸��� ǥ��
select member_id, name from member where to_char(hire,'yyyy')='2004';

--11. �����ڰ� ���� ������ �̸��� ����
select name, jikwi from member where mgr is null;

--12. ���ʽ��� ���� ������ �̸��� �޿�, ���ʽ��� �������� �������� ����
select name, sal from member where bonus is not null order by bonus DESC;