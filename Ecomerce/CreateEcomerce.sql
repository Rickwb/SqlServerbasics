CREATE DATABASE Ecomerce

CREATE TABLE Cliente(
id_cliente int primary key identity,
nome_cliente varchar(100),
senha_cliente BIT,
email_cliente varchar(70),
endereço_cliente_id int,
telefone_cliente varchar(20),
genero binary,
dataNascimento_cliente date,
)


CREATE TABLE Rating(
 id_rating int primary key identity,
 cliente_ID int,
 produto_ID int,
 foreign key (cliente_ID) references Cliente(id_cliente),
 foreign key (produto_ID) references Produto()

)

CREATE TABLE Comentario(
id_comentario int primary key identity,
cliente_ID int,
foreign key (cliente_ID) references Cliente(id_cliente),
produto_ID int,
foreign key (produto_ID) references Produto(),
comentario text
)

CREATE TABLE Transacao(
id_transacao int primary key identity,
cliente_ID int,
foreign key (cliente_ID) references Cliente(id_cliente),
produto_ID int,
foreign key (produto_ID) references Produto(),
quantity int,
statuspedido varchar(10)
)