-- Q1

ALTER SESSION SET "_ORACLE_SCRIPT" = true;

create user prev_hw
identified by orcl;

grant create session to prev_hw;

-- Q2
grant select on emp to prev_hw;
grant select on dept to prev_hw;
grant select on salgrade to prev_hw;

-- Q3
revoke select on salgrade from prev_hw;