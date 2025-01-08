desc dept;
desc emp;

create table t_emp
as select * from emp;

desc t_emp;
select * from t_emp;

create table t_dept
as select * from dept;

select * from tabs;

insert into t_dept(deptno, dname, loc) values (111111, 'test', 'test');
insert into t_dept(deptno, dname, loc) values (222222, 'test', 'test');
insert into t_dept(deptno, dname, loc) values (null, 'test', 'test');
insert into t_dept(deptno, dname, loc) values (null, null, 'test');
insert into t_dept(deptno, dname, loc) values (null, null, null);
select * from t_dept;

select * from t_dept
where dname is null;

insert into t_emp(empno, ename, job, mgr, hiredate, sal, comm, deptno) values(9999, '홍길동', 'PRESIDENT', NULL, '2001/01/01', 5000, 1000, 10);
select * from t_emp;

create table emp1
as select * from emp
where 1=0;

insert into emp1(empno, ename, job, mgr, hiredate, sal, comm, deptno)
select e.empno, e.ename, e.job, e.mgr, e.hiredate, e.sal, e.comm, e.deptno
from emp e, salgrade s
where e.sal between s.losal and s.hisal and s.grade = 1;

insert into emp1(empno, ename, job, mgr, hiredate, sal, comm, deptno)
select e.empno, e.ename, e.job, e.mgr, e.hiredate, e.sal, e.comm, e.deptno
from emp e, salgrade s
where e.sal between s.losal and s.hisal and s.grade = 2;

select * from empdep;


create table dept1
as select * from dept
where 1=0;

select * from dept1;
insert into dept1 values(10, 'ACCOUNTING', 'NEW YORK');
insert into dept1 values(20, 'RESEARCH', 'DALLAS');
insert into dept1 values(30, 'SALES', 'CHICAGO');
insert into dept1 values(40, 'OPERATIONS', 'BOSTON');

update dept1
set deptno = 50
where dname = 'RESEARCH';

select * from dept1;