# TRABALHO 01:  JARVIS - CASA INTELIGENTE
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1 COMPONENTES <br>

<b> Integrantes do grupo (Casa Inteligente -> Estaciona): </b> <br>

Andreângelo Patuzzo: andreangelo.pp@gmail.com <br>
Anne Caroline Silva: carolinesilva4@gmail.com <br>
Caicke Carvalho de Pinheiro: caicke@gmail.com <br>
Emanuel Rampinelli: emanuel_rampinelli@hotmail.com <br>

<b> Integrantes do grupo 2 (EasyMarket -> Casa Inteligente): </b> <br>

Rafaela Amorim Pessin: rafaelapessin@outlook.com <br>

### 2 INTRODUÇÃO E MOTIVAÇÃO <br>

<p align = "justify"> Com a evolução dos computadores e das conexões de rede sem fio foi possível o advento da Internet das Coisas (IoT - Internet of Things), possibilitando a comunicação de equipamentos eletrônicos com a internet e entre si. O IoT é base para o desenvolvimento de casas inteligentes, onde as pessoas podem, por exemplo, gerenciar equipamentos que estão em suas casas através da internet e reconhecer padrões, trazendo então, formas de facilitar e agilizar suas vidas. </p>

<p align = "justify"> Imaginando dois irmãos gêmeos idênticos, mesmo sendo iguais em aparência, eles passam por experiências diferentes durante a vida, o que influencia, por exemplo, que tenham uma visão de mundo distinta devido às diferentes informações que guardaram. Pode-se fazer uma analogia a isso quando se pensa em casas inteligentes, na qual casas idênticas e com o mesmo sistema de IoT, mas com pessoas diferentes habitando nelas, guardam informações particulares a elas devido às diferentes rotinas e hábitos de seus moradores. Logo, a partir dos bancos de dados que armazenam a usabilidade de cada uma das casas, extrai-se informações e padrões diferentes. </p>

<p align = "justify"> Um ambiente automatizado, mais conhecido como Casa Inteligente, necessita de uma tecnologia de apoio. JARVIS é um sistema mobile que auxilia no controle de alguns eletroeletrônicos, equipamentos e outros itens disponíveis em ambientes (familiares e/ou empresariais) que dispõem de projetos de automação residencial. O sistema irá atuar diretamente no dia a dia do usuário, proporcionando a ele praticidade, conforto e até mesmo segurança. </p>

### 3 MINI-MUNDO

<p align = "justify"> O cliente deseja um sistema para controle de ambientes residenciais e/ou empresariais, com projetos de automatização. O aplicativo deve permitir às pessoas que, através de um botão, consigam realizar funções como: acender e apagar as lâmpadas e ligar e desligar eletroeletrônicos. JARVIS oferece uma tecnologia de sistema integrado capaz de controlar remotamente todos os cômodos de um ambiente utilizando um dispositivo mobile. O aplicativo pode ser utilizado em qualquer local que possua projetos de automatização e que contenha equipamentos os quais o aplicativo atende. </p>

<p align = "justify"> Para obter o aplicativo é necessário comprá-lo pelo site de publicidade do JARVIS.  Através do site é possível realizar um cadastro e contratar o sistema. Ao realizar o cadastro, é necessário optar por pagar via boleto bancário, cartão de crédito ou débito. Ao final do seu cadastro, o comprador poderá acessar o sistema sem que haja necessidade de realizar um novo cadastro via aplicativo. O comprador se tornará o gerenciador máximo do local pois será o usuário principal do sistema (damos a ele o nome de Usuário Master) e será responsável por cadastrar locais (casas, empresas, escritórios, lojas, entre outros) no aplicativo, e gerenciá-los. </p>

