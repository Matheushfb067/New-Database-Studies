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
(DEFAULT, 'Maria' , '1999-05-30' , 'F' , '75.9' , '1.70' , 'Portugal' ),
-- 56 novos registros para totalizar 60 pessoas
(default, 'Lucas Andrade', '1990-03-12', 'M', 82.4, 1.82, 'Brasil'),
(default, 'Juliana Costa', '1988-11-05', 'F', 64.2, 1.68, 'Brasil'),
(default, 'Marcos Silva', '1995-07-19', 'M', 75.1, 1.79, 'Brasil'),
(default, 'Fernanda Lima', '2001-02-27', 'F', 58.0, 1.60, 'Portugal'),
(default, 'Rafael Gomes', '1999-09-11', 'M', 70.3, 1.72, 'Brasil'),
(default, 'Carolina Souza', '1997-08-30', 'F', 54.7, 1.55, 'Espanha'),
(default, 'Tiago Ribeiro', '1985-12-12', 'M', 85.0, 1.88, 'Brasil'),
(default, 'Amanda Ferreira', '2002-01-14', 'F', 59.3, 1.63, 'Brasil'),
(default, 'Luiz Alberto', '1993-05-09', 'M', 90.2, 1.90, 'Brasil'),
(default, 'Patrícia Borges', '1989-04-21', 'F', 67.5, 1.70, 'Brasil'),
(default, 'Eduardo Pires', '1996-10-10', 'M', 72.0, 1.75, 'Brasil'),
(default, 'Sara Dutra', '2000-06-01', 'F', 56.8, 1.61, 'Chile'),
(default, 'Gabriel Rocha', '2003-03-03', 'M', 68.4, 1.73, 'Brasil'),
(default, 'Viviane Lopes', '1994-01-24', 'F', 62.9, 1.66, 'Brasil'),
(default, 'Jorge Matos', '1987-09-18', 'M', 79.1, 1.80, 'Portugal'),
(default, 'Bruna Serra', '1998-02-02', 'F', 57.1, 1.58, 'Brasil'),
(default, 'Sérgio Nunes', '1992-07-07', 'M', 83.3, 1.84, 'Brasil'),
(default, 'Isabela Prado', '2001-12-13', 'F', 60.2, 1.64, 'Argentina'),
(default, 'Fábio Coelho', '1990-05-15', 'M', 78.5, 1.77, 'Brasil'),
(default, 'Renata Martins', '1993-11-25', 'F', 65.8, 1.69, 'Brasil'),
(default, 'Arthur Mendes', '2004-10-30', 'M', 74.0, 1.80, 'Brasil'),
(default, 'Nicole Andrade', '1999-07-06', 'F', 55.2, 1.57, 'EUA'),
(default, 'Diego Farias', '1991-03-29', 'M', 82.0, 1.85, 'Brasil'),
(default, 'Camila Rezende', '1997-05-18', 'F', 61.7, 1.65, 'Brasil'),
(default, 'Paulo Henrique', '1986-02-17', 'M', 88.4, 1.87, 'Brasil'),
(default, 'Larissa Pontes', '1995-09-23', 'F', 63.9, 1.67, 'México'),
(default, 'Henrique Salgado', '1998-11-08', 'M', 76.5, 1.78, 'Brasil'),
(default, 'Beatriz Furtado', '2003-04-19', 'F', 52.8, 1.52, 'Brasil'),
(default, 'João Victor', '1996-08-12', 'M', 81.3, 1.82, 'Brasil'),
(default, 'Letícia Correia', '2002-01-27', 'F', 59.9, 1.63, 'Brasil'),
(default, 'Marcelo Pinto', '1984-12-31', 'M', 86.0, 1.89, 'Brasil'),
(default, 'Helena Duarte', '2000-10-15', 'F', 58.7, 1.62, 'Portugal'),
(default, 'César Azevedo', '1992-06-06', 'M', 73.3, 1.74, 'Brasil'),
(default, 'Marina Rocha', '1997-03-22', 'F', 60.4, 1.66, 'Brasil'),
(default, 'Otávio Teixeira', '1994-01-09', 'M', 78.2, 1.79, 'Brasil'),
(default, 'Ana Júlia', '2001-09-25', 'F', 54.3, 1.55, 'Itália'),
(default, 'Vitor Hugo', '1990-11-02', 'M', 91.1, 1.92, 'Brasil'),
(default, 'Melissa Brito', '1993-07-07', 'F', 63.5, 1.68, 'Brasil'),
(default, 'Wesley Moura', '1999-03-17', 'M', 69.9, 1.73, 'Brasil'),
(default, 'Daniela Torres', '1998-01-03', 'F', 58.1, 1.61, 'Brasil'),
(default, 'Igor Fernandes', '2002-11-11', 'M', 75.8, 1.77, 'Brasil'),
(default, 'Alice Cunha', '2003-05-04', 'F', 57.5, 1.59, 'Brasil'),
(default, 'Ricardo Alves', '1991-04-12', 'M', 84.3, 1.86, 'Brasil'),
(default, 'Elaine Cardoso', '1996-09-30', 'F', 61.4, 1.65, 'Brasil'),
(default, 'Murilo Araújo', '1998-12-14', 'M', 70.7, 1.76, 'Brasil'),
(default, 'Valentina Dias', '2001-07-03', 'F', 56.9, 1.60, 'Argentina'),
(default, 'Alexandre Ribeiro', '1987-08-21', 'M', 90.0, 1.88, 'Brasil'),
(default, 'Yasmin Duarte', '1999-10-29', 'F', 59.3, 1.63, 'Brasil'),
(default, 'Caio Oliveira', '1990-06-18', 'M', 80.5, 1.81, 'Brasil'),
(default, 'Natália Mendes', '1997-11-26', 'F', 62.1, 1.66, 'Chile'),
(default, 'Thiago Castro', '1995-02-08', 'M', 72.4, 1.75, 'Brasil'),
(default, 'Sofia Martins', '2004-04-14', 'F', 55.5, 1.57, 'Brasil'),
(default, 'Bruno Carvalho', '1989-09-17', 'M', 79.8, 1.80, 'Portugal'),
(default, 'Mirela Porto', '2000-12-02', 'F', 58.6, 1.62, 'Brasil');

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
('10','YouTuber','Gerar polêmica e ganhar inscritos','5','2','2018'),
('11','Python Básico','Introdução à linguagem Python','30','22','2019'),
('12','Python Avançado','Técnicas avançadas com Python','40','28','2020'),
('13','JavaScript Moderno','ES6+ e boas práticas','25','20','2021'),
('14','React para Iniciantes','Fundamentos do React e hooks','35','26','2022'),
('15','Node.js','Back-end com JavaScript','40','30','2020'),
('16','TypeScript','TS para projetos escaláveis','30','24','2021'),
('17','C++ Essencial','Fundamentos da linguagem C++','45','32','2018'),
('18','C# e .NET','Desenvolvimento com C#','40','27','2022'),
('19','Rust','Fundamentos da linguagem Rust','35','25','2023'),
('20','Go (Golang)','Programação em Go','30','21','2022'),
('21','Kotlin','Desenvolvimento Android','40','30','2021'),
('22','Swift','Desenvolvimento iOS','40','28','2020'),
('23','PHP Moderno','PHP 8 e boas práticas','35','26','2023'),
('24','Ruby on Rails','Aplicações web com Rails','30','24','2020'),
('25','SQL Avançado','Consultas avançadas e otimização','45','35','2022'),
('26','MongoDB','Banco de dados NoSQL','30','20','2021'),
('27','DevOps','CI/CD, Docker e Kubernetes','50','40','2023'),
('28','Segurança da Informação','Fundamentos de cybersegurança','30','18','2024'),
('29','Machine Learning','Aprendizado de máquina com Python','60','45','2023'),
('30','Data Science','Ciência de dados aplicada','60','42','2024');

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

