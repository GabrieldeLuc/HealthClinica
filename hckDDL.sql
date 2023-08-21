Create database [HealthClinica_Tarde]

use [HealthClinica_Tarde]

--DDL--

create table TipoDeUsuario
(
IdTipodeUsuario int primary key identity , 
TituloTipoUsuario varchar(50) not null

); 

create table Usuario 
( 
IdUsuario int primary key identity , 
IdTipoDeUsuario int foreign key references TipoDeUsuario (IdTipoDeUsuario) not null , 
Nome Varchar (100) not null,
Email varchar(50) not null unique , 
Senha varchar(50)  not null  ,
Telefone varchar(13) not null
);

create table Paciente 
(
IdPaciente int primary key identity ,
IdUsuario int foreign key references Usuario (IdUsuario) not null , 
DataNascimento Date not null, 
Telefone varchar(20) not null, 
RG varchar (8) not null, 
CPF varchar (11) not null, 
CEP varchar (8) not null, 
Endereço varchar (70) not null
);

create table Especialidade 
(
IdEspecialidade int primary key identity, 
TituloEspecialidade varchar (50) not null
);

create table Clinica 
(
IdClinica int primary key identity,
NomeClinica varchar(50) not null, 
CNPJ varchar(14) not null, 
RazãoSocial varchar (100) not null, 
NomeFantasia varchar (50) not null,
EnderecoClinica varchar (70) not null, 
HoraAbertura time not null,
HoraFechamento time not null,

);


create table Medico
(
IdMedico int primary key identity, 
IdUsuario int foreign key references Usuario (IdUsuario) not null, 
IdEspecialidade int foreign key references Especialidade (IdEspecialidade) not null, 
IdClinica int foreign key references Clinica (IdClinica) not null, 
NomeMedico varchar (100) not null, 
MedicoCPF varchar (11) not null, 
Especialidade varchar (50) not null ,
CRM varchar (50) not null 

); 

create table Consulta 
(
IdConsulta int primary key identity, 
IdPaciente int foreign key references Paciente (IdPaciente) not null, 
IdMedico int foreign key references Medico (IdMedico) not null, 
Descricao varchar (1000), 
DataAgendamento date not null, 
Feedback varchar (300) 
);


drop table Medico

drop table Paciente 

drop table TipoDeUsuario

drop table Usuario