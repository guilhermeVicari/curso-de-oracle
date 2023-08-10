

--Utilizando DESCRIBE/DESC

DESCRIBE employees;

DESC employees;

-- usando * para mostrar todas as colunas com todos os dados da tabela * = all

select * from employees;

-- quando queremos que apareça determinados campos de uma tabela colocamos após o select

select FIRST_NAME, LAST_NAME from employees;

-- null é ausência de valor

select * from employees where commission_pct IS NULL;

-- alias é um comando usando para apelidar e também renomear as colunas, podemos não utilizar
-- o comando 'as' quando formos renomear, porém se quisermos fazer o select com a primeira letra maiúscula
-- preciso usar aspas duplas

select FIRST_NAME as nome, LAST_NAME sobrenome, salary "Salario" from employees;

--utilizando o operador de concatenação

select FIRST_NAME || ' ' || LAST_NAME || ', data de admissão: ' || HIRE_DATE "Funcionário"  from employees;


--usar o distinct para não ter registro duplicado

select distinct department_id from employees;




