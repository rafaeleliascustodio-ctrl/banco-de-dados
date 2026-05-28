USE HospitalDB;

SELECT Medicos.nome,
       Medicos.crm,
       Especialidades.nome,
       Hospitais.nome,
       count(Consultas.id_consulta)
FROM Medicos, Especialidades, Hospitais, Consultas
WHERE Medicos.id_especialidade = Especialidades.id_especialidade
  AND Hospitais.id_hospital = Medicos.id_hospital
  AND Consultas.id_medico = Medicos.id_medico
  AND Medicos.id_hospital = 2
GROUP BY Medicos.id_medico, Medicos.nome, Medicos.crm, Especialidades.nome, Hospitais.nome;

SELECT  M.nome,
        max(M.salario) AS salario_max,
        M.crm,
        E.nome
FROM Medicos AS M
JOIN Especialidades AS E
ON M.id_especialidade = E.id_especialidade
group by M.nome, M.crm, E.nome
order by salario_max desc;

SELECT  M.nome,
        M.salario,
        M.crm,
        E.nome
FROM Medicos AS M
JOIN Especialidades AS E ON M.id_especialidade = E.id_especialidade
JOIN Hospitais AS H ON M.id_hospital = H.id_hospital
