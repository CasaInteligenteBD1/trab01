   
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
 