<p align = "justify"> O Usuário Master pode ser, por exemplo, um morador de uma residência ou um gerente de uma empresa que é responsável por cadastrar, respectivamente, outros moradores da casa ou os funcionários da empresa como pessoas que não podem gerenciar o local, mas podem ou não controlar os eletroeletrônicos de acordo com as permissões dadas a eles, e também podem fazer o monitoramento do consumo de energia (damos a eles o nome de Usuários Comuns). O Master possui o controle sobre todos os locais cadastrados e todos os elementos do local. Ele pode cadastrar no máximo seis locais no aplicativo. Além de poder cadastrar locais e usuários referentes a eles, ele também pode adicionar os cômodos para cada local cadastrado, adicionar os eletroeletrônicos e equipamentos dos cômodos,  e monitorar o consumo de energia de cada local por período selecionado obtendo uma estimativa de valor para aquele período. </p>

<p align = "justify"> A pessoa que possui a conta de Usuário Master dispõe da possibilidade de colocar restrições em relação à utilização dos eletroeletrônicos pelas outras pessoas que utilizam o aplicativo. O Usuário Master possui controle total sobre o(s) ambiente(s). Logo, ele possui controle sobre todos os equipamentos de todos os locais cadastrados, podendo ligá-los, desligá-los a qualquer momento. Porém, ele pode querer colocar algumas restrições de acesso para as outras pessoas, escolhendo qual tipo de acesso cada pessoa pode ter para cada equipamento de cada cômodo. Dessa forma, uma criança, por exemplo, pode ter acesso a lâmpada ou ao computador de um cômodo, mas pode não ter acesso a um fogão. </p>

<p align = "justify"> Para um projeto inicial, o sistema JARVIS está restrito a controlar apenas as funções “liga e desliga” e está disponível apenas para os seguintes eletroeletrônicos: ar-condicionado, computador, lâmpadas, televisão, geladeira, máquina de lavar roupas, microondas, fogão, chuveiro, forno elétrico e ventilador. Sensores são estrategicamente posicionados para captar dados dos aparelhos ou do ambiente e os armazenam em um banco de dados na nuvem. Para o funcionamento dos eletroeletrônicos junto ao aplicativo é necessário conexão Wi-Fi, para que os sensores dos eletrônicos sejam pareados com o aplicativo. </p>

<p align = "justify"> O aplicativo deve notificar os usuários quando algum eletroeletrônico estiver inacessível e os equipamentos devem possuir uma forma de desligamento manual a fim de garantir uma maior segurança aos moradores. A cobrança será mensal e o valor da cota de cobrança será proporcional ao número de usuários cadastrados em cada conta, pelo tempo que o cliente estiver utilizando o  aplicativo. </p>

<p align = "justify"> <b> REGRAS DE NEGÓCIO: </b> </p>

<br align = "justify"> <b> RN01: </b> Todo usuário do sistema deve ser cadastrado. 
<br align = "justify"> <b> RN02: </b> Os perfis de utilização do sistema irão interagir com a administração dos dispositivos controlados.
<br align = "justify"> <b> RN03: </b> A cobrança pela utilização do aplicativo será realizada mensalmente. 
<br align = "justify"> <b> RN04: </b> O valor da cota de cobrança será proporcional ao número de usuários do aplicativo em cada conta.
<br align = "justify"> <b> RN05: </b> O sistema deve ter um único Usuário Master. 
<br align = "justify"> <b> RN06: </b> Todos os equipamentos devem possuir alternativa de controle manual.
<br align = "justify"> <b> RN07: </b> Todo eletroeletrônico atendido pelo aplicativo precisa ser cadastrado para que seja controlado. 
<br align = "justify"> <b> RN08: </b> Existem restrições ou não para cada Usuário Comum, onde depende do Usuário Master restringir ou não um equipamento a ele. 
<br align = "justify"> <b> RN09: </b> O relatório de consumo de energia deve gerar uma estimativa de consumo de acordo com o período selecionado pelo usuário. 
<br align = "justify"> <b> RN10: </b> A estimativa de consumo gerada no relatório de consumo de energia refere-se à três informações: ao gasto de energia por eletroeletrônico dentre todos presentes no local em KWh, ao gasto total de energia em KWh (soma dos gastos de cada equipamento) e à estimativa de valor gasto naquele período.
<br align = "justify"> <b> RN11: </b> Deve ser possível cadastrar no máximo seis locais/ambientes. 
<br align = "justify"> <b> RN12: </b> O pagamento mensal pelo contrato do sistema pode ser realizado por boleto bancário, cartão de crédito ou débito. 
<br align = "justify"> <b> RN13: </b> Apenas pessoas com idade maior ou igual a 18 anos podem contratar o sistema.
<br align = "justify"> <b> RN14: </b> Para contratar o sistema é necessário realizar um cadastro pelo site do JARVIS, a partir do qual é possível acessá-lo sem a necessidade de um novo cadastro pelo aplicativo. 
<br align = "justify"> <b> RN15: </b> Após realizar o cadastro, o aplicativo somente será liberado para uso após confirmação do pagamento. 
<br align = "justify"> <b> RN16: </b> Clientes em atraso têm até 15 dias para realizar o pagamento. Após esse período, o aplicativo será desativado para uso. 
<br align = "justify"> <b> RN17: </b> Somente é possível cadastrar cômodos se um local já estiver cadastrado. Da mesma forma, somente é possível cadastrar moradores e eletroeletrônicos se os cômodos estiverem cadastrados. 
<br align = "justify"> <b> RN18: </b> O sistema deve manter o histórico de consumo de energia. Portanto, é possível selecionar um período passado. 
<br align = "justify"> <b> RN19: </b> Deve haver dispositivo de contenção para caso de falta de energia. 

