-- Q1
desc dept;
desc emp;
desc salgrade;


-- Q2
select upper(ename) from emp;
select lower(ename) from emp;
select initcap(ename) from emp;


-- Q3
select round(avg(sal)) as avg_sal
from emp e join dept d on (e.deptno = d.deptno)
group by e.deptno
having avg(sal) >= 2000;


-- Q4
select empno, ename, job, mgr, hiredate, sal, comm, deptno
from emp
where sal in (
    select max(sal) as max_sal
    from emp e join dept d on(e.deptno = d.deptno)
    group by e.deptno
) order by sal;


select e.deptno, max(sal)
from emp e join dept d on(e.deptno = d.deptno)
group by e.deptno;


-- Q5
create table deptseq
as 
select * from dept
where 1 = 0;

create sequence seq_dept_sequence
    start with 1
    increment by 1
    maxvalue 99
    minvalue 1
    nocycle
    nocache;

insert into deptseq values(seq_dept_sequence.nextval, 'DATABASE', 'SEOUL');
insert into deptseq values(seq_dept_sequence.nextval, 'WEB', 'BUSAN');
insert into deptseq values(seq_dept_sequence.nextval, 'MOBILE', 'ILSAN');

select * from deptseq;