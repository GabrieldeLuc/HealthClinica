use [HealthClinica_Tarde]

--DML--

insert into TipoDeUsuario ( TituloTipoUsuario) 
values ('Administrador') 

insert into Usuario (  IdTipoDeUsuario, Nome, Email, Senha , Telefone) 
values (  1, 'Charlotte', 'charlie@gmail.com' , '2103', '9920347891234') 

insert into Paciente (  IdUsuario, DataNascimento, Telefone, RG, CPF, CEP, Endereço) 
values ( 5, '2008-09-23', '9834071845123', '7654092', '8625609872', '09240870', 'Rua Niterói 180') 

insert into Especialidade ( TituloEspecialidade) 
values ( 'Cardiologista') 

insert into Clinica ( NomeClinica, CNPJ, RazãoSocial, NomeFantasia, EnderecoClinica, HoraAbertura, HoraFechamento) 
values ( 'Health Clinica', '34529876109834', 'Health Clinica', 'HealthClinica', 'Rua Jardim das Flores 119', '08:00', '23:00')

insert into Medico ( IdUsuario, IdEspecialidade, IdClinica, NomeMedico, MedicoCPF, Especialidade, CRM) 
values ( 5, 1, 1, 'Miguel', '43256790856', 'Cardiologista', 'CRM Atendimento') 

insert into Consulta ( IdPaciente, IdMedico, Descricao, DataAgendamento, Feedback) 
values ( 5, 1 , 'Consulta Cardiológica', '2023-09-20', ' Bom Atendimento, adorei a Consulta.') 

select * from Paciente

select * from Usuario

select * from Especialidade 

select * from Clinica 

select * from Medico 

select * from Consulta 