### 4 RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)

[Propótipos - JARVIS - Casa Inteligente](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/JARVIS%20Proto%CC%81tipos.pdf)

#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    
<p align = "justify"> O sistema JARVIS precisa inicialmente dos seguintes relatórios: </p>

<p align = "justify"> - Relatório dos locais cadastrados em cada conta de Usuário Master, incluindo as seguintes informações: nome do local, nome do Usuário Master, país, estado, município, bairro, logradouro, número e CEP. </p>

<p align = "justify"> - Relatório que informe os dados relacionados às pessoas de cada local e sua relação de acesso aos eletroeletrônicos, incluindo as seguintes informações: nome da pessoa, idade, e-mail, nome do eletroeletrônico, tipo do eletroeletrônico, cômodo em que está o eletroeletrônico e nível de acesso por eletroeletrônico. </p>

<p align = "justify"> - Relatório que informe os eletroetrônicos de um local, incluindo as seguintes informações: nome do eletroeletrônico, local onde está o eletroeletrônico, cômodo em que está o eletroeletrônico, tipo de eletroeletrônico. </p>

<p align = "justify">  - Relatório que informe o periodo do mês de maior utilização de eletroeletrônicos: nome do eletroeletrônico, status do eletroeletrônico, datas de interval, horas de intervalo. </p>

<p align = "justify"> - Relatório do consumo de energia dos locais/ambientes cadastrados, incluindo as seguintes informações: nome do local, nome do eletroeletrônico, potência do eletroeletrônico, consumo em KWh por eletroeletrônico, consumo total em KWh, consumo total em reais (R$) e datas de intervalo. </p>
    
#### 4.2 TABELA DE DADOS DO SISTEMA:
    
[Tabela de Atributos e Registros - Casa Inteligente - JARVIS](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/Tabela%20de%20Atributos%20e%20Registros%20-%20Casa%20Inteligente%20-%20Jarvis%20(Junta).xlsx)
    
>## Marco de Entrega 01 em: (02/04/2018)<br>

### 5. MODELO CONCEITUAL<br>

    Modelo Conceitual

![Alt text](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/Modelo%20Conceitual%20-%20JARVIS.png "Modelo Conceitual - Casa Inteligente - JARVIS")

    Notação UML

![Alt text](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/Diagrama%20de%20Classes%20-%20JARVIS.png "Notação UML - Casa Inteligente - JARVIS")

#### 5.1 Validação do Modelo Conceitual
    
    Estaciona: Andreângelo, Emanuel, Caicke e Anne Caroline
    Super Market: Antônio, Jennifer, Joel e Larissa

#### 5.2 DECISÕES DE PROJETO
    
