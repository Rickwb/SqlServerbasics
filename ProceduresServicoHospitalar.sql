CREATE PROCEDURE RegistroPacientes
@cpf varchar(11),
@nome varchar(50),
@operacao char(1)
AS 
if lower(@operacao) = 'i'
BEGIN TRANSACTION INSERT INTO Paciente(cpf,nome) VALUES (@cpf,@nome);