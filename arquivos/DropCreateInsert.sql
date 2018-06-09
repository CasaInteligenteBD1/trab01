
/* DROP - EXCLUSÃO DE DADOS */

DROP TABLE IF EXISTS LOCAL;
DROP TABLE IF EXISTS COMODO;
DROP TABLE IF EXISTS PESSOA;
DROP TABLE IF EXISTS ELETROELETRONICO;
DROP TABLE IF EXISTS NIVEL_ACESSO;
DROP TABLE IF EXISTS UTILIZACAO_ELETRO;
DROP TABLE IF EXISTS DATA_USO;
DROP TABLE IF EXISTS ENDERECO;
DROP TABLE IF EXISTS BAIRRO
DROP TABLE IF EXISTS MUNICIPIO;
DROP TABLE IF EXISTS ESTADO;
DROP TABLE IF EXISTS ELETRO_DATA;
DROP TABLE IF EXISTS PESSOA_PERMISSAO;

/* MODELO FÍSICO */


CREATE TABLE LOCAL (
    id_local serial not null,
    nome varchar(25),
    fk_endereco integer,			/* Não foi colocado <fk_endereco> como <not null> pois como não foram inseridos dados na tabela ENDERECO, */
    fk_pessoa integer not null		/* se estivesse como <not null> seria obrigatório inserir esse campo na tabela; mesmo sabendo que <fk_endereco> */
);									/* deveria ser inserido na tabela, não inseri por este motivo */
alter table local add primary key (id_local);

CREATE TABLE PESSOA (
    id_pessoa serial not null,
    nome varchar(70),
    email varchar(60),
    data_nasc date,
    login varchar(30),
    senha varchar(12),
    tipo_pessoa varchar(14)
);
alter table pessoa add primary key (id_pessoa);

CREATE TABLE COMODO (
    id_comodo serial not null,
    nome varchar(25),
    fk_local integer not null
);
alter table comodo add primary key (id_comodo);

CREATE TABLE ELETROELETRONICO (
    id_eletro serial not null,
    nome varchar(50),
    hora time,
    status varchar(9),
    potencia integer,
    fk_comodo integer not null
);
alter table eletroeletronico add primary key (id_eletro);

CREATE TABLE UTILIZACAO_ELETRO (
    id_utilizacao serial not null,
    consumo_kwh float,
    fk_pessoa integer not null,
    fk_eletro integer not null
);
alter table utilizacao_eletro add primary key (id_utilizacao);

CREATE TABLE DATA_USO (
    id_data serial not null,
    data_uso date
);
alter table data_uso add primary key (id_data);

CREATE TABLE ENDERECO (
    id_endereco serial not null,
    cep char(9),
    logradouro varchar(70),
    numero varchar(10),
    fk_bairro integer not null
);
alter table endereco add primary key (id_endereco);

CREATE TABLE BAIRRO (
    id_bairro serial not null,
    nome varchar(50),
    fk_municipio integer not null
);
alter table bairro add primary key (id_bairro);

CREATE TABLE MUNICIPIO (
    id_municipio serial not null,
    nome varchar(50),
    fk_estado integer not null
);
alter table municipio add primary key (id_municipio);

CREATE TABLE ESTADO (
    id_estado serial not null,
    nome char(2)
);
alter table estado add primary key (id_estado);

CREATE TABLE NIVEL_ACESSO (
    id_permissao serial not null,
    descricao text
);
alter table nivel_acesso add primary key (id_permissao);

CREATE TABLE ELETRO_DATA (
    fk_eletro integer not null,
    fk_data_uso integer not null
);

CREATE TABLE PESSOA_PERMISSAO (
    fk_permissao integer not null,
    fk_pessoa integer not null
);
 