•	Foi normalizado o endereço para padronizar os dados, evitando o armazenamento de vários dados  que representem a mesma coisa. <br>
•	Optou-se por não criar uma entidade sensor já que, para o projeto inicial, existe apenas um tipo de sensor para todos os eletroeletrônicos. <br>
•	Foi criada a entidade DATA_USO para que estabelecesse uma relação de utilização do eletroeletrônico em uma determinada data sem que houvesse o armazenamento de muitas datas repetidas. Sem essa tabela, o número de dados redundantes seria muito grande. Se um eletroeletrônico fosse ligado e desligado dez vezes em um mesmo dia, iria armazenar a mesma data dez vezes. <br>
•	Apesar de existirem apenas dois níveis de acesso aos eletroeletrônicos no projeto inicial, optou-se por criar a entidade NIVEL_ACESSO, pensando na possibilidade de existirem mais níveis de permissão com o desenvolvimento do projeto. <br>

<b> Em relação aos tipos dos atributos de cada tabela: </b> <br>

<b> ENTIDADE PESSOA: </b> É uma entidade forte, pois não necessita de outra entidade para existir. <br>

•	id_pessoa: É um atributo chave que irá identificar de forma única a entidade PESSOA, e por esse motivo será a chave primária no banco de dados. <br>
•	nome: É um atributo simples (atômico) pois recebe um único valor, já que um morador só possui um único nome. <br>
•	data_nasc: É um atributo simples (atômico) pois recebe um único valor, já que um morador possui apenas uma data de nascimento. <br>
•	login: É um atributo simples (atômico) pois recebe um único valor, ou seja, é possível que a pessoa tenha apenas um login para acesso ao sistema. <br>
•	senha: É um atributo simples (atômico) pois recebe um único valor, ou seja, é possível que a pessoa tenha apenas uma senha para acessar o sistema. <br>
•	email: É um atributo simples (atômico) pois recebe um único valor, já que optamos pelo cadastro de apenas uma conta de e-mail por usuário. <br>

<b> ENTIDADE LOCAL: </b> É uma entidade forte, pois não necessita de outra entidade para existir. <br>

•	id_local: É um atributo chave que irá identificar de forma única a entidade LOCAL, e por esse motivo será a chave primária no banco de dados. <br>
•	nome: É um atributo simples (atômico) pois recebe um único valor, já que um local cadastrado recebe apenas um único nome. <br>

<b> ENTIDADE ENDERECO: </b> <br>

•	id_endereco: É um atributo chave que irá identificar de forma única a entidade ENDERECO, e por esse motivo será a chave primária no banco de dados. <br>
•	cep: É um atributo simples (atômico) pois recebe um único valor, já que um endereço cadastrado tem apenas um único CEP. <br>
•	logradouro: É um atributo simples (atômico) pois recebe um único valor, já que um endereço cadastrado tem apenas um único logradouro. <br>
•	numero: É um atributo simples (atômico) pois recebe um único valor, já que um endereço cadastrado recebe apenas um único número referente ao logradouro. <br>

<b> ENTIDADE BAIRRO: </b> <br>

•	id_bairro: É um atributo chave que irá identificar de forma única a entidade BAIRRO, e por esse motivo será a chave primária no banco de dados. <br>
•	nome: É um atributo simples (atômico) pois recebe um único valor, já que um bairro cadastrado recebe apenas um único nome. <br>

<b> ENTIDADE MUNICIPIO: </b> <br>

•	id_municipio: É um atributo chave que irá identificar de forma única a entidade MUNICIPIO, e por esse motivo será a chave primária no banco de dados. <br>
•	nome: É um atributo simples (atômico) pois recebe um único valor, já que um município cadastrado recebe apenas um único nome. <br>

<b> ENTIDADE ESTADO: </b> <br>

•	id_estado: É um atributo chave que irá identificar de forma única a entidade ESTADO, e por esse motivo será a chave primária no banco de dados. <br>
•	nome: É um atributo simples (atômico) pois recebe um único valor, já que um estado cadastrado recebe apenas um único nome. <br>

<b> ENTIDADE COMODO: </b> É uma entidade fraca, pois necessita da entidade LOCAL para existir. Sem um local, um cômodo não existe. <br>

