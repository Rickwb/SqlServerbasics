--CREATE PROCEDURE sel as 
--select * from tableConsumo order by Cod ASC;

/*CREATE PROCEDURE upd_tableC 
@Cod int,@Sexo varchar(12),@idade int,@Salario int,
@Score int
as update tableConsumo set 
Sexo=@Sexo,Idade=@idade ,Salario_Anual_milhares=@Salario,
Score_Gastos_0_100=@Score 
where Cod= @Cod
*/ 

--CREATE PROCEDURE delete_id @id int as 
--DELETE FROM tableConsumo where Cod=@id

--CREATE PROCEDURE insert_tableC @Cod int,@Sexo varchar(12),@idade int,@Salario int,
--@Score int as INSERT INTO tableConsumo VALUES (@Cod,@Sexo,@idade,@Salario,@Score) 

CREATE PROCEDURE atualizar 
