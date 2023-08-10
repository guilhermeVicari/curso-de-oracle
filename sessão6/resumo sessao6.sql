

--Utilizando DESCRIBE/DESC

DESCRIBE employees;

DESC employees;

-- usando * para mostrar todas as colunas com todos os dados da tabela * = all

select * from employees;

-- quando queremos que apare�a determinados campos de uma tabela colocamos ap�s o select

select FIRST_NAME, LAST_NAME from employees;

-- null � aus�ncia de valor

select * from employees where commission_pct IS NULL;

-- alias � um comando usando para apelidar e tamb�m renomear as colunas, podemos n�o utilizar
-- o comando 'as' quando formos renomear, por�m se quisermos fazer o select com a primeira letra mai�scula
-- preciso usar aspas duplas

select FIRST_NAME as nome, LAST_NAME sobrenome, salary "Salario" from employees;

--utilizando o operador de concatena��o

select FIRST_NAME || ' ' || LAST_NAME || ', data de admiss�o: ' || HIRE_DATE "Funcion�rio"  from employees;


--usar o distinct para n�o ter registro duplicado

select distinct department_id from employees;




