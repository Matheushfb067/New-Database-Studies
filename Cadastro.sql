drop database if exists cadastro;

create database cadastro
default character set utf8
default collate utf8mb3_general_ci;

use cadastro;

create table pessoas(
    id int not null auto_increment,
    nome varchar(30) not null,
    nascimento date,
    sexo enum('M', 'F'),
    peso decimal(5,2),
    altura decimal(3,2),
    nascionalidade varchar(30) default 'Brasil', -- se não for digitado nada, por padrão é brasil

    primary key (id)
)default charset = utf8;

create table if not exists cursos (
    nome varchar(30) not null unique,
    descricao text,
    carga int unsigned,
    totalAulas int,
    ano year default '2016'
)default charset = utf8;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key (idcurso);

-- Diferentemente das NOTAS abaixo, por conta de ID ser auto_increment, não é necessario especifica-lo!
-- Melhor Pratica!
-- Exemplo correto abaixo:

insert into pessoas values
(default, 'Godofredo', '1984-01-02', 'M', 78.5, 1.75, 'Brasil'),
(DEFAULT, 'Ana' , '1975-12-22' , 'F' , '52.3' , '1.45' , 'EUA' ),
(DEFAULT, 'Pedro' , '2000-07-15' , 'M' , '52.3' , '1.45' , 'Brasil' ),
(DEFAULT, 'Maria' , '1999-05-30' , 'F' , '75.9' , '1.70' , 'Portugal' );

-- alterando a tabela e adicionando a coluna de profissão
alter table pessoas
add column profissao varchar(10);

alter table pessoas
drop column profissao;  -- também podemos usar o drop para deleter uma coluna

alter table pessoas
add column profissao varchar(10) after nome; -- não existe before, somente after!

alter table pessoas
modify column profissao varchar(30); -- a quantidade de caracteres foi alterada para 30

alter table pessoas
change profissao prof varchar(30) ; -- muda o nome de profissão para prof

-- Erros propositais para manipulação de linhas
insert into cursos values
('1','HTML4','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução à Linguagem Java','10','29','2000'),
('6','MySQL','Bancos de Dados MySQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateado','Danças Rítmicas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','YouTuber','Gerar polêmica e ganhar inscritos','5','2','2018');

-- MANIPULAÇÃO DE LINHAS/REGISTROS DA TABELA:

-- Correção de HTML4 para HTML5
update cursos
set nome = 'HMTL5'
where idcurso = 1;

-- Correção nome PGP para PHP e o ano 2010 para 2015
update cursos
set nome = 'PHP', ano = '2015'
where idcurso = 4;

-- Correção nome Jarva para Java, Carga 10 para 40 e o ano de 2000 para 2015
update cursos
set nome = 'Java', carga = 40, ano = 2015
where idcurso = 5
limit 1; -- limita a quantidade de linhas que posso mexer

delete from cursos
where ano  = 2018
limit 2;

select * from cursos


-- --------------------------------------------------------------------------------
-- NOTAS:
/*
insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nascionalidade)
values
(1, 'Godofredo', '1984-01-02', 'M', 78.5, 1.75, 'Brasil');

/* é permitido usar o default no id, caso você queira um novo ID porem não sabe qual está definido por
conta de ser auto_increment, o mesmo pode ser feito com a variavel nascionalidade uma vez que ele tem
um valor pré-definido, como no exemplo abaixo:

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nascionalidade)
values
(default 'Godofredo', '1984-01-02', 'M', 78.5, 1.75, default);

-- -------------------------------------------------------------------------------------
Eu também posso adicionar uma nova coluna como o primeiro campo do meu baco de dados:

alter table pessoas
add column profissao varchar(10) first;

-- -------------------------------------------------------------------------------------

/* Muda o nome da tablema inteira
alter table pessoas
rename to person;
 */