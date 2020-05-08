-- DECODE()함수 : IF문을 오라클 SQL안으로 가져온 함수: A=B. 아주중요
select * from dept;
select dept_name,loc_id from dept;
select dept_name, decode(loc_id, 100, 'Seoul', 200, 'Incheon') as "location" from dept;

--CASE문 (CASE 표현식 내부에는 콤마가 사용되지 않는다) A>B CASE condition WHEN result THEN print ELSE print2 END
select dept_name, case loc_id when 100 then 'Incheon' when 200 then 'Seoul' end from dept;

--group 함수의 종류
select * from member;
select count(*), count(member_id) from member;
select max(sal), min(sal), sum(sal) from member;
select member_id, max(sal), min(sal), sum(sal) from member; --단일그룹의 그룹함수가 아닙니다. (오류)
select avg(nvl(bonus,0)) from member; -- 전체인원 대비 보너스 평균
select sum(bonus) / count(bonus) from member; --보너스를 받은사람들 중의 평균

--group by... (aggregation) + order by
select dept_id, count(*), avg(sal), max(sal), min(sal) from member group by dept_id;
select dept_id, jikwi, count(*) from member group by dept_id; -- (오류) jikwi는 groping 되지 않았습니다.
  -- select절에 사용된 그룹함수 이외의 컬럼이나 표현식은 반드시 group by절에 사용되어야 합니다.


