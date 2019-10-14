@C:\app\scott\product\12.2.0\dbhome_1\rdbms\admin\proftab.sql

select table_name from user_tables where table_name like '%prof%';

select * from plsql_profiler_runs;
select * from PLSQL_PROFILER_DATA;
select * from PLSQL_PROFILER_UNITS;

create or replace procedure proc_c
as
lv_avg_sal number;
begin
for i in 1..50 loop
select avg(sal) into lv_avg_sal from emp;
end loop;
end;



