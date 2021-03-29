CREATE DATABASE Consumo
EXEC sp_rename 'Consumo','tableConsumo'

SELECT * FROM tableConsumo

SELECT Count(*) FROM tableConsumo

SELECT COUNT(*) as 'Contagem Genero' FROM  tableConsumo group by Sexo

Update tableConsumo set sexo= 'Masculino' where Cod= 10


DELETE FROM tableConsumo where Cod= 10

sp_monitor 

sp_datatype_info tableConsumo

EXEC sel 
EXEC  upd_tableC 112,'Masculino',21,45,22

EXEC delete_id 199

Exec insert_tableC 199,'Feminino',22,30,15

SELECT * FROM tableConsumo order by Idade

Select avg(Salario_Anual_milhares),Sexo from tableConsumo group by Sexo

ALTER TABLE tableConsumo alter column Score_Gastos_0_100 int

Select avg(Score_Gastos_0_100),Sexo from tableConsumo group by Sexo

Select avg(Score_Gastos_0_100) as media, max(Score_Gastos_0_100) as maximo,Idade,min(Score_Gastos_0_100) as min 
from tableConsumo group by (Idade) 

