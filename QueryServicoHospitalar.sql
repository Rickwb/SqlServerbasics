CREATE DATABASE ServicoHospitalar
USE ServicoHospitalar

CREATE TABLE Hospital(
cnpj varchar(11) primary key,
nome varchar(20) not null,
rua varchar(50),
bairro varchar(20),
cidade varchar(20),
cep varchar(8),
telefone varchar(10)
)

CREATE TABLE Medico(
crm varchar(10) primary key,
cpf varchar(11) not null,
nome varchar(50),
rua varchar(50),
bairro varchar(20),
cep varchar(20),
Hospitalcnpj varchar(11)
foreign key(Hospitalcnpj) references Hospital(cnpj))

CREATE TABLE Especialidade(
id int primary key identity,
documentoMed varchar(10),
especialidade varchar(50)
foreign key(documentoMed) references Medico(crm)
)

CREATE TABLE ContatoMedico(
id int primary key identity,
documentoMed varchar(10),
telefone varchar(10),
foreign key(documentoMed) references Medico(crm))

CREATE TABLE Enfermeira(
coren varchar(10) primary key,
cpf varchar(11) not null,
nome varchar(11),
rua varchar(11),
bairro varchar(11),
cep varchar(11),
hospital varchar(11),
foreign key(Hospital) references Hospital(cnpj),
medico varchar(10),
foreign key (medico) references Medico(crm)
)

CREATE TABLE Paciente(
cpf varchar(11) primary key,
nome varchar(11),
rua varchar(11),
bairro varchar(11),
cep varchar(11),
Hospital varchar(11),
foreign key(Hospital) references Hospital(cnpj)
)

CREATE TABLE Tratamento(
id int primary key identity,
cpf varchar(11) not null,
foreign key (cpf) references Paciente(cpf),
medico varchar(10),
foreign key(medico) references Medico(crm),
cid varchar(50),

)

