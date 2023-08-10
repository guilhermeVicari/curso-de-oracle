-- utilizando a cl�usula where

select employee_id, last_name, job_id, department_id
from employees
where department_id = 60;

-- utilizando a cl�usula where por�m com condicionamento de string, � case sensitive

select employee_id, last_name, job_id, department_id
from employees
where last_name = 'King';

-- utilizando a cl�usula where com date em formato string

select employee_id, last_name, job_id, department_id
from employees
where hire_date = '30/01/04';

-- utilizando operador de compara��o >=

select employee_id, last_name, job_id, department_id
from employees
where salary >= 1000;

-- utilizando operado de compara��o BETWEEN

select employee_id, last_name, job_id, department_id
from employees
where salary BETWEEN 1000 and 15000;

-- utilizando operado de compara��o in

select employee_id, last_name, job_id, department_id
from employees
where job_id IN('IT_PROG', 'FI_ACCOUNT', 'SA_REP');

-- utilizando operado de compara��o like com %

select employee_id, first_name, job_id, department_id
from employees
where first_name like 'Sa%';

-- utilizando operado de compara��o like com _

select employee_id, first_name, job_id, department_id
from employees
where first_name like '_a%';

-- utilizando operado de compara��o null de maneira ERRADA

select employee_id, first_name, job_id, department_id
from employees
where manager_id = NULL;

-- utilizando operado de compara��o null de maneira CORRETA

select employee_id, first_name, job_id, department_id
from employees
where manager_id IS NULL;

-- utilizando operador l�gico AND

select employee_id, first_name, job_id, department_id
from employees
where salary > 5000 
and job_id = 'IT_PROG';

-- utilizando operador l�gico OR

select employee_id, first_name, job_id, department_id
from employees
where salary > 5000 
or job_id = 'IT_PROG';

-- utilizando operador l�gico NOT

select employee_id, first_name, job_id, department_id
from employees
where job_id NOT IN('IT_PROG', 'FI_ACCOUNT') ;

-- utilizando operador de ordena��o ORDER BY (por padr�o � ascendente (ASC))

select employee_id, first_name, job_id, department_id
from employees
Order by employee_id;

-- utilizando operador de ordena��o ORDER BY agora por ordem descendente(DESC)

select employee_id, first_name, job_id, department_id
from employees
Order by employee_id desc;


