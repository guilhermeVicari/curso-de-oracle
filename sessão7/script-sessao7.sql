-- utilizando a cláusula where

select employee_id, last_name, job_id, department_id
from employees
where department_id = 60;

-- utilizando a cláusula where porém com condicionamento de string, é case sensitive

select employee_id, last_name, job_id, department_id
from employees
where last_name = 'King';

-- utilizando a cláusula where com date em formato string

select employee_id, last_name, job_id, department_id
from employees
where hire_date = '30/01/04';

-- utilizando operador de comparação >=

select employee_id, last_name, job_id, department_id
from employees
where salary >= 1000;

-- utilizando operado de comparação BETWEEN

select employee_id, last_name, job_id, department_id
from employees
where salary BETWEEN 1000 and 15000;

-- utilizando operado de comparação in

select employee_id, last_name, job_id, department_id
from employees
where job_id IN('IT_PROG', 'FI_ACCOUNT', 'SA_REP');

-- utilizando operado de comparação like com %

select employee_id, first_name, job_id, department_id
from employees
where first_name like 'Sa%';

-- utilizando operado de comparação like com _

select employee_id, first_name, job_id, department_id
from employees
where first_name like '_a%';

-- utilizando operado de comparação null de maneira ERRADA

select employee_id, first_name, job_id, department_id
from employees
where manager_id = NULL;

-- utilizando operado de comparação null de maneira CORRETA

select employee_id, first_name, job_id, department_id
from employees
where manager_id IS NULL;

-- utilizando operador lógico AND

select employee_id, first_name, job_id, department_id
from employees
where salary > 5000 
and job_id = 'IT_PROG';

-- utilizando operador lógico OR

select employee_id, first_name, job_id, department_id
from employees
where salary > 5000 
or job_id = 'IT_PROG';

-- utilizando operador lógico NOT

select employee_id, first_name, job_id, department_id
from employees
where job_id NOT IN('IT_PROG', 'FI_ACCOUNT') ;

-- utilizando operador de ordenação ORDER BY (por padrão é ascendente (ASC))

select employee_id, first_name, job_id, department_id
from employees
Order by employee_id;

-- utilizando operador de ordenação ORDER BY agora por ordem descendente(DESC)

select employee_id, first_name, job_id, department_id
from employees
Order by employee_id desc;


