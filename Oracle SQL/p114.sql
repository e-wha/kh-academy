select empno, ename, comm
from emp
where comm = null;

select empno, ename, comm
from emp
where comm is null;

select empno, ename, comm
from emp
where comm is not null;

select *
from emp;

select empno, ename, sal, hiredate
from emp
where hiredate between '81/01/01' and '81/12/31';

select empno, ename
from emp
where ename like '%A%';

select empno, ename
from emp
where ename like '__A%';

select empno, ename, comm
from emp
where comm is not null;

select empno, ename, sal
from emp
order by sal desc;

select empno, ename, hiredate
from emp
order by hiredate asc;

select empno, ename, sal
from emp
order by sal desc, ename asc;

select *
from emp
where upper(ename) = upper('scott');

select *
from emp
where upper(ename) like upper('%scott%');

select ename, length(ename)
from emp;

select length('koream'), length('대한민국')
from dual;

select lengthb('koream'), lengthb('대한민국')
from dual;

select *
from emp
where length(job) >= 6;

select ename, substr(ename, 1)
from emp;

select ename, substr(ename, -1)
from emp;

select 'hello, oracle!', instr('hello, oracle!', 'r') as instr_1번
from dual;

select '010-1234-5678' as replase변환, replace('010-1234-5678', '-'), replace('010-1234-5678', '-', '#')
from dual;

