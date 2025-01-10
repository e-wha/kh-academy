create table table_check(
    login_id varchar(20) constraint tblck_loginid_pk primary key,
    login_pwd varchar(20) constraint tblck_loginpwd_ck check (length(login_pwd) > 3),
    tel varchar(20)
);

desc table_check;

select owner, constraint_name, constraint_type, table_name, r_owner, r_constraint_name
from user_constraints
where table_name in ('TABLE_CHECK');

insert into table_check values('id01', 'pwd01', '010-1234-5678');
insert into table_check values('id02', '02', '010-1234-5678');

select * from table_check;

create table table_default(
    login_id varchar2(20) constraint tblck2_loginid_pk primary key,
    login_pwd varchar2(20) default '1234',
    tel varchar2(20)
);

desc table_default;

select owner, constraint_name, constraint_type, table_name, r_owner, r_constraint_name
from user_constraints
where table_name in ('TABLE_DEFAULT');

insert into table_default(login_id, tel) values('id01', '010-1234-5678');
insert into table_default values('id02', '010-1234-5678');

select * from table_default;

drop table emp;
drop table dept;

create table dept(
deptno number(2) primary key,
dname varchar2(20) not null,
loc varchar2(20));

create table emp(
empno number(4) primary key,
ename varchar2(10) not null,
job varchar2(20) not null,
mgr number(4),
hiredate date,
sal number(8),
comm number(8),
deptno number(2),
CONSTRAINT fk_deptno FOREIGN KEY (deptno) REFERENCES dept(deptno));

insert into dept values(10, 'ACCOUNTING', 'NEW YORK');
insert into dept values(20, 'RESEARCH', 'DALLAS');
insert into dept values(30, 'SALES', 'CHICAGO');
insert into dept values(40, 'OPERATING', 'BOSTON');

insert into emp values(7369, 'SMITH', 'CLERK', 7902, '1980/12/17', 800, null, 20);
insert into emp values(7499, 'ALLEN', 'SALESMAN', 7698, '1981/02/20', 1600, 300, 30);
insert into emp values(7521, 'WARD', 'SALESMAN', 7698, '1981/02/22', 1250, 500, 30);
insert into emp values(7566, 'JONES', 'MANAGER', 7839, '1981/04/02', 2975, null, 20);
insert into emp values(7654, 'MARTIN', 'SALESMAN', 7698, '1981/09/28', 1250, 1400, 30);
insert into emp values(7698, 'BLAKE', 'MANAGER', 7839, '1981/05/01', 2850, null, 30);
insert into emp values(7788, 'SCOTT', 'ANALYST', 7566, '1987/04/19', 3000, null, 20);
insert into emp values(7839, 'KING', 'PRESIDENT', null, '1981/11/17', 5000, null, 10);
insert into emp values(7844, 'TURNER', 'SALESMAN', 7698, '1981/09/08', 1500, 0, 30);
insert into emp values(7876, 'ADAMS', 'CLERK', 7788, '1987/05/23', 1100, null, 20);
insert into emp values(7900, 'JAMES', 'CLERK', 7698, '1981/12/03', 950, null, 30);
insert into emp values(7902, 'FORD', 'ANALYST', 7566, '1981/12/03', 3000, null, 20);
insert into emp values(7934, 'MILLER', 'CLERK', 7782, '1982/01/23', 1300, null, 10);
insert into emp values(7782, 'CLARK', 'MANAGER', 7839, '1981/06/09', 2450, null, 10);

commit;


alter
table emp
disable constraint fk_deptno;

delete 
from dept
where deptno = 10;

select * from dept;


-- Q1
create table dept_const(
    deptno number(2) constraint deptconst_dept_pk primary key,
    dname varchar2(14) constraint deptconst_dname_unq unique,
    loc varchar2(14) constraint deptconst_loc_nn not null
);

create table emp_const(
    empno number(4) constraint empconst_empno_pk primary key,
    ename varchar2(10) constraint empconst_ename_nn not null,
    job varchar2(9),
    tel varchar2(20) constraint empconst_tel_unq unique,
    hiredate date,
    sal number(7,2) constraint empconst_sal_chk check (sal >= 1000 and sal <= 9999),
    comm number(7,2),
    deptno number(2) constraint empconst_deptno_fk references dept_const(deptno)
);

select table_name, constraint_name, constraint_type, r_owner, r_constraint_name, owner
from user_constraints
where table_name in ('EMP_CONST', 'DEPT_CONST') order by table_name, constraint_name;