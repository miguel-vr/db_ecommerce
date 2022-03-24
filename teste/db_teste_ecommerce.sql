CREATE DATABASE db_teste_ecommerce;

USE db_teste_ecommerce;

CREATE TABLE tb_categorias(
id bigint NOT NULL AUTO_INCREMENT,
tipo varchar(225) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo) 
VALUES ("Verdura");

INSERT INTO tb_categorias (tipo)
VALUES ("Fruta");

INSERT INTO tb_categorias (tipo)
VALUES ("Grãos");

SELECT * FROM tb_categorias;

CREATE TABLE tb_usuarios (
id bigint NOT NULL AUTO_INCREMENT,
nome varchar(255) NOT NULL,
usuario varchar(255) NOT NULL,
senha varchar(255) NOT NULL,
foto varchar(255),
PRIMARY KEY (id)
-- data de nascimento
);

INSERT INTO tb_usuarios(usuario, nome, senha, foto) 
VALUES ("Miguelvrss", "Miguel", "12Aba*ya1", "https://abelha.jpg");

INSERT INTO tb_usuarios(usuario, nome, senha, foto) 
VALUES ("Marcel_01", "Marcelo", "112@9123A", "https://cachorro.jpg");

INSERT INTO tb_usuarios(usuario, nome, senha, foto) 
VALUES ("Camis_110", "Camila", "2227%AT9", "https://gato.jpg");

SELECT * FROM tb_usuarios;


CREATE TABLE tb_produtos (
id bigint NOT NULL AUTO_INCREMENT,
nome varchar(255) NOT NULL,
preco decimal (8,2) NOT NULL,
quantidade int,
validade date NOT NULL, 
PRIMARY KEY (id),
-- criando fk
usuario_id bigint,
categoria_id bigint,
FOREIGN KEY (usuario_id) REFERENCES tb_usuarios (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);


INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id, usuario_id) 
VALUES ("Batata", 50.00, 16, "2022-02-22", 1, 3);


INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id, usuario_id) 
VALUES ("Grão de bico", 80.00, 20, "2022-03-10", 2, 2);


INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id, usuario_id) 
VALUES ("Banana", 20.00, 10, "2022-02-06", 3, 1);


SELECT * FROM tb_produtos;




SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;


SELECT * FROM tb_produtos INNER JOIN tb_usuarios
ON tb_produtos.usuario_id = tb_usuarios.id;


SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
INNER JOIN tb_usuarios   ON tb_produtos.usuario_id = tb_usuarios.id;






