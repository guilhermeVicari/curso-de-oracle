-- Função de conversão maiúsculo e minusculo

-- aqui ele não vai encontrar o resultado pois o sobrenome dele não é maiúsculo
select employee_id, last_name, department_id
from employees
where last_name = 'KING';

-- agora ele encontra pois comparou a alteração feita do resultado a string toda maiúscula passada
select employee_id, last_name, department_id
from employees
where UPPER(last_name) = 'KING';

-- Função de mainipulação de caracteres
select concat(' Curso: ', 'Introdução Oracle 19c'), substr('Introdução Oracle 19c', 1,11), length('Introdução Oracle 19c'), instr('Introdução oracle 19c', 'oracle')
from dual;

-- usando o Lpad e Rpad
select first_name "Nome", Lpad(first_name, 20, ' ') "Nome alinhado a direita", Rpad(first_name, 20, ' ') "Nome alinhado a esquerda"
from employees;

-- Utilizando a função Replace
select job_title, replace(job_title, 'President', 'Presidente') "Cargo"
from jobs
where job_title = 'President';

-- função tipo number

-- utilizando a função round para poder arredondar, caso a fração da casa flutuante for maior ou igual a 5 então arredonda pra cima
-- se não arredonda no mesmo número
select round(46.93), round(45.3)
from dual;

-- utilizando a função trunc para cortar as casa flutuantes
select trunc(45.93), trunc(45.5)
from dual;

-- utilizando o método mod para pegar o resto da divisão
select mod(1300, 600) resto
from dual;

-- utilizando os métodos abs e sqrt
-- abs: retorna o valor absoluto do número
-- sqrt: retorna a raiz quadrada do número
select abs(-9), sqrt(9)
from dual;

-- função tipo date

--função sysdate que retorna a data do sistema
select sysdate
from dual;

-- cálculo com datas:
select sysdate, sysdate + 30, sysdate + 60, sysdate -30
from dual;

select last_name, round((sysdate - hire_date)/ 7,2) "Semana de trabalho"
from employees;

-- utilizando a função months_between para ver a quantidade de meses entre datas
select first_name, last_name, round(months_between(sysdate, hire_date), 2) "Meses de trabalho"
from employees;

-- add_months: adiciona quantidade de meses que você deseja por parâmetro
-- next_day: pega o dia seguinte em relação a data parametrizada
-- last_day: pega o último dia do mês pela data parametrizada
select sysdate, add_months(sysdate, 3), next_day(sysdate, 'sexta-feira'), last_day(sysdate)
from dual;

