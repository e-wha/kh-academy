set serveroutput on;

declare
    type rec_dept is record(
        deptno number(2) not null := 99,
        dname dept.dname%type,
        loc dept.loc%type
    );
    
    dept_rec rec_dept;
begin
    dept_rec.deptno := 99;
    dept_rec.dname := 'DATABASE';
    dept_rec.loc := 'SEOUL';
    dbms_output.put_line('DEPTNO : ' || dept_rec.deptno);
    dbms_output.put_line('DNAME : ' || dept_rec.dname);
    dbms_output.put_line('LOC : ' || dept_rec.loc);
    
    insert into dept_record
    values dept_rec;
end;
/

ALTER SESSION SET "_ORACLE_SCRIPT"=true;

create table dept_record
as
select * from dept
where 0=1;

desc dept_record;
select *from dept_record;

declare
    type rec_dept is record(
        deptno number(2) not null := 99,
        dname dept.dname%type,
        loc dept.loc%type
    );
    
    dept_rec rec_dept;
begin
    dept_rec.deptno := 50;
    dept_rec.dname := 'DB';
    dept_rec.loc := 'SEOUL';
    dbms_output.put_line('DEPTNO : ' || dept_rec.deptno);
    dbms_output.put_line('DNAME : ' || dept_rec.dname);
    dbms_output.put_line('LOC : ' || dept_rec.loc);
    
    update dept_record
    set row = dept_rec
    where deptno = 99;
end;
/

select *from dept_record;


-- p450
set serveroutput on;

declare 
    type rec_dept is record(
    deptno dept.deptno%type,
    dname dept.dname%type,
    loc dept.loc%type
    );
    type rec_emp is record(
    empno emp.empno%type,
    ename emp.ename%type,
    dinfo rec_dept
    );
    emp_rec rec_emp;
    
begin
    select e.empno, e.ename, d.deptno, d.dname, d.loc 
    into emp_rec.empno, emp_rec.ename, emp_rec.dinfo.deptno, emp_rec.dinfo.dname, emp_rec.dinfo.loc
    from emp e, dept d
    where e.deptno = d.deptno and e.empno = 7788;
        dbms_output.put_line('empno : ' || emp_rec.empno);
        dbms_output.put_line('ename : ' || emp_rec.ename);
end;
/

select * from tabs;
select * from emp;
select * from dept_record;


-- p453
set serveroutput on;

declare
    type itab_dept is table of dept%rowtype index by pls_integer;
    
    dept_arr itab_dept;
    idx pls_integer := 0;
begin
    for i in (select deptno, dname from dept) loop
        idx := idx + 1;
        dept_arr(idx).deptno := i.deptno;
        dept_arr(idx).dname := i.dname;
    
        dbms_output.put_line(dept_arr(idx).deptno || ' : ' || dept_arr(idx).dname);
    end loop;
end;
/

-- Q1
set serveroutput on;

create table emp_record
as
select * from emp
where 0 = 1;

desc emp_record;

declare 
    type emp_record is record(
        empno emp.empno%type,
        ename emp.ename%type,
        job emp.job%type,
        mgr emp.mgr%type,
        hiredate emp.hiredate%type,
        sal emp.sal%type,
        comm emp.comm%type,
        deptno emp.deptno%type
    );
    rec_emp emp_record;
begin
    rec_emp.empno := 1111;
    rec_emp.ename := 'TEST_USER';
    rec_emp.job := 'TEST_JOB';
    rec_emp.mgr := '';
    rec_emp.hiredate := '18/03/01';
    rec_emp.sal := 3000;
    rec_emp.comm := '';
    rec_emp.deptno := 40;
    
    insert into emp_record
    values rec_emp;
end;
/

select * from emp_record;


-- Q2
set serveroutput on;

declare
    type itab_emp is table of emp%rowtype index by pls_integer;
    
    emp_arr itab_emp;
    idx pls_integer := 0;
    
begin
    for i in (select * from emp) loop
        idx := idx + 1;
        emp_arr(idx).empno := i.empno;
        emp_arr(idx).ename := i.ename;
        emp_arr(idx).job := i.job;
        emp_arr(idx).mgr := i.mgr;
        emp_arr(idx).hiredate := i.hiredate;
        emp_arr(idx).sal := i.sal;
        emp_arr(idx).comm := i.comm;
        emp_arr(idx).deptno := i.deptno;
        dbms_output.put_line
            (emp_arr(idx).empno || ' : ' || emp_arr(idx).ename || ' : ' || emp_arr(idx).job || ' : ' || 
                emp_arr(idx).mgr || ' : ' || emp_arr(idx).hiredate || ' : ' || emp_arr(idx).sal || ' : ' || 
                    emp_arr(idx).comm || ' : ' || emp_arr(idx).deptno);
    end loop;
end;
/