select comm, nvl(comm, 0), nvl2(comm, 'O', 'X')
from emp;

select empno, ename, job, sal
from emp;

select empno, ename, job, sal, decode(job, 'MANAGER', sal * 1.1, 'SALESMAN', sal * 1.05,
'ANALYIST', sal, sal * 1.03) as upsal
from emp;

select empno, ename, job, sal,
case job
when 'MANAGER' then sal * 1.1
when 'SALESMAN' then sal * 1.05
when 'ANALIST' then sal
ELSE sal * 1.03
end
from emp;

select empno, ename, comm,
case 
when comm is null then '해당사항없음'
when comm = 0 then '수당없음'
when comm > 0 then '수당: ' || comm
end as "인센티브"
from emp;