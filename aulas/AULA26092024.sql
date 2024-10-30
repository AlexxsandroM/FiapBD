--01
SELECT * FROM T_SIP_FUNCIONARIO;
--02
SELECT T_SIP_FUNCIONARIO.CD_FUNC, 
       T_SIP_FUNCIONARIO.NM_FUNCIONARIO, 
       T_SIP_FUNCIONARIO.DT_NASCIMENTO, 
       T_SIP_FUNCIONARIO.CD_DEPTO
FROM T_SIP_FUNCIONARIO;
--
SELECT F.CD_FUNC, 
       F.NM_FUNCIONARIO, 
       F.DT_NASCIMENTO, 
       F.CD_DEPTO
FROM T_SIP_FUNCIONARIO F;
--
SELECT CD_FUNC, 
       NM_FUNCIONARIO, 
       DT_NASCIMENTO, 
       CD_DEPTO
FROM T_SIP_FUNCIONARIO;
--03
SELECT F.CD_FUNC, 
       F.NM_FUNCIONARIO, 
       F.VL_SALARIO, 
       F.CD_DEPTO
FROM T_SIP_FUNCIONARIO F
WHERE F.CD_DEPTO = 6;
--04
SELECT DISTINCT F.CD_DEPTO
FROM T_SIP_FUNCIONARIO F;
--
SELECT UNIQUE F.CD_DEPTO
FROM T_SIP_FUNCIONARIO F;
--05 OP. +,-,*,/
SELECT F.CD_FUNC, 
       F.NM_FUNCIONARIO, 
       F.VL_SALARIO, 
       F.VL_SALARIO * 1.05
FROM T_SIP_FUNCIONARIO F;
--06
SELECT F.CD_FUNC, 
       F.NM_FUNCIONARIO, 
       F.VL_SALARIO, 
       (F.VL_SALARIO * 12) + 1000  VL_SALARIO_ANUAL
FROM T_SIP_FUNCIONARIO F;
--07
SELECT F.CD_FUNC, 
       F.NM_FUNCIONARIO, 
       F.VL_SALARIO, 
       F.VL_SALARIO * 1.05 "VALOR AJUSTADO"
FROM T_SIP_FUNCIONARIO F;
--08
SELECT D.CD_DEPTO, 
       D.NM_DEPTO
FROM T_SIP_DEPTO D
ORDER BY D.CD_DEPTO;
--09
SELECT D.CD_DEPTO, 
       D.NM_DEPTO
FROM T_SIP_DEPTO D
ORDER BY D.CD_DEPTO DESC;
--
SELECT F.NM_FUNCIONARIO, F.VL_SALARIO
FROM T_SIP_FUNCIONARIO F
ORDER BY F.VL_SALARIO DESC;
--10
SELECT F.CD_FUNC, 
       F.NM_FUNCIONARIO, 
       F.VL_SALARIO, 
       F.CD_DEPTO
FROM T_SIP_FUNCIONARIO F
WHERE  F.CD_DEPTO > 1 
ORDER BY  4 ASC, 2 DESC;
--11
SELECT F.CD_FUNC Matricula, 
       F.NM_FUNCIONARIO Nome_Funcionario, 
	   F.VL_SALARIO "Sal�rio BRUTO", 
	   F.CD_DEPTO Codigo_Departamento
FROM T_SIP_FUNCIONARIO F;
--12 OP. >, <, >=, <=, AND, OR, NOT, IN 
SELECT F.CD_FUNC Matricula, 
       F.NM_FUNCIONARIO Nome_Funcionario, 
	   F.VL_SALARIO "Sal�rio Bruto", 
	   F.CD_DEPTO Codigo_Departamento
FROM T_SIP_FUNCIONARIO F
WHERE F.VL_SALARIO > 2999.99;
--13
SELECT F.CD_FUNC Matricula, 
       F.NM_FUNCIONARIO Nome_Funcionario, 
	   F.VL_SALARIO "Sal�rio Bruto", 
	   F.CD_DEPTO Codigo_Departamento
FROM T_SIP_FUNCIONARIO F
WHERE F.NM_FUNCIONARIO = 'Marina Silva';
--14
SELECT 	*
FROM 	T_SIP_FUNCIONARIO D1556596449
WHERE 	D1556596449.DT_ADMISSAO >= TO_DATE('01/01/2018','DD/MM/YYYY');
--15 OP. AND
SELECT F.CD_FUNC, 
       F.NM_FUNCIONARIO, 
       F.CD_DEPTO, 
       F.DT_ADMISSAO
FROM   T_SIP_FUNCIONARIO F
WHERE  F.DT_ADMISSAO >= TO_DATE('01/01/2012','DD/MM/YYYY')
AND F.CD_DEPTO > 3;
--16
SELECT F.CD_FUNC, 
       F.NM_FUNCIONARIO, 
       F.CD_DEPTO, 
       F.DT_ADMISSAO
FROM   T_SIP_FUNCIONARIO F
WHERE  F.DT_ADMISSAO >= TO_DATE('01/01/2018','DD/MM/YYYY')
OR F.CD_DEPTO = 7;
--17
SELECT F.CD_FUNC, 
       F.NM_FUNCIONARIO, 
       F.CD_DEPTO, 
       F.DT_ADMISSAO, 
       F.VL_SALARIO
