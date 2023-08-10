-- utilizando a Fun��o to_char com datas
select last_name, to_char(hire_date, 'DD/MM/YYYY HH24:MI:SS') as DT_ADMISSAO
from employees;

select sysdate, to_char(sysdate, 'DD/MM/YYYY HH24:MI:SS') as DT_ADMISSAO
from dual;

select sysdate, to_char(sysdate, 'DD, "de" Month "de" YYYY') as DT_ADMISSAO
from employees;

select last_name, to_char(hire_date, 'FMDD, "de" Month "de" YYYY') as DT_ADMISSAO
from employees;

-- utilizando a faun��o to_char com n�meros
select first_name, last_name, to_char(salary, 'L99G999G999D99') salary
from employees;

-- utilizando a fun��o to_number
select to_number('12000,50')
from dual;

-- utilizando a fun��o to_date
select to_date('06/06/2020', 'DD/MM/YYYY') data
from dual;

select first_name, last_name, hire_date
from employees
where hire_date = to_date('17/06/2003', 'DD/MM/YYYY');

-- utilizando fun��es aninhadas
select first_name, last_name, round(months_between(sysdate, hire_date), 0) numero_meses
from employees
where hire_date = to_date('17/06/2003', 'DD/MM/YYYY');

--utilizando a fun��o NVL
select last_name, salary, nvl(commission_pct, 0), salary * 12 as salario_anual,
    (salary * 12) + (salary*12*nvl(commission_pct, 0)) as remuneracao_anual
from employees;

-- utilizando a fun��o coalesce
select coalesce(null, null, 'Express�o 3'), coalesce(null, 'Express�o 2', 'Express�o 3'),
        coalesce('Express�o 1', 'Express�o 2', 'Express�o3')
from dual;

select last_name, employee_id, commission_pct, manager_id,
        coalesce(to_char(commission_pct), to_char(manager_id),
        'Sem percentual de comiss�o e sem gerente')
from employees;