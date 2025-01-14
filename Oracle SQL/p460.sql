desc dept;

set serveroutput on;

declare
    v_dept_row dept%rowtype;
begin
    select * into v_dept_row
    from dept
    where deptno = 40;
    dbms_output.put_line('DEPTNO : ' || v_dept_row.deptno || ', DNAME : ' || v_dept_row.dname || ', LOC : ' || v_dept_row.loc);
end;
/

-- p462
set serveroutput on;

declare
    v_dept_row dept%rowtype;
    cursor c1 is
        select *
        from dept
        where deptno = 40;
begin
    open c1;
    fetch c1 into v_dept_row;
    dbms_output.put_line('DEPTNO : ' || v_dept_row.deptno || ', DNAME : ' || v_dept_row.dname || ', LOC : ' || v_dept_row.loc);
    close c1;
end;
/

-- p463
set serveroutput on;

declare
    v_dept_row dept%rowtype;
    cursor c1 is
        select * from dept;
begin
    open c1;
    loop
        fetch c1 into v_dept_row;
        exit when c1%notfound;
        dbms_output.put_line('DEPTNO : ' || v_dept_row.deptno || ', DNAME : ' || v_dept_row.dname || ', LOC : ' || v_dept_row.loc);
    end loop;
    close c1;
end;
/

-- p465
set serveroutput on;

declare
    v_dept_row dept%rowtype;
    cursor c1 is
        select * from dept;
begin
    for c1_rec in c1 loop
        dbms_output.put_line('DEPTNO : ' || c1_rec.deptno || ', DNAME : ' || c1_rec.dname || ', LOC : ' || c1_rec.loc);
    end loop;
end;
/

-- p467
set serveroutput on;

declare 
    v_dept_row dept%rowtype;
    cursor c1(p_deptno dept.deptno%type) is
        select deptno, dname, loc
        from dept
        where deptno = p_deptno;
begin
    open c1(10);
    loop
        fetch c1 into v_dept_row;
        exit when c1%notfound;
        dbms_output.put_line('DEPTNO : ' || v_dept_row.deptno || ', DNAME : ' || v_dept_row.dname || ', LOC : ' || v_dept_row.loc);
    end loop;
    close c1;
end;
/

-- p468
set serveroutput on;

declare 
    v_deptno dept.deptno%type;
    cursor c1(p_deptno dept.deptno%type) is
        select deptno, dname, loc
        from dept
        where deptno = p_deptno;
begin
    v_deptno := &input_deptno;
    for c1_rec in c1(v_deptno) loop
        dbms_output.put_line('DEPTNO : ' || c1_rec.deptno || ', DNAME : ' || c1_rec.dname || ', LOC : ' || c1_rec.loc);
    end loop;
end;
/

-- p469
set serveroutput on;
select * from tabs;
select * from dept;
select * from dept_record;

declare

begin
    update dept_record
    set deptno = 50;
    
    dbms_output.put_line('갱신된 행의 수 : ' || sql%rowcount);
    
    if(sql%found) then
        dbms_output.put_line('갱신된 행의 수 : true');
    else
        dbms_output.put_line('갱신된 행의 수 : false');
    end if;
    
    if(sql%isopen) then
        dbms_output.put_line('커서 open 여부 : true');
    else
        dbms_output.put_line('커서 open 여부 : false');
    end if;
end;
/

-- p471
set serveroutput on;

declare
    v_wrong number;
begin
    select dname into v_wrong
    from dept
    where deptno = 10;
    dbms_output.put_line('예외가 발생하면 이 문장을 보이지 않습니다.');
exception
    when value_error then
        dbms_output.put_line('예외처리 : 수치 또는 값 오류 발생');
    when too_many_rows then
        dbms_output.put_line('예외처리 : 요구보다 많은 행 추출 오류 발생');
    when others then
        dbms_output.put_line('예외처리 : 사전 정의 외 오류 발생');
end;
/

-- Q1
set serveroutput on;

declare
    v_emp_row emp%rowtype;
    cursor c1 is
        select * from emp;
begin
    open c1;
    loop
        fetch c1 into v_emp_row;
        exit when c1%notfound;
        dbms_output.put_line('EMPNO : ' || v_emp_row.empno || ', ENAME : ' || v_emp_row.ename || ', JOB : ' || v_emp_row.job
        || ', SAL : ' || v_emp_row.sal || ', DEPTNO : ' || v_emp_row.deptno);
    end loop;
    close c1;
end;
/

-- Q2
set serveroutput on;
select * from emp;

declare 
    v_wrong date;
begin
    select ename into v_wrong
    from emp
    where empno = 7369;
    dbms_output.put_line('예외가 발생하면 다음 문장은 실행되지 않습니다.');
exception
    when others then
        dbms_output.put_line('오류가 발생하였습니다. [' || TO_CHAR(SYSDATE, 'YYYY"년 "MM"월 "DD"일 "HH24"시 "MI"분 "SS"초"') || ']');
        dbms_output.put_line('SQLCODE : ' || to_char(sqlcode));
        dbms_output.put_line('SQLERRM : ' || SQLERRM);
end;
/