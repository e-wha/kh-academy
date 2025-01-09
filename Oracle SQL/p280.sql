select * from tabs;

create table dept1
as select * from dept;

select * from dept1;

update dept1
set loc = 'BUSAN'
where deptno = 30;

update dept1
set (dname, loc) = (
    select dname, loc
    from dept
    where deptno = 30
);

update dept1
set loc = 'SEOUL'
where deptno = (
    select deptno
    from dept1
    where dname = 'SALES'
);

rollback;

delete
from dept1;

create table emp1
as 
select * from emp;

select * from emp1;

delete
from emp1
where empno in (
    select e.empno
    from emp1 e, salgrade s
    where e.sal between s.losal and s.hisal and s.grade = 3 and deptno = 30
);


create table chap10hw_emp 
as
select * from emp;

create table chap10hw_dept 
as
select * from dept;

create table chap10hw_salgrade 
as
select * from salgrade;


-- Q1
insert into chap10hw_dept values (50, 'ORACLE', 'BUSAN');
insert into chap10hw_dept values (60, 'SQL', 'ILSAN');
insert into chap10hw_dept values (70, 'SELECT', 'INCHEON');
insert into chap10hw_dept values (80, 'DML', 'BUNDANG');
select * from chap10hw_dept;

-- Q2
insert into chap10hw_emp  values (7201, 'TEST_USER1', 'MANAGER', 7788, '2016-01-02', 4500, null, 50);
insert into chap10hw_emp  values (7202, 'TEST_USER2', 'CLERK', 7201, '2016-02-21', 1800, null, 50);
insert into chap10hw_emp  values (7203, 'TEST_USER3', 'ANALYST', 7201, '2016-04-11', 3400, null, 60);
insert into chap10hw_emp  values (7204, 'TEST_USER4', 'SALESMAN', 7201, '2016-05-31', 2700, 300, 60);
insert into chap10hw_emp  values (7205, 'TEST_USER5', 'CLERK', 7201, '2016-07-20', 2600, null, 70);
insert into chap10hw_emp  values (7206, 'TEST_USER6', 'CLERK', 7201, '2016-09-08', 2600, null, 70);
insert into chap10hw_emp  values (7207, 'TEST_USER7', 'LECTURER', 7201, '2016-10-28', 2300, null, 80);
insert into chap10hw_emp  values (7208, 'TEST_USER8', 'STUDENT', 7201, '2016-03-09', 1200, null, 80);
select * from chap10hw_emp;

-- Q3
update chap10hw_emp 
set deptno = 70
where sal > (
    select avg(sal)
    from chap10hw_emp
    where deptno = 50
);

select * from chap10hw_emp
order by deptno;

ROLLBACK;

-- Q4
update chap10hw_emp
set deptno = 80,
    sal = sal * 1.1
where deptno != 60 and hiredate > any(
    select min(hiredate)
    from chap10hw_emp
    where deptno = 60
);

select * from chap10hw_emp
order by deptno;

-- Q5
delete chap10hw_emp
where empno in (
    select empno
    from chap10hw_emp, salgrade
    where sal between losal and hisal and grade = 5
);

select * 
from chap10hw_emp, salgrade
where sal between losal and hisal
order by grade;