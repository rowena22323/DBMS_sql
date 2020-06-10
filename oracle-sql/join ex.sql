select * from member; --참조키 : dept_id
select * from dept;

select * from dept,member; --카티션 곱 현상 발생!
--join 조건 기술
select dept.dept_name, member.name from dept, member where dept.dept_id = member.dept_id;
select t.dept_name, s.name from member s, dept t where s.dept_id = t.dept_id; --별칭사용
--ANSI join
select t.dept_name, s.name from member s inner join dept t on s.dept_id = t.dept_id;

--outer join : 한쪽 테이블에는 데이터가 있고 다른쪽 테이블에는 없는경우, 데이터가 있는 쪽 테이블의 내용을 전부 출력
select * from dept s, member t where s.dept_id = t.dept_id; --없는 건 안나온다... 나오게 하려면?
-- outer join 기준테이블에 따라 결과가 다름
select s.dept_name, t.name from dept s left outer join member t on s.dept_id = t.dept_id;
select s.dept_name, t.name from dept s right outer join member t on s.dept_id = t.dept_id;

-- 부서가 총무부인 사원의 이름
select s.dept_name, t.name from dept s, member t where s.dept_id = t.dept_id and s.dept_name = '총무부';
-- self join : 원하는 데이터가 하나의 테이블에 다 들어있을 경우? recursive하게 self join~
select s.name, t.name from member s,member t where s.member_id = t.mgr;
--self join도 left outerjoin이 가능하다.








