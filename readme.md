# TRABALHO 01:  Indexador de vagas de Emprego
Trabalho desenvolvido durante a disciplina de BD1

### 1. Componentes<br>
Integrantes do grupo<br>
Erick Kenzo Komati: kenzo.komati@gmail.com <br>
Jhonata Polito Demuner: jhonata.demuner@gmail.com <br>
<br>

### 2. Mini-mundo<br>

> O cliente deseja uma forma de conectar empresas e candidatos, porém observou uma grande deficiência no mercado de plataformas para busca de vagas, especificamente de uma forma que seja possível reunir perfis profissionais, empregadores, e suas respectivas oportunidades de trabalho.<br>
> Desta forma, a ideia da empresa é transformar a experiência de busca de vagas em algo acolhedor, simples, eficiente e altamente intuitivo. Acredita-se que, para conectar candidatos a empregadores de forma eficaz, é fundamental oferecer uma plataforma que forneça aos profissionais em busca de oportunidades de carreira, ampla transparência e possibilidades de contato durante a mesma.<br>
>A ideia se sustenta em três principais pilares - o profissional, a vaga de emprego e o empregador. Para tal, acredita-se que surge a necessidade do gerenciamento das informações pertencentes ao profissional, de forma a permitir ao empregador visibilidade durante eventual procura por novos funcionários. Simultaneamente, também ocorrerá o controle dos perfis atrelados aos próprios empregadores, viabilizando que os aspirantes possam determinar se tais empresas suprem suas ambições de ofício.<br>
>Também seria de suma importância o controle das vagas, que seriam disponibilizadas pelos proponentes, permitindo que os mesmos possam filtrar possíveis candidatos cujas competências se encaixem com os atributos desejados. Os candidatos, por sua vez, receberão recomendações de vagas compatíveis, baseadas nas informações fornecidas pelos mesmos, sendo notificados em tempo real, e podendo se candidatar às mesmas.<br>
>Seria desejável fornecer aos empregadores uma forma direta de contactar possíveis candidatos que possam possuir interesse em vagas existentes e cujas habilidades sejam consideradas correspondentes às especificações. Os candidatos, por sua vez, podem interagir com os empregadores a partir desse momento, porém não podem iniciar nenhuma interação com possíveis recrutadores.<br>
>Serão fornecidas aos profissionais utilizantes indicações de oportunidades que permitiriam a melhora de seus currículos, e forma de adquirir maior visibilidade em seus perfis. Recomendações para melhoria de habilidades, obtenção de certificações e realização de cursos também serão exibidas de acordo com o perfil profissional do candidato.

### 3. Perguntas a serem respondidas<br>

> A Empresa Shupy precisa inicialmente dos seguintes relatórios:
> * Relatório pode fornecer informações sobre o progresso dos candidatos em seu desenvolvimento profissional, como cursos concluídos, certificações obtidas, atualizações de currículo e recomendações para aprimoramento profissional.
> * Relatório pode acompanhar a comunicação entre candidatos e empregadores, incluindo o número de interações, o tempo médio de resposta, a satisfação do usuário, etc.
> * Relatório pode incluir recomendações de vagas para candidatos com base em suas informações de perfil. Ele pode indicar o número de vagas recomendadas, a taxa de aceitação dessas recomendações e quais habilidades ou certificações estão sendo mais recomendadas.
> * Relatório pode incluir informações sobre o número de vagas disponíveis, setores de emprego mais demandados, requisitos comuns em vagas, localizações das vagas e outros dados relevantes.
> * Relatório pode fornecer estatísticas sobre os tipos de profissionais que utilizam a plataforma, suas habilidades, experiência, localização geográfica, setor de atuação, etc.

### 4. MODELO CONCEITUAL<br>