•	id_comodo: É um atributo chave que irá identificar de forma única a entidade COMODO, e por esse motivo será a chave primária no banco de dados. <br>
•	nome: É atributo simples (atômico) pois recebe um único valor, já que cada cômodo do local só pode receber apenas um nome. <br>

<b> ENTIDADE ELETROELETRONICO: </b> É uma entidade forte, pois não necessita de outra entidade para existir. <br>

•	id_eletro: É um atributo chave que irá identificar de forma única a entidade ELETROELETRONICO, e por esse motivo será a chave primária no banco de dados. <br>
•	nome: É atributo simples (atômico) pois recebe um único valor, pois um eletreletrônico possui apenas um nome. <br>
•	status: É atributo simples (atômico) pois recebe um único valor, pois um eletreletrônico so pode estar ligado ou desligado em um determinado momento. <br>
•	hora: É atributo simples (atômico) pois recebe um único valor. <br>
•	potencia: É atributo simples (atômico) pois recebe um único valor, pois um eletreletrônico possui apenas uma potência (em Watts). <br>

<b> ENTIDADE DATA_USO: </b> <br>

•	id_data: É um atributo chave que irá identificar de forma única a entidade DATA_USO, e por esse motivo será a chave primária no banco de dados. <br>
•	data_uso: É um atributo simples (atômico) utilizado para armazenar várias datas diferentes dentro de uma tabela de datas. <br>

<b> ENTIDADE UTILIZACAO_ELETRO: </b> É uma entidade associativa, devido à necessidade de associar esta entidade ao relacionamento Utiliza. <br>

•	id_utilizacao: É um atributo chave que irá identificar de forma única a entidade UTILIZACAO, e por esse motivo será a chave primária no banco de dados. <br>
•	consumo_kwh: É um atributo derivado, pois através de um cálculo realizado com a potência do eletroeletrônico obtêm-se o consumo em KWh, e através deste consumo é possível saber o consumo semanal, mensal, anual ou em reais (moeda). <br>

<b> ENTIDADE NIVEL_ACESSO: </b> <br>

•	id_permissao: É um atributo chave que irá identificar de forma única a entidade NIVEL_ACESSO, e por esse motivo será a chave primária no banco de dados. <br>
•	descricao: É atributo simples (atômico) pois recebe um único valor, pois um tipo de permissão possui uma única descrição. <br>

>## Marco de Entrega 02 em: (23/04/2018)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 

<b> ENTIDADE PESSOA: </b> Tabela que armazena os dados pessoais dos usuários (Master ou Comum) do aplicativo JARVIS. <br>

•	id_pessoa: Campo do tipo serial que contém o código identificador de cada pessoa/usuário do aplicativo. <br>
•	nome: Campo do tipo varchar que armazena o nome da pessoa. Exemplo: 'Maria da Silva'. <br>
•	data_nasc: Campo do tipo date que armazena a data de nascimento da pessoa. Exemplo: '20/06/1980'.  <br>
•	login: Campo do tipo varchar que armazena o nome do login de acesso da pessoa no aplicativo. Exemplo: 'maria.dasilva'. <br>
•	senha: Campo do tipo varchar que armazena a senha de acesso da pessoa no aplicativo. Exemplo: 'maria@123s80'. <br>
•	email: Campo do tipo varchar que armazena o endereço de e-mail da pessoa. Exemplo: 'mariadasilva@gmail.com'. <br>

<b> ENTIDADE LOCAL: </b> Tabela que armazena os dados dos locais/ambientes que serão adicionados pelo Master. <br>

•	id_casa: Campo do tipo serial que contém o código identificador de cada local (casa, escritório, empresa) cadastrado em um conta. <br>
•	nome: Campo do tipo varchar que armazena o nome fictício dado a cada local. Exemplo: 'Casa da Maria'. <br>

<b> ENTIDADE ENDERECO: </b> Tabela que armazena os dados do endereço onde localiza-se o local. <br>

