# TRABALHO 01:  JARVIS - CASA INTELIGENTE
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES <br>

<b>Integrantes do grupo: </b> <br>

Andreângelo Patuzzo: andreangelo.pp@gmail.com <br>
Anne Caroline Silva: carolinesilva4@gmail.com <br>
Caicke Carvalho de Pinheiro: caicke@gmail.com <br>
Emanuel Rampinelli: emanuel_rampinelli@hotmail.com <br>

<b> Integrantes do grupo 2: </b> <br>

Juliana Duarte Arcebi: juliana.acerbi@hotmail.com <br>
Nilzilane Ramos Ricardo Garcia Tosta: naniramosricardo@hotmail.com <br>
Rafaela Amorim Pessin: rafaelapessin@outlook.com <br>
Rebeca Borlini Encarnação: rebecaborlini@gmail.com <br>

### 2.INTRODUÇÃO E MOTIVAÇÃO<br>

<p align = "justify"> Com a evolução dos computadores e das conexões de rede sem fio foi possível o advento da Internet das Coisas (IoT - Internet of Things), possibilitando a comunicação de equipamentos eletrônicos com a internet e entre si. O IoT é base para o desenvolvimento de casas inteligentes, onde as pessoas podem, por exemplo, gerenciar equipamentos que estão em suas casas através da internet e reconhecer padrões, trazendo então, formas de facilitar e agilizar suas vidas. </p>
<p align = "justify"> Imaginando dois irmãos gêmeos idênticos, mesmo sendo iguais em aparência, eles passam por experiências diferentes durante a vida o que influencia, por exemplo, que tenham uma visão de mundo distinta devido às diferentes informações que guardaram. Pode-se fazer uma analogia a isso quando se pensa em casas inteligentes, na qual casas idênticas e com o mesmo sistema de IoT, mas com pessoas diferentes habitando nelas, guardam informações particulares a elas devido às diferentes rotinas e hábitos de seus moradores. Logo, a partir dos bancos de dados que armazenam a usabilidade de cada uma das casas extrai-se informações e padrões diferentes. </p>

### 3.MINI-MUNDO

<p align = "justify"> O sistema proposto é a versão cliente do sistema <b>Jarvis</b>, que possibilitará que as pessoas tenham o controle e monitoramento remoto (por meio da internet) de seus eletroeletrônicos em suas residências. O Jarvis permitirá ao usuário, para cada um dos eletroeletrônicos cadastrados no sistema, ligar ou desligar, monitorar o consumo de energia e ainda permitirá o uso de ações automáticas como apagar todas as luzes da residência caso não haja ninguém em casa. </p>

<p align = "justify"> Um dos grandes benefícios do Jarvis é o conforto, comodidade e economia. As pessoas não precisarão mais ficar reféns de vários controles remotos num simples ato de assistir a um filme utilizando o home theater. E também não precisarão se preocupar quando esquecerem as lâmpadas acesas ao saírem de casa, pois podem apagá-as à distância, ou então, determinar que sejam apagadas em determinado horário mesmo havendo pessoas em casa, isso é útil quando todos já dormiram e lâmpadas ficaram acesas. </p>

<p align = "justify"> A versão cliente do Jarvis é uma aplicativo que deve ser instalado nos smartphones dos usuários, no qual cada um acessa o sistema através de um login e senha, desde que o smartphone tenha conexão com a internet. </p>

<p align = "justify"> O Jarvis é adquirido com um usuário master, pré configurado, que tem permissão para adicionar ou remover novos locais (outra casas), usuários e seus níveis de permissão, imóveis, eletroeletrônicos, sensores. O nível de permissão determina a quais funcionalidades um usuário terá acesso. Isso é desejável quando não se quer permitir que um usuário tenha o controle de algum aparelho específico, sendo útil para que uma criança não tenha o controle de um fogão, por exemplo. </p>

