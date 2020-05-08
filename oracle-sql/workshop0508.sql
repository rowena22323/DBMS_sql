select * from member;
--1. 모든 직원의 급여총액, 급여평균, 최고급여, 최소급여
select sum(sal), avg(sal), max(sal), min(sal) from member;
--2. 직위가 동일한 직원의 수
select jikwi, count(member_id) from member group by jikwi;
--3. 직원들 중에서 관리자의 수
select count(distinct mgr) from member; -- 매니저 요소에서부터 중복 제거한 수를 카운트
--4. 총 직원 수를 구하고 2000, 2001, 2002, 2003년에 입사한 직원 수 어려웡.....
select to_char(hire,'yyyy'), count(hire) from member group by to_char(hire,'yyyy');

select count(*) from member;
select decode(to_char(hire,'yyyy'),2000,1) from member;

select count(*), count(decode(to_char(hire,'yyyy'),2000,1)), count(decode(to_char(hire,'yyyy'),2001,1)),
count(decode(to_char(hire,'yyyy'),2002,1)),count(decode(to_char(hire,'yyyy'),2003,1))from member;

--5. 지급된 보너스의 평균값 (보너스가 없는 경우는 0으로 적용)
select avg(nvl(bonus,0)) from member;
--6. 최고 급여가 10000원이 넘는 부서번호와 평균급여
select dept_id,avg(sal)  from member group by dept_id having (max(sal)>10000);