ALTER TABLE LOCAL ADD CONSTRAINT FK_LOCAL_ENDERECO
    FOREIGN KEY (FK_ENDERECO)
    REFERENCES ENDERECO (id_endereco)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE LOCAL ADD CONSTRAINT FK_LOCAL_PESSOA
    FOREIGN KEY (FK_PESSOA)
    REFERENCES PESSOA (id_pessoa)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE COMODO ADD CONSTRAINT FK_COMODO_LOCAL
    FOREIGN KEY (FK_LOCAL)
    REFERENCES LOCAL (id_local)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE ELETROELETRONICO ADD CONSTRAINT FK_ELETROELETRONICO_COMODO
    FOREIGN KEY (FK_COMODO)
    REFERENCES COMODO (id_comodo)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE UTILIZACAO_ELETRO ADD CONSTRAINT FK_UTILIZACAO_ELETRO_PESSOA
    FOREIGN KEY (FK_PESSOA)
    REFERENCES PESSOA (id_pessoa)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE UTILIZACAO_ELETRO ADD CONSTRAINT FK_UTILIZACAO_ELETRO_ELETRO
    FOREIGN KEY (FK_ELETRO)
    REFERENCES ELETROELETRONICO (id_eletro)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
    
ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_BAIRRO
	FOREIGN KEY (FK_BAIRRO)
    REFERENCES BAIRRO (id_bairro)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
    
ALTER TABLE BAIRRO ADD CONSTRAINT FK_BAIRRO_MUNICIPIO
    FOREIGN KEY (FK_MUNICIPIO)
    REFERENCES MUNICIPIO (id_municipio)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE MUNICIPIO ADD CONSTRAINT FK_MUNICIPIO_ESTADO
    FOREIGN KEY (FK_ESTADO)
    REFERENCES ESTADO (id_estado)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE ELETRO_DATA ADD CONSTRAINT FK_ELETRO_DATA_1
    FOREIGN KEY (FK_ELETRO)
    REFERENCES ELETROELETRONICO (id_eletro)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE ELETRO_DATA ADD CONSTRAINT FK_ELETRO_DATA_2
    FOREIGN KEY (FK_DATA_USO)
    REFERENCES DATA_USO (id_data)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE PESSOA_PERMISSAO ADD CONSTRAINT FK_PESSOA_PERMISSAO_1
    FOREIGN KEY (FK_PERMISSAO)
    REFERENCES NIVEL_ACESSO (id_permissao)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE PESSOA_PERMISSAO ADD CONSTRAINT FK_PESSOA_PERMISSAO_2
    FOREIGN KEY (FK_PESSOA)
    REFERENCES PESSOA (id_pessoa)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
    
    
/* INSERT - INSERÇÃO DE DADOS */


insert into pessoa (nome, data_nasc, login, senha, email, tipo_pessoa) values 
	('Maria Silva', '1956-07-20', 'maria.silva', 'marias123', 'mariasilva@gmail.com', 'Usuário Master'),
   	('João Almeida', '1980-08-10', 'joao.almeida', 'jao.ida.80', 'joaoalmeida@hotmail.com', 'Usuário Master'),
    ('Ana Laura Almeida', '1990-04-06', 'ana.almeida', 'estrelinha10', 'aninha.laurinha@hotmail.com', 'Usuário Master'),
   	('Bruna Perim Oliveira', '1985-01-01', 'bruna.perim', 'bruninhapo#2', 'bruninha.po@gmail.com', 'Usuário Master'),
    ('Pedro Silva', '1950-04-20', 'pedro.silva', 'p.s.8501', 'pedrosilva@gmail.com', 'Usuário Master'),
	('Vanessa Silva', '1970-02-09', 'vanessa.silva', 'nessinha6789', 'vanessinhasilva@hotmail.com', 'Usuário Master'),
	('Arnaldo Ramos', '1950-03-18', 'arnaldo.ramos', 'naldoarnald@', 'arnaldao.ramos@gmail.com', 'Usuário Master'),
	('Priscila Canário', '1980-09-14', 'priscila.canario', 'pri246#asa@', 'pricanario@gmail.com', 'Usuário Master'),
	('Vinícius Ramos', '1960-09-08', 'vinicius.ramos', 'ramos23467', 'viniciusramos@gmail.com', 'Usuário Master'),
	('Ricardo Augusto Santero', '1980-05-30', 'ricardo.santero', 'losantero808', 'santero@gmail.com', 'Usuário Master');

