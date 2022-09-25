create database ecommerce;
use ecommerce;

create table tipoDeCliente (
id int auto_increment primary key,
PessoaFisica boolean,
PessoaJuridica boolean
);

create table cliente (
id int auto_increment primary key,
Fname varchar(10),
Minit char(3),
Lname varchar(20),
CPF char(11) not null,
constraint unique_cpf_client unique (CPF),
tipo_id int,
foreign key (tipo_id) references tipodecliente (id)
);

create table produto (
id int auto_increment primary key,
Pnome varchar(10) not null,
categoria enum('Eletrônico','Roupa','Brinquedo','Alimentos','Móveis') not null,
avaliacao float default 0,
tamanho varchar(10),
valor decimal(5,2)
);

create table formaDePagamento(
id int auto_increment primary key,
boleto boolean,
cartaoCredito boolean,
cartaoDebito boolean,
pix boolean
);

create table pedido (
id int auto_increment primary key,
valorTotal decimal (5,2),
frete decimal (5,2),
produto_id int,
pagamento_id int,
foreign key (produto_id) references produto (id),
foreign key (pagamento_id) references formaDePagamento (id)
);

create table entrega (
id int auto_increment primary key,
rastreio varchar(50),
statusEntrega varchar(20) 
);

create table cliente_pedido (
id int auto_increment primary key,
cancelarPedido boolean,
finalizarPedido boolean,
cliente_id int,
pedido_id int,
entrega_id int,
foreign key (cliente_id) references cliente (id),
foreign key (pedido_id) references pedido (id),
foreign key (entrega_id) references entrega (id)
);

create table fornecedor (
id int auto_increment primary key,
razaoSocial varchar (20),
CNPJ varchar (20),
produto_id int,
foreign key (produto_id) references produto (id)
);

create table estoque (
id int auto_increment primary key,
nome varchar (20),
possui boolean
);

create table produto_estoque (
quantidade int,
produto_id int,
estoque_id int,
 foreign key (produto_id) references produto (id),
 foreign key (estoque_id) references estoque (id)
);

create table vendedor (
id int auto_increment primary key,
razaoSocial varchar (20),
endereco varchar (50),
pagamento_id int,
fornecedor_id int,
produto_id int,
foreign key (pagamento_id) references formaDePagamento (id),
foreign key (fornecedor_id) references fornecedor (id),
foreign key (produto_id) references produto (id)
);

insert into vendedor(razaoSocial, endereco,pagamento_id,fornecedor_id,produto_id) values ("23456788765","rua x",2,3,2);
select * from produto;
select * from pedido where frete > 10.00;
select produto.Pnome from produto inner join pedido on produto_id = pedido.id;
select * from produto order by categoria;
