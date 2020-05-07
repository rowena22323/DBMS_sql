SELECT * FROM member;

-- 1. 급여가 14000에서 30000사이에 포함되지 않는 모든 직원의 이름과 급여 표시
select name, sal from member where sal<14000 or sal>30000;

--2. 직원의 사번, 이름, 급여, 20%인상급여 표시
select member_id, name, sal, (sal*1.2)"인상" from member;

--3. 각 직원의 근무 달수를 표시하십시오. / 4. 결과는 소수점 둘째자리에서 반올림 합니다.
select name, round(MONTHS_BETWEEN(SYSDATE,hire),2) from member;

--5. 각 직원의 이름, 급여를 표시하는 질의문. 급여는 10자리 길이에 왼쪽에 #표시가채워지는 형식.
select name, lpad(sal,10,'#') from member;

--6. 각 직원의 사번, 이름, 입사일과 입사한 후에 10달이 경과된 날짜를 표시 ('yyyy-mm-dd')
select member_id, name, hire,to_char(add_months(hire,10),'YYYY-MM-DD') from member;

--7.member테이블에서 사원의 이름, 직위, 입사일과 입사한 요일을 표시하되, 월요일이 처음으로
select name, to_char(hire,'day') from member order by to_char(hire-1,'d');

--8. 모든 직원의 이름, 직위, 직위별 등급 표시(A ~ E)
select name, jikwi, decode(jikwi,'사장','A','부장','B','과장','C','대리','D','사원','E') "등급" from member;

--9. 각 직원들의 이름과 연봉을 계산 (sal*12+bonus)
select name, (sal*12+nvl(bonus,0)) "salary" from member;

--10. 2004년에 입사한 직원의 사번과 이름을 표시
select member_id, name from member where to_char(hire,'yyyy')='2004';

--11. 관리자가 없는 직원의 이름과 직위
select name, jikwi from member where mgr is null;

--12. 보너스를 받은 직원의 이름과 급여, 보너스를 기준으로 내림차순 정렬
select name, sal from member where bonus is not null order by bonus DESC;
