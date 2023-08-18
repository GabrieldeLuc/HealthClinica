use [HealthClinica_Tarde] 

--DQL--


SELECT u.*, tu.TituloTipoUsuario
FROM Usuario u
INNER JOIN TipoDeUsuario tu ON u.IdTipoDeUsuario = tu.IdTipodeUsuario;


SELECT p.*, u.Nome AS NomeUsuario, u.Email AS EmailUsuario
FROM Paciente p
INNER JOIN Usuario u ON p.IdUsuario = u.IdUsuario;


SELECT m.*, u.Nome AS NomeUsuario, u.Email AS EmailUsuario, e.TituloEspecialidade
FROM Medico m
INNER JOIN Usuario u ON m.IdUsuario = u.IdUsuario
INNER JOIN Especialidade e ON m.IdEspecialidade = e.IdEspecialidade;


SELECT c.*, p.IdUsuario AS IdUsuarioPaciente, pm.Nome AS NomePaciente, pm.Email AS EmailPaciente,
       md.IdUsuario AS IdUsuarioMedico, md.Nome AS NomeMedico, md.Email AS EmailMedico
FROM Consulta c
INNER JOIN Paciente p ON c.IdPaciente = p.IdPaciente
INNER JOIN Usuario pm ON p.IdUsuario = pm.IdUsuario
INNER JOIN Medico m ON c.IdMedico = m.IdMedico
INNER JOIN Usuario md ON m.IdUsuario = md.IdUsuario;

select c.*, m.NomeMedico, m.MedicoCPF,
m.Especialidade as EspecialidadeMedico 
from Clinica c 
inner join Medico m On c.IdClinica = m.IdClinica;

----------------------------------------------------------------------------------

SELECT
    Usuario.Nome AS [Nome do Médico],
    Especialidade.TituloEspecialidade AS [Especialidade Médica],
    Clinica.NomeClinica AS [Nome da Clínica],
    Medico.MedicoCPF AS [CPF do Médico],
    Consulta.Descricao AS [Descrição da Consulta],
    Consulta.DataAgendamento AS [Data de Agendamento],
    Consulta.Feedback AS [Feedback da Consulta]
FROM Medico
INNER JOIN Usuario ON Medico.IdUsuario = Usuario.IdUsuario
INNER JOIN Especialidade ON Medico.IdEspecialidade = Especialidade.IdEspecialidade
INNER JOIN Clinica ON Medico.IdClinica = Clinica.IdClinica
INNER JOIN Consulta ON Medico.IdMedico = Consulta.IdMedico;

