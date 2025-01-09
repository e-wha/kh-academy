select * from tabs;

desc user_tables;

select table_name
from user_tables;

desc all_tables;

select owner, table_name
from all_tables;

select * from tabs;
select * from emp2;

create index idx_emp_sal
on emp2(sal);

select * from user_ind_columns;

drop index idx_emp_sal;

select * from tabs;
select * from emp2;

create view vw_emp20
as (
    select empno, ename, job, deptno
    from emp2
    where deptno = 20
);

select * from vw_emp20;

select * from emp2;

delete
from vw_emp20
where empno = 7788;

select * from emp;

drop view vw_emp20;

select rownum, empno
from emp;

select rownum, empno, sal
from emp
order by sal desc;

select rownum, e.*
from (
    select *
    from emp e
    order by sal desc) e;
    
with e as (select * from emp order by sal desc)
select rownum, e.*
from e;

select rownum, e.*
from (
    select *
    from emp e
    order by sal desc) e
where rownum <= 3;

create table dept_sequence
as
select * from dept
where 1 = 0;

select * from dept_sequence;

create sequence seq_dept
increment by 10
start with 10
maxvalue 90
minvalue 0
cycle
cache 2;

select *
from user_sequences;

select * from tabs;

insert into dept_sequence(deptno, dname, loc) values(seq_dept.nextval, 'DATABASE', 'SEOUL');
select * from dept_sequence;

alter sequence seq_dept
increment by 1
maxvalue 9
nocycle;

drop sequence seq_dept;

-- Q1
create table empidx
as
select * from emp
where 1 <> 1;

select * from empidx;

create index idx_empidx_empno
on empidx(empno);

select * from user_ind_columns;

-- Q2

select * from emp;

insert into empidx (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
select * from emp;

select * from empidx;

create or replace view empidx_over15k
as
select empno, ename, job, deptno, sal, comm
from empidx
where sal > 1500;

select * from empidx_over15k;

-- Q3
create table deptsql
as
select * from dept;

select * from deptsql;

create sequence seq_dept
increment by 1
start with 1
maxvalue 99
minvalue 1
nocycle
nocache;

insert into deptsql values (seq_dept.nextval, 'DATABASE', 'SEOUL');
insert into deptsql values (seq_dept.nextval, 'WEB', 'BUSAN');
insert into deptsql values (seq_dept.nextval, 'MOBILE', 'ILSAN');

select * from deptsql;
