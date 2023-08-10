-- Fun��o de convers�o mai�sculo e minusculo

-- aqui ele n�o vai encontrar o resultado pois o sobrenome dele n�o � mai�sculo
select employee_id, last_name, department_id
from employees
where last_name = 'KING';

-- agora ele encontra pois comparou a altera��o feita do resultado a string toda mai�scula passada
select employee_id, last_name, department_id
from employees
where UPPER(last_name) = 'KING';

-- Fun��o de mainipula��o de caracteres
select concat(' Curso: ', 'Introdu��o Oracle 19c'), substr('Introdu��o Oracle 19c', 1,11), length('Introdu��o Oracle 19c'), instr('Introdu��o oracle 19c', 'oracle')
from dual;

-- usando o Lpad e Rpad
select first_name "Nome", Lpad(first_name, 20, ' ') "Nome alinhado a direita", Rpad(first_name, 20, ' ') "Nome alinhado a esquerda"
from employees;

-- Utilizando a fun��o Replace
select job_title, replace(job_title, 'President', 'Presidente') "Cargo"
from jobs
where job_title = 'President';

-- fun��o tipo number

-- utilizando a fun��o round para poder arredondar, caso a fra��o da casa flutuante for maior ou igual a 5 ent�o arredonda pra cima
-- se n�o arredonda no mesmo n�mero
select round(46.93), round(45.3)
from dual;

-- utilizando a fun��o trunc para cortar as casa flutuantes
select trunc(45.93), trunc(45.5)
from dual;

-- utilizando o m�todo mod para pegar o resto da divis�o
select mod(1300, 600) resto
from dual;

-- utilizando os m�todos abs e sqrt
-- abs: retorna o valor absoluto do n�mero
-- sqrt: retorna a raiz quadrada do n�mero
select abs(-9), sqrt(9)
from dual;

-- fun��o tipo date

--fun��o sysdate que retorna a data do sistema
select sysdate
from dual;

-- c�lculo com datas:
select sysdate, sysdate + 30, sysdate + 60, sysdate -30
from dual;

select last_name, round((sysdate - hire_date)/ 7,2) "Semana de trabalho"
from employees;

-- utilizando a fun��o months_between para ver a quantidade de meses entre datas
select first_name, last_name, round(months_between(sysdate, hire_date), 2) "Meses de trabalho"
from employees;

-- add_months: adiciona quantidade de meses que voc� deseja por par�metro
-- next_day: pega o dia seguinte em rela��o a data parametrizada
-- last_day: pega o �ltimo dia do m�s pela data parametrizada
select sysdate, add_months(sysdate, 3), next_day(sysdate, 'sexta-feira'), last_day(sysdate)
from dual;

