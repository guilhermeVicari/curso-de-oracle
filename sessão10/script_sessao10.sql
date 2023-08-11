-- utilizando as fun��es AVG e SUM
select AVG(salary), SUM(salary)
from employees;

-- utilizando as fun��es MIN e MAX
select min(hire_date), max(hire_date)
from employees;

select min(salary), max(salary)
from employees;

-- utilizando a fun��o count
select count(*)
from employees;

select count(commission_pct) 
from employees;

select count(distinct department_id)
from employees;

-- criando grupos utilizando a cl�usula group by
select  department_id, AVG(salary)
from employees
group by department_id
order by department_id;

-- utilizando a cl�usula group by com mais coluna ou express�o
select department_id, job_id, SUM(salary)
from employees
group by department_id, job_id
order by department_id, job_id;

--consultas incorretas utilizando fun��es de grupo
select department_id, avg(salary)
from employees;

-- corrigindo consultas incorretas utilizando fun��es de grupo
select department_id, avg(salary)
from employees
group by department_id;

--consultas incorretas utilizando fun��es de grupo
select department_id, max(salary)
from employees
where max(salary) > 10000
group by department_id;

-- corrigindo consultas incorretas utilizando fun��es de grupo
select department_id, max(salary)
from employees
group by department_id
having max(salary) > 10000;

select job_id, sum(salary) total
from employees
where job_id <> 'SA_REP'
group by job_id
having sum(salary) > 10000
order by sum(salary);

-- Aninhando fun�~eos de grupo
select max(avg(salary))
from employees
group by department_id