•	id_endereco: Campo do tipo serial que contém o código identificador de cada endereço referente a cada local. <br>
•	cep: Campo do tipo char que armazena o Código de Endereçamento Postal (CEP). Exemplo: '29140-070'. <br>
•	logradouro: Campo do tipo varchar que armazena o nome da rua/avenida em que localiza-se o local cadastrado. Exemplo: 'Rua Humaitá'. <br>
•	numero: Campo do tipo varchar que armazena o número da rua/avenida. Exemplo: '2345'. <br>

<b> ENTIDADE BAIRRO: </b> Tabela que armazena os dados do bairro onde localiza-se o local. <br>

•	id_bairro: Campo do tipo serial que contém o código identificador de cada bairro referente a cada local. <br>
•	nome: Campo do tipo varchar que armazena o nome do bairro. Exemplo: 'Jardim América'. <br>

<b> ENTIDADE MUNICIPIO: </b> Tabela que armazena os dados do município onde localiza-se o local. <br>

•	id_municipio: Campo do tipo serial que contém o código identificador de cada município referente a cada local. <br>
•	nome: Campo do tipo varchar que armazena o nome do município. Exemplo: 'Cariacica'. <br>

<b> ENTIDADE ESTADO: </b> Tabela que armazena os dados do Estado onde localiza-se o local. <br>

•	id_estado: Campo do tipo serial que contém o código identificador de cada Estado/Unidade Federativa (UF) referente a cada local. <br>
•	nome: Campo do tipo char que armazena o nome do Estado/Unidade Federativa (UF). Exemplo: 'ES'. <br>

<b> ENTIDADE COMODO: </b> Tabela que armazena os dados dos cômodos do local. <br>

•	id_comodo: Campo do tipo serial que contém o código identificador de cada cômodo do local. <br>
•	nome: Campo do tipo varchar que armazena o nome fictício dado ao cômodo do local. Exemplo: 'Quarto da Ana'. <br>

<b> ENTIDADE ELETROELETRONICO: </b> Tabela que armazena os dados dos eletroeletrônicos dos cômodos. <br>

•	id_eletro: Campo do tipo serial que contém o código identificador de cada eletroeletrônico presente em casa cômodo. <br>
•	nome: Campo do tipo varchar que armazena o nome fictício dado ao eletroeletrônico presente no cômodo. Exemplo: 'Ar-condicionado Arno'. <br>
•	status: Campo do tipo varchar que armazena a situação em que se encontra um eletroeletrônico em determinado momento, informando se ele está ligado ou desligado. Exemplo: 'Ligado'. <br>
•	hora: Campo do tipo time que armazena a hora em que o eletroeletrônico foi ligado ou desligado. Este campo apenas armazena a hora, o que determina se ele foi ligado ou desligado é o seu status. Exemplo: ‘10:20:36.000’. <br>
•	potencia: Campo do tipo integer que armazena a potência em Watts do eletroeletrônico. Exemplo: 40. <br>

<b> ENTIDADE DATA_USO: </b> Tabela que armazena os dados referentes às datas que foram utilizados os equipamentos do local. <br>

•	id_data: Campo do tipo serial que contém o código identificador das datas de utilização dos eletroeletrônicos presentes em casa cômodo. <br>
•	data_uso: Campo do tipo date que armazena a data em que foi usado o eletroeletrônico. Exemplo: '04/05/2018'. <br>

<b> ENTIDADE UTILIZACAO_ELETRO: </b> Tabela que armazena os dados referentes à utilização do eletroeletrônico. <br>

•	id_utilizacao: Campo do tipo serial que contém o código identificador da utilização dos eletroeletrônicos presentes em casa cômodo. <br>
•	consumo_kwh: Campo do tipo float que armazena o valor do consumo de energia elétrica em KWh. Exemplo: 46,08. <br>

<b> ENTIDADE NIVEL_ACESSO: </b> Tabela que armazena os dados sobre os níveis de acesso (permissões) dadas aos Usuários Comuns. <br>