<p align = "justify"> Sensores são estrategicamente posicionados para captar dados dos aparelhos ou do ambiente e os armazenam num banco de dados na nuvem. O banco de dados também guardará os dados relacionados aos moradores (nome, idade, email e nível de acesso), aos cômodos (nome), à casa (nome, país, estado, bairro, logradouro e CEP), aos sensores (nome, descrição do que é capaz de monitorar) e aos eletroeletrônicos (nome, consumo de energia do eletroeletrônico, data/hora que foi ligado, data/hora que foi desligado e status) que serão monitorados e controlados. </p>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)

[Propótipos - JARVIS - Casa Inteligente](https://github.com/CasaInteligenteBD1/trab01/raw/master/arquivos/Jarvis%20-%20Casa%20inteligente.pdf)

#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    
<p align = "justify"> O sistema Jarvis precisa inicialmente dos seguintes relatórios: </p>
<p align = "justify"> - Relatório que informe as casas cadastradas, incluindo as seguintes informações: nome, país, estado, bairro, logradouro e CEP. </p>
<p align = "justify"> - Relatório que informe os dados relacionados aos moradores de cada casa, incluindo as seguintes informações: nome, idade, e-mail, nível de acesso. </p>
<p align = "justify"> - Relatório que informe os eletroetrônicos de uma casa que serão monitorados e controlados, incluindo as seguintes informações: nome, consumo de energia do eletroeletrônico, data/hora que foi ligado, data/hora que foi desligado e status. </p>
<p align = "justify"> - Relatório relacionado aos sensores inclusos em cada casa, incluindo as seguintes informações: nome, descrição do que é capaz de monitorar. </p>
<p align = "justify"> - Relatório do consumo de energia do cômodos que serão monitorados na casa, incluindo as seguintes informações: nome do cômodo, quantidade de eletroeletrônicos, quantidade de lâmpadas. </p>
    
#### 4.2 TABELA DE DADOS DO SISTEMA:
    
[Tabela de Atributos e Registros - Casa Inteligente - JARVIS](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/Tabela%20de%20Atributos%20e%20Registros%20-%20Casa%20Inteligente%20-%20Jarvis%20-%20Casa%20Inteligente%203.xlsx)
    
>## Marco de Entrega 01 em: (02/04/2018)<br>

### 5.MODELO CONCEITUAL<br>

![Alt text](https://github.com/CasaInteligenteBD1/trab01_ci/raw/master/arquivos/Modelo%20Conceitual%20JARVIS.png "Modelo Conceitual - Casa Inteligente - JARVIS")

#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO
    
<b> - Entidade MORADOR: </b>  É uma entidade forte, pois não necessita de outra entidade para existir. 
<p align = "justify"> <b> id_morador: </b> É um atributo chave que irá identificar de forma única a entidade MORADOR, e por esse motivo será a chave primária no banco de dados. </p>
<p align = "justify"> <b> nome: </b> É um atributo simples (atômico) pois recebe um único valor, já que um morador só possui um único nome. </p>
<p align = "justify"> <b> sexo: </b> É um atributo simples (atômico) pois recebe um único valor, já que um morador só pode ser ou do sexo feminino ou do sexo masculino. </p>
<p align = "justify"> <b> data_nasc: </b> É um atributo simples (atômico) pois recebe um único valor, já que um morador possui apenas uma data de nascimento. </p>
<p align = "justify"> <b> login: </b> É um atributo simples (atômico) pois recebe um único valor, ou seja, é possível que o morador tenha apenas um login para acesso ao sistema. </p>
<p align = "justify"> <b> senha: </b> É um atributo simples (atômico) pois recebe um único valor, ou seja, é possível que o morador tenha apenas uma senha para acessar o sistema. </p>
<p align = "justify"> <b> email: </b> É um atributo simples (atômico) pois recebe um único valor, já que optamos pelo cadastro de apenas uma conta de e-mail por usuário. </p>
<p align = "justify"> <b> nivel_acesso: </b> É um atributo multivalorado, já que um morador pode ter vários níveis de acesso diferentes para cada eletroeletrônico cadastrado no local. De acordo com o escopo inicial, o usuário pode ter apenas 2 níveis de acesso, porém, conforme o escopo for crescendo, a quantidade de níveis também pode aumentar. Por este motivo, é mais adequado que o atributo seja desse tipo. </p>

<b> - Entidade LOCAL: </b> É uma entidade forte, pois não necessita de outra entidade para existir.
<p align = "justify"> <b> id_casa: </b> É um atributo chave que irá identificar de forma única a entidade LOCAL, e por esse motivo será a chave primária no banco de dados. </p>
<p align = "justify"> <b> nome: </b> É um atributo simples (atômico) pois recebe um único valor, já que um local cadastrado recebe apenas um único nome. </p>
<p align = "justify"> <b> endereco: </b> É um atributo composto pois um endereço é um elemento divisível, sendo composto por várias partes (logradouro, número, bairro, município, estado, país e CEP). </p>

<b> - Entidade COMODO: </b> É uma entidade fraca, pois necessita da entidade LOCAL para existir. Sem um local, um cômodo não existe.
<p align = "justify"> <b> id_comodo:  </b>É um atributo chave que irá identificar de forma única a entidade COMODO, e por esse motivo será a chave primária no banco de dados. </p>
<p align = "justify"> <b> nome:  </b>É atributo simples (atômico) pois recebe um único valor, já que cada cômodo do local só pode receber apenas um nome. </p>

<b> - Entidade SENSOR: </b> É uma entidade forte, pois não necessita de outra entidade para existir. 
<p align = "justify"> <b> id_sensor: </b> É um atributo chave que irá identificar de forma única a entidade SENSOR, e por esse motivo será a chave primária no banco de dados. </p>
<p align = "justify"> <b> nome: </b> É atributo simples (atômico) pois recebe um único valor, já que cada sensor cadastrado pode receber apenas um único nome. </p>

<b> - Entidade ELETROELETRONICO: </b> É uma entidade forte, pois não necessita de outra entidade para existir.
<p align = "justify"> <b> id_eletro: </b> É um atributo chave que irá identificar de forma única a entidade ELETROELETRONICO, e por esse motivo será a chave primária no banco de dados. </p>
<p align = "justify"> <b> nome: </b> É atributo simples (atômico) pois recebe um único valor, pois um eletreletrônico possui apenas um nome. </p>

<b> - Entidade UTILIZACAO_ELETRO: </b> É uma entidade associativa, devido à necessidade de associar esta entidade ao relacionamento Utiliza.
<p align = "justify"> <b> id_utilizacao: </b> É um atributo chave que irá identificar de forma única a entidade UTILIZACAO, e por esse motivo será a chave primária no banco de dados. </p>
<p align = "justify"> <b> data_eletro_ligado: </b> É um atributo multivalorado, pois um eletroeletrônico pode ser ligado em várias datas diferentes. </p>
<p align = "justify"> <b> data_eletro_desligado: </b> É um atributo multivalorado, pois um eletroeletrônico pode ser desligado em várias datas diferentes. </p>
<p align = "justify"> <b> hora_eletro_ligado: </b> É um atributo multivalorado, pois um eletroeletrônico pode ser ligado em vários horários diferentes. </p>
<p align = "justify"> <b> hora_eletro_desligado: </b> É um atributo multivalorado, pois um eletroeletrônico pode ser desligado em vários horários diferentes. </p>
<p align = "justify"> <b> consumo_mensal: </b> É um atributo multivalorado, pois um eletroeletrônico possui um consumo diferente a cada mês, e este consumo varia no decorrer do mês. Logo, se o usuário solicitar o consumo do mês de maio no dia 15, o valor calculado em KWh será diferente do valor caso seja se solicitado o consumo do mesmo mês no dia 30. </p>
<p align = "justify"> <b> consumo_anual: </b> É um atributo multivalorado, pois um eletroeletrônico possui um consumo diferente a cada ano, e este consumo varia no decorrer do ano. Logo, se o usuário solicitar o consumo do ano de 2017 na data 01 de junho, o valor calculado em KWh será diferente do valor caso seja solicitado o consumo do mesmo ano no dia 31 de dezembro. </p>

>## Marco de Entrega 02 em: (23/04/2018)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>


### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas DDL 
        (criação de tabelas, alterações, etc..)          
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físic
        b) formato .SQL

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (Drop table + Create de tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
>## Marco de Entrega 03 em: (14/05/2018)<br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
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