![image](https://github.com/kenzokomati/DB/assets/109813173/eb9cdf67-b110-4c71-98fd-2492bcf2cd42)

> #### Principais fluxos de informação: <br>
> Profissional -> Vaga <br>
> Profissional > Habilidade <br>
> Profissional > TipoContato <br>
> Empregador -> Vaga <br>
> Empregador -> Conversa <br>
> Conversa -> Profissional <br>
> Recomendacao -> Profissional <br>
> Vaga -> Recomendacao <br>
> Vagaa -> Habilidade <br>


    
#### 5.1. Validação do Modelo Conceitual
> [Grupo1](https://github.com/filipesuhett/Trabalho-BD-1-Veiculos): [Bruno Plazzi](https://github.com/brunoplazzi), Caio Daniel Meireles de Souza, [Filipe Suhett](https://github.com/filipesuhett), Giovanna Scalfoni<br>
> [Grupo2](https://github.com/JP-76/TrabalhoBD1): [Filipe Moura](https://github.com/filipeabmoura), [João Pedro Spinassé](https://github.com/JP-76), [Marllon Ribeiro](https://github.com/Toiste), [Samuel Ferreira](https://github.com/samoleu)

#### 5.2. Descrição dos dados 

> CLIENTE: Tabela que armazena as informações relativas ao cliente.
> * CPF (Primary Key): Campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa. Este atributo é único para cada cliente e é usado como chave primária.
> * Status_Profissional: Campo que descreve o status de profissional do cliente, indicando se ele é um profissional em busca de emprego ou não.
> * Nome: Campo que armazena o nome completo do cliente.
> * Contato: Campo que contém informações de contato do cliente, como número de telefone, endereço de e-mail, ou outros meios de contato.
> * Endereço: Campo que armazena informações sobre o endereço do cliente, incluindo cidade, estado, bairro, rua, número, CEP e complemento, se aplicável.
> * Status de Busca de Emprego: Campo que indica o status atual da busca de emprego do cliente, como "Empregado", "Desempregado", "Estudante", etc.
> * Faixa Salarial Desejada: Campo que especifica a faixa salarial desejada pelo cliente, que pode ser um valor único ou um intervalo, como "R$ 40.000 - R$ 50.000".
> * Preferência de Modalidade de Trabalho: Campo que descreve a preferência do cliente em relação à modalidade de trabalho, como "Trabalho Remoto", "Período Integral", "Meio Período", etc.
> * Área de Atuação: Campo que indica a área de atuação profissional do cliente, como "Tecnologia da Informação", "Saúde", "Engenharia", etc.

> EMPREGADOR: Tabela que armazena informações relativas ao empregador.
> * CPF/CNPJ (Primary Key): Campo que armazena o número de Cadastro de Pessoa Física (CPF) ou Cadastro Nacional da Pessoa Jurídica (CNPJ) para cada empregador da empresa. Este atributo é único para cada empregador e é usado como chave primária.
> * Nome: Campo que armazena o nome da empresa ou do empregador.
> * Descrição de Serviços/Produtos: Campo que descreve os serviços ou produtos oferecidos pela empresa ou empregador.
> * CEP: Campo que armazena o Código de Endereçamento Postal (CEP) da localização do empregador.
> * Informações de Contato: Campo que contém informações de contato do empregador, como número de telefone, endereço de e-mail, ou outros meios de contato.

> VAGA: Tabela que armazena informações sobre vagas de emprego.
> * Título: Campo que contém o título da vaga de emprego, descrevendo o cargo ou posição disponível.
> * Descrição: Campo que fornece uma descrição detalhada da vaga, incluindo responsabilidades, funções e outros detalhes relevantes sobre o trabalho.
> * Requisitos Obrigatórios: Campo que lista os requisitos essenciais que os candidatos devem atender para se candidatar à vaga. Isso pode incluir qualificações, habilidades específicas, experiência mínima, etc.
> * Requisitos Desejáveis: Campo que lista os requisitos que não são estritamente necessários, mas que são desejáveis para os candidatos. Isso pode incluir habilidades adicionais ou experiência relevante que seria uma vantagem.
> * Localização: Campo que indica a localização física onde a vaga está localizada, como cidade e estado.
> * Estilo de Trabalho: Campo que descreve o estilo de trabalho associado à vaga, como "Presencial", "Remoto", "Híbrido" ou qualquer outro formato específico.
> * Nível Salarial: Campo que especifica o intervalo de salário oferecido para a vaga, como "R$ 4.000 - R$ 5.000" ou qualquer outra faixa salarial relevante.
> * Tipo de Contrato: Campo que indica o tipo de contrato associado à vaga, podendo ser "Temporário", "Integral" (permanente), "Parcial" ou outro tipo específico.

### 6.	MODELO LÓGICO<br>
![image](https://github.com/kenzokomati/DB/assets/109813173/28e4ec88-2863-4f43-9c4c-d148ff71820a)



### 7.	[MODELO FÍSICO](modelo_fisico.sql) <br>

      
### 8.	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) Script das instruções relativas a inclusão de dados 
	Requisito mínimo: (Script dev conter: Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        OBS
	1) Criar um novo banco de dados para testar a restauracao (em caso de falha na restauração o grupo não pontuará neste quesito)
        2) script deve ser incluso no template em um arquivo no formato .SQL


### 9.	TABELAS E PRINCIPAIS CONSULTAS<br>
    
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>


    SELECT * FROM profissional p;

![tabela_profissional](https://github.com/jhonataplt/trabalho-bd-01/assets/103711264/326a533a-e35f-408d-a618-a9f732a54d89)
<br>

    SELECT * FROM empregador e;

![tabel_empresa](https://github.com/jhonataplt/trabalho-bd-01/assets/103711264/c88a1a7e-dd2d-4c53-af06-22e8c7976d77)
<br>

    SELECT * FROM vaga v;

![tabela_vaga](https://github.com/jhonataplt/trabalho-bd-01/assets/103711264/4f381c6b-8db7-4425-87f3-81278c4b5a62)
<br>

    SELECT * FROM contato c:

![tabela_contato](https://github.com/jhonataplt/trabalho-bd-01/assets/103711264/a8735db6-b64c-44d3-9472-a5f745428e2a)
<br>

    SELECT * FROM recomendacao r;

![tabela_recomendacao](https://github.com/jhonataplt/trabalho-bd-01/assets/103711264/8954ab9f-46fb-4429-868e-713e0144883c)
<br>

#### 9.2.	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

#### 9.3.	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4.	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5.	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização

#### 9.6.	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

#### 9.7.	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

#### 9.8.	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo

#### 9.9.	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10.	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

># Marco de Entrega 03: Do item 9.2 até o ítem 9.10 (10 PTS)<br>

### 10 RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

    

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

># Marco de Entrega 04: Itens 10 e 11 (20 PTS) <br>
<br>
<br>




### 12 FORMATACAO NO GIT:<br> 
https://help.github.com/articles/basic-writing-and-formatting-syntax/
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
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