/*select * from cursos
order by nome;*/

select nome, carga, ano
from cursos
order by nome desc;

/*select nome, carga
from cursos
where ano = 2016
order by nome;*/

select * from cursos
where ano = 2016
order by nome;

select nome, descricao
from cursos
where ano <= 2015
order by ano;

-- Operador Between e and dentro da condicional em SQL
select nome, ano
from cursos
where ano between 2014 and 2016
order by ano desc, nome asc; -- ordena os anos em forma decrescente e os nomes em ordem crescente

select idcurso, nome
from cursos
where ano in ('2014', '2016', '2018')
order by nome;

select * from cursos
where carga > 35 and totalAulas < 30;

select * from cursos
where nome like 'P%';

/* Começa com ph e termina com p
select * from cursos
where nome like 'ph%p';*/

/*select * from cursos
where nome like 'ph%p_'; -- exige que tenha algo após o ultimo p*/

select * from pessoas
where nome like '%_silva%'; -- procura uma pessoa que tenha silva no nome

select distinct nascionalidade from pessoas
order by nascionalidade;

select count(*) from cursos; -- conta todos os cursos

-- conta todos os cursos cuja carga seja maior que 40
select count(*) from cursos
where carga > 40;

select max(carga) from cursos;

select max(totalAulas) from cursos
where ano = 2016;

select min(totalAulas) from cursos
where ano = 2016;

select sum(totalAulas) from cursos
where ano = 2016;

select avg(totalAulas) from cursos
where ano = 2016;

select totalAulas from cursos
group by totalAulas;

select totalAulas, count(*) from cursos
group by totalAulas;

-- agrupa quantos cursos tem 20 aulas totais por meio da carga
select carga, totalAulas from cursos
where totalAulas = 20
group by carga;

select carga, count(nome) from cursos
where totalAulas = 20
group by carga;

select ano, count(*) from cursos
group by ano
having count(ano) >= 2;

select ano, count(*) from cursos
where totalAulas > 30
group by ano
having count(ano) >= 2
order by count(*) desc;

select avg(carga) from cursos; -- mostra a media de horas dos cursos

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos); -- junção de dois selects!

alter table pessoas add column cursopreferido int;

alter table pessoas
add foreign key (cursopreferido)
references cursos(idcurso);

desc pessoas;

select * from pessoas;
select * from cursos;

update pessoas set cursopreferido = 6
where id = 1;

select * from pessoas;

select nome, cursopreferido from pessoas;
select nome, ano from cursos;

select pessoas.nome, pessoas.cursopreferido, cursos.nome, cursos.ano
from pessoas
join cursos;

-- mostra agora de forma mais organizada o curso preferido de qualquer pessoa
select pessoas.nome, cursos.nome, cursos.ano
from pessoas join cursos
on cursos.idcurso = pessoas.cursopreferido -- on define como duas tabelas se relacionan em uma junção
order by pessoas.nome;

-- Mesma bloco de cima, mas com uma melhor pratica de apelidar os comandos visando encurtar os nomes dos atributos!
select p.nome, c.nome, c.ano
from pessoas as p join cursos as c
on c.idcurso = p.cursopreferido -- on define como duas tabelas se relacionan em uma junção
order by p.nome;
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