# TRABALHO 01:  Título do Trabalho
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Andreângelo Patuzzo: andreangelo.pp@gmail.com<br>
Anne Caroline Silva: carolinesilva4@gmail.com<br>
Caicke Carvalho de Pinheiro: caicke@gmail.com<br>
Emanuel Rampinelli: emanuel_rampinelli@hotmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>

Com a evolução dos computadores e das conexões de rede sem fio foi possível o advento da Internet das Coisas (IoT - Internet of Things), possibilitando a comunicação de equipamentos eletrônicos com a internet e entre si. O IoT é base para o desenvolvimento de casas inteligentes, onde as pessoas podem, por exemplo, gerenciar equipamentos que estão em suas casas através da internet e reconhecer padrões, trazendo então, formas de facilitar e agilizar suas vidas.<br><br>
Imaginando dois irmãos gêmeos idênticos, mesmo sendo iguais em aparência, eles passam por experiências diferentes durante a vida o que influencia, por exemplo, que tenham uma visão de mundo distinta devido às diferentes informações que guardaram. Pode-se fazer uma analogia a isso quando se pensa em casas inteligentes, na qual casas idênticas e com o mesmo sistema de IoT, mas com pessoas diferentes habitando nelas, guardam informações particulares a elas devido às diferentes rotinas e hábitos de seus moradores. Logo, a partir dos bancos de dados que armazenam a usabilidade de cada uma das casas extrai-se informações e padrões diferentes.
<br>

### 3.MINI-MUNDO

<br>O sistema proposto é a versão cliente do sistema <b>Jarvis</b>, que possibilitará que as pessoas tenham o controle e monitoramento remoto (por meio da internet) de seus eletroeletrônicos em suas residências. O Jarvis permitirá ao usuário, para cada um dos eletroeletrônicos cadastrados no sistema, <b>ligar ou desligar, monitorar o consumo de energia e ainda permitirá o uso de ações automáticas como apagar todas as luzes da residência caso não haja ninguém em casa.</b><br><br>

Um dos grandes benefícios do Jarvis é o conforto, comodidade e economia. As pessoas não precisarão mais ficar reféns de vários controles remotos num simples ato de assistir a um filme utilizando o home theater. E também não precisarão se preocupar quando esquecerem as lâmpadas acesas ao saírem de casa, pois podem apagá-as à distância, ou então, determinar que sejam apagadas em determinado horário mesmo havendo pessoas em casa, isso é útil quando todos já dormiram e lâmpadas ficaram acesas.<br><br>

A versão cliente do Jarvis é uma aplicativo que deve ser instalado nos smartphones dos usuários, no qual cada um acessa o sistema através de um login e senha, desde que o smartphone tenha conexão com a internet.<br><br>

O Jarvis é adquirido com um usuário master, pré configurado, que tem permissão para adicionar ou remover novos locais (outra casas), usuários e seus níveis de permissão, imóveis, eletroeletrônicos, sensores. O nível de permissão determina a quais funcionalidades um usuário terá acesso. Isso é desejável quando não se quer permitir que um usuário tenha o controle de algum aparelho específico, sendo útil para que uma criança não tenha o controle de um fogão, por exemplo.<br><br>

Sensores são estrategicamente posicionados para captar dados dos aparelhos ou do ambiente e os armazenam num banco de dados na nuvem. O banco de dados também guardará os dados relacionados aos moradores (nome, idade, email e nível de acesso), aos cômodos (nome), à casa (nome, país, estado, bairro, logradouro e CEP), aos sensores (nome, descrição do que é capaz de monitorar) e aos eletroeletrônicos (nome, consumo de energia do eletroeletrônico, data/hora que foi ligado, data/hora que foi desligado e status) que serão monitorados e controlados.
<br>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

[Propótipo - Jarvis : Casa Inteligente](https://github.com/CasaInteligenteBD1/trab01/raw/3a77edd9fb45be0c516769015dbe6a74ddd23b9b/arquivos/Jarvis%20-%20Casa%20inteligente.pdf "Title")

#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    
    <br>O sistema Jarvis precisa inicialmente dos seguintes relatórios: <br>
    <br>- Relatório que informe as casas cadastradas, incluindo as seguintes informações: nome, país, estado, bairro, logradouro e CEP.<br>
    <br>- Relatório que informe os dados relacionados aos moradores de cada casa, incluindo as seguintes informações: nome, idade, e-mail, nível de acesso. <br>
    <br>- Relatório que informe os eletroetrônicos de uma casa que serão monitorados e controlados, incluindo as seguintes informações: nome, consumo de energia do eletroeletrônico, data/hora que foi ligado, data/hora que foi desligado e status. <br>
   <br> - Relatório relacionados aos sensores inclusos em cada casa, incluindo as seguintes informações: nome, descrição do que é capaz de monitorar. <br>
   <br> - Relatório do consumo de energia do cômodos que serão monitorados na casa, incluindo as seguintes informações: nome do cômodo, quantidade de eletroeletrônicos, quantidade de lâmpadas. <br>
    
#### 4.2 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    e deve ser criada antes do modelo conceitual
    c) Após criada esta tabela não deve ser modificada, pois será comparada com a tabela final na conclusão do trabalho
    
>## Marco de Entrega 01 em: (02/04/2018)<br>

### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO 
        * Para nosso prótótipo limitaremos o modelo conceitual nas 6 principais entidades do escopo
        * O protótipo deve possui no mínimo duas relações N para N
        * o mínimo de entidades do modelo conceitual será igual a 5
        
![Alt text](https://github.com/discipbd1/trab01/blob/master/images/concept_sample.png?raw=true "Modelo Conceitual")
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

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