FROM   T_SIP_FUNCIONARIO F
WHERE  NOT F.CD_DEPTO = 7;
--18 - BETWEEN
SELECT F.CD_FUNC, 
       F.NM_FUNCIONARIO, 
       F.CD_DEPTO, 
       F.DT_ADMISSAO, 
       F.VL_SALARIO
FROM   T_SIP_FUNCIONARIO F
WHERE  F.DT_ADMISSAO BETWEEN TO_DATE('01/01/2021','DD/MM/YYYY') 
AND TO_DATE('31/12/2021','DD/MM/YYYY');
--19 - IN
SELECT F.CD_FUNC, 
       F.NM_FUNCIONARIO, 
       F.CD_DEPTO, 
       F.DT_ADMISSAO, 
       F.VL_SALARIO
FROM   T_SIP_FUNCIONARIO F
WHERE  F.CD_DEPTO IN (1,7,5);

SELECT * FROM T_SIP_FUNCIONARIO F 
WHERE F.VL_SALARIO >= 2000 AND F.VL_SALARIO <= 3000;

SELECT * FROM T_SIP_FUNCIONARIO F 
WHERE F.VL_SALARIO BETWEEN 2000 AND 3000;

--20
SELECT F.CD_FUNC, 
       F.NM_FUNCIONARIO, 
       F.CD_DEPTO, 
       F.DT_ADMISSAO, 
       F.VL_SALARIO
FROM   T_SIP_FUNCIONARIO F
WHERE  TO_CHAR(F.DT_ADMISSAO,'YYYY') NOT BETWEEN '2018'  AND  '2021'
ORDER BY 4, F.VL_SALARIO;

SELECT F.CD_FUNC, 
       F.NM_FUNCIONARIO, 
       F.CD_DEPTO, 
       F.DT_ADMISSAO, 
       F.VL_SALARIO
FROM   T_SIP_FUNCIONARIO F
WHERE  F.CD_DEPTO NOT IN (1,7,4);

----

SELECT * 
FROM T_SIP_PROJETO P
WHERE P.DT_TERMINO IS NOT NULL;

----

SELECT * 
FROM T_SIP_PROJETO P
WHERE P.DT_TERMINO IS NULL;
------

SELECT * 
  FROM T_SIP_DEPTO D
WHERE D.NM_DEPTO LIKE 'CO%';

------

SELECT * 
  FROM T_SIP_DEPTO D
WHERE D.NM_DEPTO LIKE '_E%';  

------

SELECT * 
  FROM T_SIP_DEPTO D
WHERE D.NM_DEPTO LIKE '%E';  

-----

SELECT D.CD_DEPTO, D.NM_DEPTO
FROM T_SIP_DEPTO D
WHERE D.NM_DEPTO LIKE '%ME%';
-----
/*O funcion�rio Julieta Sampaio Gusmao de c�digo 1,
foi admitido em 15/05/2011 
e recebe o sal�rio de R$ 2223.88*/

SELECT 'O funcion�rio '||F.NM_FUNCIONARIO||' de c�digo '||F.CD_FUNC||',
 foi admitido em '||TO_CHAR(F.DT_ADMISSAO,'DD/MM/YYYY')||
 ' e recebe o sal�rio de R$ '||F.VL_SALARIO
 FROM T_SIP_FUNCIONARIO F;
-------

SELECT ROWNUM, ROWID, D.NM_DEPTO,D.SG_DEPTO
FROM T_SIP_DEPTO D;
----
SELECT *
FROM   T_SIP_FUNCIONARIO F
WHERE  ROWNUM < 4;
---
SELECT ROWNUM AS RANK,
       X.NM_FUNCIONARIO,
       X.VL_SALARIO 
FROM
(
SELECT F.NM_FUNCIONARIO, F.VL_SALARIO
FROM   T_SIP_FUNCIONARIO F
ORDER BY VL_SALARIO DESC
) X
WHERE  ROWNUM < 4;
----
SELECT TO_CHAR(SYSDATE,'DD/MM/YYYY HH24:MI:SS') FROM DUAL;
SELECT USER FROM DUAL;
-----


SELECT P.DT_INICIO, P.DT_TERMINO
FROM T_SIP_PROJETO P;

ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/YYYY';

SELECT P.DT_INICIO, P.DT_TERMINO
FROM T_SIP_PROJETO P;
----
SELECT 	SYSDATE,
		TO_CHAR(SYSDATE, 'MON') "MES ABREVIADO",
		TO_CHAR(SYSDATE, 'MONTH') "MES POR EXTENSO"
FROM DUAL;

ALTER SESSION SET NLS_LANGUAGE = 'PORTUGUESE';
ALTER SESSION SET NLS_LANGUAGE = 'AMERICAN';

SELECT 	SYSDATE,
		TO_CHAR(SYSDATE, 'MON') "MES ABREVIADO",
		TO_CHAR(SYSDATE, 'MONTH') "MES POR EXTENSO"
FROM DUAL;


SELECT * FROM USER_OBJECTS;
SELECT * FROM USER_TAB_COLUMNS WHERE TABLE_NAME= 'T_SIP_FUNCIONARIO';
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME= 'T_SIP_FUNCIONARIO';
