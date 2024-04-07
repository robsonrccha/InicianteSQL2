-- Consulta 1: Retornar a média de Notas dos Alunos em história.
SELECT AVG(valor_nota) FROM tabelanotas;

-- Consulta 2: Retornar as informações dos alunos cujo Nome começa com 'A'.
-- SELECT nome_aluno FROM tabelaalunos;
SELECT nome_aluno FROM tabelaalunos
WHERE nome_aluno LIKE 'A%';

-- Consulta 3: Buscar apenas os alunos que fazem aniversário em fevereiro.
--SELECT nome_aluno, data_nascimento FROM tabelaalunos;
SELECT nome_aluno, data_nascimento FROM tabelaalunos
WHERE data_nascimento LIKE '%-02-%';

-- Consulta 4: Realizar uma consulta que calcula a idade dos Alunos.
-- SELECT id_aluno, nome_aluno, data_nascimento FROM tabelaalunos;
SELECT id_aluno, nome_aluno, ROUND((JULIANDAY('now') - JULIANDAY(data_nascimento)) / 365.25) AS Idade 
FROM tabelaalunos;

-- Consulta 5: Retornar se o aluno está ou não aprovado. Aluno é considerado aprovado se a sua nota foi igual ou maior que 6
-- SELECT id_nota, valor_nota FROM tabelanotas;
SELECT id_aluno, valor_nota,
CASE
WHEN valor_nota >= 6 THEN 'Aprovado'
ELSE 'Reprovado'
END AS 'Resultado'
FROM tabelanotas
ORDER BY valor_nota DESC;

-- .
