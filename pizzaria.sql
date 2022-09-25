CREATE DATABASE db_pizzaria;
USE db_pizzaria;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(10),
com_queijo BOOLEAN
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(20),
valor DECIMAL(5,2),
com_cebola BOOLEAN,
acompanha_refri BOOLEAN,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;
INSERT INTO tb_categorias(tipo,com_queijo)VALUES("doce",false);
INSERT INTO tb_pizzas(nome,valor,com_cebola,acompanha_refri,categoria_id)VALUES("Camarão",101.00,false,true,1);
SELECT * FROM tb_pizzas WHERE valor > 45.00;
SELECT * FROM tb_pizzas WHERE valor > 50.00 && valor < 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";
SELECT * FROM tb_pizzas INNER JOIN tb_categorias on tb_categorias.id = tb_pizzas.categoria_id;
SELECT tb_pizzas.nome, tb_categorias.tipo FROM tb_pizzas INNER JOIN tb_categorias on tb_categorias.id = tb_pizzas.categoria_id WHERE tb_categorias.tipo = "salgada"