•	id_permissao: Campo do tipo serial que contém o código identificador do nível de permissão de cada usuário. <br>
•	descricao: Campo do tipo text que armazena um texto com a descrição dos níveis de acesso. Exemplo: 'A pessoa possui controle sobre o equipamento em questão, podendo ligá-lo e desligá-lo'.  <br>


### 6	MODELO LÓGICO<br>

![Alt text](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/Modelo%20Lo%CC%81gico%20-%20JARVIS.png "Modelo Lógico - JARVIS")

### 7	MODELO FÍSICO<br>

[Modelo Físico](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/ModeloFisico.sql)
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES

[Insert](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/Insert.sql)

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS

[Create + Insert](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/CreateInsert.sql)

#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (Drop table + Create de tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
>## Marco de Entrega 03 em: (14/05/2018)<br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>

    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.
    
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

    select * from comodo;
![Alt text](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/select%20from%20comodo.PNG "Select - Cômodos")

    select * from eletroeletronico;
![Alt text](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/select%20from%20eletroeletronico.PNG "Select - Eletroeletrônicos")

    select * from local;
![Alt text](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/select%20from%20local.PNG "Select - Local")

    select * from nivel_acesso;
![Alt text](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/select%20from%20nivel_acesso.PNG "Select - Nível Acesso")

    select * from pessoa;
![Alt text](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/select%20from%20pessoa.PNG "Select - Pessoa")

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

    select * from eletroeletronico where status='Ligado';
![Alt text](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/select%20from%20eletroeletronico%20where%20status%3D'Ligado'.PNG "Where - Status Ligado")

    select id_eletro, nome, hora from eletroeletronico where status='Desligado';
![Alt text](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/select%20id_eletro%2C%20nome%2C%20hora%20from%20eletroeletronico%20where%20status%3D'Desligado'.PNG "Where - Status Deligado")

    select id_eletro, nome, potencia, fk_comodo from eletroeletronico where potencia>=1000;
![Alt text](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/select%20id_eletro%2C%20nome%2C%20potencia%2C%20fk_comodo%20from%20eletroeletronico%20where%20potencia1000.PNG "Where - Potência")

    select id_pessoa, nome, data_nasc from pessoa where data_nasc<='1980-01-01';
![Alt text](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/select%20id_pessoa%2C%20nome%2C%20data_nasc%20from%20pessoa%20where%20data_nasc'1980-01-01'%3B.PNG "Where - Data Nascimento")

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    
    select * from eletroeletronico where status='Ligado' and potencia<300;
![Alt text](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/select%20%20from%20eletroeletronico%20where%20status%3D'Ligado'%20and%20potencia300%3B.PNG "Operadores Lógicos 1")
    
    select * from eletroeletronico where hora>='12:00:00' and hora<='20:00:00';
![Alt text](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/select%20%20from%20eletroeletronico%20where%20hora'120000'%20and%20hora'200000'%3B.PNG "Operadores Lógicos 2")    
    
    select * from comodo where not fk_local=4 and not fk_local=5 and not fk_local=7 and not fk_local=8 and not fk_local=10;
![Alt text](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/select%20%20from%20comodo%20where%20not%20fk_local%3D4%20and%20not%20fk_local%3D5%20and%20not%20fk_local%3D7%20and%20not%20fk_local%3D8%20and%20not%20fk_local%3D10.PNG "Operadores Lógicos 3")    
    
    select * from comodo where nome='Sala' or nome='Sala Principal' or nome='Sala Entrada' or nome='Minha Sala';
![Alt text](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/select%20%20from%20comodo%20where%20nome%3D'Sala'%20or%20nome%3D'Sala%20Principal'%20or%20nome%3D'Sala%20Entrada'or%20nome%3D'Minha%20Sala'.PNG "Operadores Lógicos 4")    
    
    select * from eletroeletronico where (nome='TV' or nome='TV Samsung' or nome='42"') and (hora<'12:00:00') and (not potencia=2.0);
 ![Alt text]( "Operadores Lógicos 5")   
    
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

>## Marco de Entrega 04 em: (04/06/2017)<br>
    
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 13   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
>## Marco de Entrega Final em: (25/06/2018)<br>
        
### 14  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/



    

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")

