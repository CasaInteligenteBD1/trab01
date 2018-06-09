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
  
