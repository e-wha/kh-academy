set serveroutput on;

-- DECLARE (생략)

begin
    dbms_output.put_line('Hello, PL/SQL!');
end;
/

-- p421
set serveroutput on; -- 화면에 출력이 표시되는 설정

declare
v_empno number(4) := 7788;
v_ename varchar2(10);
begin
v_ename := 'SCOTT';
dbms_output.put_line('v_empno:' || v_empno);
dbms_output.put_line('v_ename:' || v_ename);
end;
/

-- p425
set serveroutput on;

declare
v_empno number(4) default 7788;
begin
v_empno := 1111;
dbms_output.put_line('v_empno:' || v_empno);
end;
/

-- p426
set serveroutput on;

declare
v_empno number(4) not null:= 7788;
begin
v_empno := 1111;
dbms_output.put_line('v_empno:' || v_empno);
end;
/

-- rownum
select rownum, deptno
from dept;


set serveroutput on;

declare 
    v_dept_row dept%rowtype;
begin
    select * into v_dept_row
    from dept
    where deptno = 40;
    dbms_output.put_line('deptno:' || v_dept_row.deptno);
    dbms_output.put_line('dname:' || v_dept_row.dname);
    dbms_output.put_line('loc:' || v_dept_row.loc);
end;
/


-- p432

set serveroutput on;

declare 
v_number number := 13;
begin
    if mod(v_number, 2) = 1 then
        dbms_output.put_line('v_number는 ' || v_number || '입니다.');
    else
        dbms_output.put_line('v_number는 ' || v_number || '입니다.');

    end if;

end;
/


-- p436
set serveroutput on;

declare 
    v_score number := 87;
begin
    case trunc(v_score / 10)
        when 10 then dbms_output.put_line('A 학점');
        when 9 then dbms_output.put_line('A 학점');
        when 8 then dbms_output.put_line('B 학점');
        when 7 then dbms_output.put_line('C 학점');
        when 6 then dbms_output.put_line('D 학점');
        else  dbms_output.put_line('F 학점');
    end case;
end;
/


-- p439
set serveroutput on;

declare
    v_num number := 0;
begin
    loop
        dbms_output.put_line('v_num:' || v_num);
        v_num := v_num + 1;
        if v_num > 4 then
            exit;
        end if;
    end loop;
end;
/

-- p441
set serveroutput on;

begin
    for i in 0..4 loop
        dbms_output.put_line('i: ' || i);
    end loop;
end;
/

-- Q1
set serveroutput on;

begin
    for i in 1..10 loop
        if mod(i, 2) = 1 then
            dbms_output.put_line('현재 i의 값 : ' || i);
        end if;
    end loop;
end;
/

-- Q2
set serveroutput on;

declare
    v_dept_dname dept.dname%type;
    v_dept_no dept.deptno%type := 20;
begin
    if v_dept_no in (10, 20, 30, 40) then
        select dname into v_dept_dname
        from dept
        where deptno = v_dept_no;
        dbms_output.put_line('DNAME : ' || v_dept_dname);
    else
        dbms_output.put_line('DNAME : N/A');
    end if;
end;
/