insert into local (nome, fk_pessoa, fk_endereco) values 			/* Faltou inserir o campo <fk_endereco>, porém não inseri pelo motivo explicado acima: */
	('Casa da Maria', 1, NULL),
	('Escritório do João', 2, NULL),								/* se o campo estivesse como <not null> seria necessário inseri-lo, e como não inseri dados */
    ('Casa da Ana', 3, NULL),										/* na tabela ENDERECO não havia como inserie o <fk_endereco>. Por esse motivo apenas criei o */
   	('Salão Estilo da Bruna', 4, NULL),								/* campo da tabela, mas permitindo valores nulos. */
    ('Empresa FACILITA', 5, NULL),
	('Casa da Va', 6, NULL),
    ('Hamburgueria do Arnaldo', 7, NULL),
	('Casa do Arnaldo', 7, NULL),
	('AP da Pri', 8, NULL),
	('Casa do Vini', 9, NULL),
	('LaCasaSantero', 10, NULL);

insert into comodo (nome, fk_local) values 
	('Quarto da Maria', 1),
	('Sala', 1),
    ('Cozinha', 1),
	('Sala Principal', 2),
	('Recepção', 2),
	('Home', 3),
    ('Cômodo Principal', 3),
    ('Quarto da Ana', 3), 
	('Entrada', 4),
    ('Sala Entrada', 5),
    ('Cozinha', 6),
    ('Quarto', 6),
	('Ambiente Principal', 7),
    ('Quarto do Arnaldo', 8), 
    ('Minha Sala', 9),
    ('Meu Quarto', 9),
    ('Vini Sala', 10),
    ('A cozinha', 11),
    ('A sala', 11);
	
insert into eletroeletronico (nome, status, hora, potencia, fk_comodo) values 
     ('Ar-condicionado Arno', 'Ligado', '06:04:59', 5257.75, 1),
     ('TV Samsung', 'Desligado', '19:48:04', 250.0, 2), 
     ('Microondas', 'Ligado', '12:10:00', 1000.0, 3),
     ('Ventilador da Ana', 'Ligado', '21:58:23', 40.0, 4),
     ('Ar-condicionado', 'Ligado', '10:25:20', 5200.75, 5),
     ('Ar-condicionado Philips', 'Ligado', '20:00:20', 5000.75, 6),
     ('Chuveiro', 'Desligado', '06:15:02', 250.58, 7),
     ('TV 42"', 'Ligado', '08:00:24', 2.0, 8),
     ('Ar', 'Desligado', '07:00:59', 5240.75, 9),
     ('Ar-condicionado', 'Ligado', '08:00:20', 5000.75, 10),
     ('Forno Elétrico', 'Ligado', '22:00:00', 250.80, 11),
     ('TV', 'Ligado', '08:30:00', 258.0, 12),
     ('TV', 'Desligado', '22:30:00', 290.0, 13),
     ('Computador', 'Ligado', '21:58:23', 150.0, 14),
     ('Ar-condicionado', 'Ligado', '17:45:40', 5000.75, 15),
     ('Computador', 'Ligado', '11:58:23', 150.0, 16),
     ('Ventilador da Ana', 'Desligado', '21:58:23', 40.0, 17),
     ('Fogão', 'Ligado', '20:00:00', 250.0, 18),
     ('TV', 'Ligado', '10:30:00', 258.0, 19);

insert into nivel_acesso (descricao) values 
	('Esse nível de permissão é alocado ao Usuário Master, que pode gerenciar o local. Por meio desse nível de permissão é possível
    adicionar locais, cômodos no locais, eletroeletrônicos no cômodos e usuários comuns, além das funções comuns de poder ligar e desligar
    os equipamentos e fazer o monitoramento dos mesmos. Esse nível de acesso é automaticamente alocado a esse tipo de usuário para que ele
    possa controlar o sistema.'),
    ('Esse nível de permissão é alocado à Usuários Comuns, que serão adicionados pelo Master. Por meio desse nível de permissão é possível apenas
     controlar os eletroeletrônicos (ligar e desligar) os quais o Usuário Master liberou, e fazer o monitoramento desses equipamentos.'),
    ('Esse nível de permissão é alocado à Usuários Comuns, que serão adicionados pelo Master. Por meio desse nível de permissão não é possível
    ter acesso ao eletroeletrônico. Uma vez que o Master deu ao usuário comum esse nível em relação a um equipamento, não é possível acessá-lo
    nem memso monitorá-lo.');
 
