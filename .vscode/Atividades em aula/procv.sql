-- 1. Liste todos os alunos cadastrados.
SELECT nome 
FROM Alunos;
-- 2. Liste apenas os nomes dos alunos.
SELECT nome 
FROM Alunos;
-- 3. Exiba todos os cursos cadastrados.
SELECT nome_curso
from Cursos;

-- 4. Mostre os alunos que moram em São Paulo.
SELECT nome
from Alunos
WHERE cidade = "São Paulo";

-- 5. Liste os alunos com idade maior que 20 anos.
SELECT nome
FROM Alunos
WHERE idade > 20;

-- 6. Exiba os cursos com carga horária maior que 50 horas.
SELECT nome_curso
FROM Cursos
WHERE carga_horaria > 50;

-- 7. Mostre os alunos com idade entre 18 e 22 anos.
SELECT nome
from Alunos
WHERE idade BETWEEN 18 AND 22;

-- 8. Liste os alunos da cidade de Curitiba.
SELECT nome
FROM Alunos
WHERE cidade = 'Curitiba';

-- 9. Exiba os alunos cuja idade seja menor que 21 anos.
SELECT idade
FROM Alunos
WHERE idade < 21;

-- 10. Liste todas as matrículas cadastradas.
SELECT id_matricula, id_aluno, id_curso, nota, faltas
FROM Matriculas;
---------------------------------------------------------
 
-- 1. Mostre os alunos que possuem nota maior que 8.
SELECT Alunos.nome, Matriculas.nota
FROM Alunos
JOIN Matriculas ON Alunos.id_aluno = Matriculas.id_aluno
WHERE Matriculas.nota > 8;
-- 2. Liste os alunos que tiveram mais de 5 faltas.
SELECT Alunos.nome, Matriculas.faltas
FROM Alunos
JOIN Matriculas ON Alunos.id_aluno = Matriculas.id_aluno
WHERE Matriculas.faltas > 5;

-- 3. Exiba os cursos com carga horária igual a 80 horas.
SELECT carga_horaria
FROM Cursos
WHERE carga_horaria = 80;

-- 4. Mostre os alunos que NÃO moram em São Paulo.
SELECT Alunos.nome, Alunos.cidade
FROM Alunos
WHERE cidade <> 'São Paulo';

-- 5. Liste os alunos cujo nome começa com a letra “A”.
SELECT nome
FROM Alunos
WHERE nome LIKE 'A%';   

-- 6. Exiba os alunos cujo nome termina com a letra “a”.
SELECT nome
FROM Alunos
WHERE nome LIKE '%a';

-- 7. Liste os cursos cujo nome contenha a palavra “Dados”.
SELECT nome_curso
FROM Cursos
WHERE nome_curso LIKE'%Dados%';

-- 8. Mostre as matrículas com nota entre 7 e 9.
SELECT id_matricula, id_aluno, id_curso, nota, faltas
FROM Matriculas
WHERE nota BETWEEN 7 AND 9;

-- 9. Liste os alunos que possuem exatamente 20 anos.
SELECT Aluno.nome, Aluno.idade
FROM Alunos
WHERE idade = 20;

-- 10. Exiba os cursos com carga horária menor ou igual a 60 horas.
SELECT nome_curso, carga_horaria
FROM Cursos
WHERE carga_horaria <= 60;

---------------------------------------------------------------------------

-- 1. Mostre quantos alunos existem em cada cidade.
SELECT cidade, COUNT(*) AS quantidade_alunos
FROM Alunos
GROUP BY cidade;

-- 2. Exiba a média de idade dos alunos agrupada por cidade.
SELECT nome, AVG(idade) AS media_idade
FROM Alunos
GROUP BY cidade;

-- 3. Mostre a quantidade de matrículas por curso.
SELECT Cursos.nome_curso, COUNT(*) AS quantidade_matriculas
FROM Cursos
JOIN Matriculas ON Cursos.id_curso = Matriculas.id_curso
GROUP BY Cursos.nome_curso;

-- 4. Exiba a média das notas por curso.
SELECT Matriculas.id_curso, AVG(nota) AS media_notas
FROM Matriculas
GROUP BY id_curso;

-- 5. Mostre o total de faltas agrupado por curso.
SELECT id_curso, SUM(faltas) AS total_faltas
FROM Matriculas
GROUP BY id_curso;

-- 6. Liste a maior nota obtida em cada curso.
SELECT Matriculas.id_curso, MAX(nota) AS maior_nota
FROM Matriculas
GROUP BY id_curso;

-- 7. Exiba a menor nota registrada em cada curso.
SELECT id_curso, MIN(nota) AS menor_nota
FROM Matriculas
GROUP BY id_curso;

-- 8. Mostre a soma total das faltas agrupadas por aluno.
SELECT id_aluno, SUM(faltas) AS total_faltas
FROM Matriculas
GROUP BY id_aluno;

-- 9. Exiba a média de notas agrupada por aluno.
SELECT id_aluno, AVG(nota) AS media_notas
FROM Matriculas
GROUP BY id_aluno;

-- 10. Mostre quantos alunos existem em cada faixa etária.
SELECT Alunos.idade, COUNT(*) AS quantidade_alunos
FROM Alunos
GROUP BY idade;

------------------------------------------------------------------

-- 1. Liste as cidades que possuem mais de 2 alunos.
SELECT cidade, COUNT(*) AS quantidade_alunos
FROM Alunos
GROUP BY cidade
HAVING COUNT(*) > 2;

-- 2. Exiba os cursos cuja média de notas seja maior que 8.
SELECT id_curso, AVG(nota) AS media_notas
FROM Matriculas
GROUP BY id_curso
HAVING AVG(nota) > 8;

-- 3. Mostre os cursos que possuem mais de 2 matrículas.
SELECT id_curso, COUNT(*) AS quantidade_matriculas
FROM Matriculas
GROUP BY id_curso
HAVING COUNT(*) > 2;

-- 4. Liste os alunos cuja soma de faltas seja maior que 5.
SELECT id_aluno, SUM(faltas) AS total_faltas
FROM Matriculas
GROUP BY id_aluno
HAVING SUM(faltas) > 5;

-- 5. Exiba os cursos cuja menor nota seja maior que 6.
SELECT id_curso, MIN(nota) AS menor_nota
FROM Matriculas
GROUP BY id_curso
HAVING MIN(nota) > 6;

-- 6. Mostre os cursos ordenados pela carga horária em ordem decrescente.
SELECT nome_curso, carga_horaria
FROM Cursos
ORDER BY carga_horaria DESC;

-- 7. Liste os alunos ordenados por idade do maior para o menor.
SELECT nome, idade
FROM Alunos
ORDER BY idade DESC;

-- 8. Exiba a média de notas por curso ordenada da maior para a menor.
SELECT id_curso, AVG(nota) AS media_notas
FROM Matriculas
GROUP BY id_curso
ORDER BY media_notas DESC;

-- 9. Mostre as cidades ordenadas pela quantidade de alunos.
SELECT cidade, COUNT(*) AS quantidade_alunos
FROM Alunos
GROUP BY cidade
ORDER BY quantidade_alunos DESC;

-- 10. Liste os alunos com média de notas maior que 7 ordenados pela média decrescente.
SELECT id_aluno, AVG(nota) AS media_notas
FROM Matriculas
GROUP BY id_aluno
HAVING AVG(nota) > 7
ORDER BY media_notas DESC;
