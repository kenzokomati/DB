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
> * Relatório pode informar quantidade de profissionais por área de atuação.
> * Relatório pode acompanhar a comunicação entre candidatos e empregadores, incluindo o número de interações, pessoas/empresas envolvidas, etc.
> * Relatório pode informar o número de profissionais inscritas em vagas.
> * Relatório pode incluir informações sobre o número de vagas disponíveis, setores de emprego mais demandados, requisitos comuns em vagas, localizações das vagas e outros dados relevantes.
> * Relatório pode fornecer estatísticas sobre os perfil dos profissionais que utilizam a plataforma, incluindo suas habilidades, experiência, localização geográfica, setor de atuação, etc.

### 4. MODELO CONCEITUAL<br>

![image](https://github.com/kenzokomati/DB/assets/109813173/6b0b2706-8a82-4c93-a85d-e5af9b7f7a73)

> #### Principais entidades do sistema: Profissional, Vaga e Empregador. São as principais entidades envolvidas para a conexão entre empresa e profissional buscando vaga.

> #### Principais fluxos de informação: <br>
> Profissional -> Vaga <br>
> Profissional > Habilidade <br>
> Empresa -> Vaga <br>
> Empresa -> Conversa <br>
> Conversa -> Profissional <br>
> Vaga -> Habilidade <br>
    
#### 5.1. Validação do Modelo Conceitual
> [Grupo1](https://github.com/filipesuhett/Trabalho-BD-1-Veiculos): [Bruno Plazzi](https://github.com/brunoplazzi), Caio Daniel Meireles de Souza, [Filipe Suhett](https://github.com/filipesuhett), Giovanna Scalfoni<br>
> [Grupo2](https://github.com/JP-76/TrabalhoBD1): [Filipe Moura](https://github.com/filipeabmoura), [João Pedro Spinassé](https://github.com/JP-76), [Marllon Ribeiro](https://github.com/Toiste), [Samuel Ferreira](https://github.com/samoleu)

#### 5.2. Descrição dos dados 

> Profissional: Tabela que armazena as informações relativas ao cliente.
> * CPF: Campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa. Este atributo é único para cada cliente e é usado como chave primária.
> * Status_Profissional: Campo que descreve o status de profissional do cliente, indicando se ele é um profissional em busca de emprego ou não.
> * Nome: Campo que armazena o nome completo do cliente.
> * Contato: Campo que contém informações de contato do cliente, como número de telefone, endereço de e-mail, ou outros meios de contato.
> * Endereço: Campo que armazena informações sobre o endereço do cliente, incluindo cidade, estado, bairro, rua, número, CEP e complemento, se aplicável.
> * Status de Busca de Emprego: Campo que indica o status atual da busca de emprego do cliente, como "Empregado", "Desempregado", "Estudante", etc.
> * Pretensão Salarial Desejada: Campo que especifica a faixa salarial desejada pelo cliente, que pode ser um valor único ou um intervalo, como "R$ 40.000 - R$ 50.000".
> * Preferência de Modalidade de Trabalho: Campo que descreve a preferência do cliente em relação à modalidade de trabalho, como "Trabalho Remoto", "Período Integral", "Meio Período", etc.
> * Área de Atuação: Campo que indica a área de atuação profissional do cliente, como "Tecnologia da Informação", "Saúde", "Engenharia", etc.

> EMPRESA: Tabela que armazena informações relativas ao empregador.
> * CNPJ: Campo que armazena o número de adastro Nacional da Pessoa Jurídica (CNPJ) para cada empregador da empresa. Este atributo é único para cada empregador e é usado como chave primária.
> * Nome: Campo que armazena o nome da empresa ou do empregador.
> * Descrição de Serviços/Produtos: Campo que descreve os serviços ou produtos oferecidos pela empresa ou empregador.
> * CEP: Campo que armazena o Código de Endereçamento Postal (CEP) da localização do empregador.

> VAGA: Tabela que armazena informações sobre vagas de emprego.
> * Codigo: Identificação única da entidade.
> * Título: Campo que contém o título da vaga de emprego, descrevendo o cargo ou posição disponível.
> * Descrição: Campo que fornece uma descrição detalhada da vaga, incluindo responsabilidades, funções e outros detalhes relevantes sobre o trabalho.
> * Localização: Campo que indica a localização física onde a vaga está localizada, como cidade e estado.
> * Estilo de Trabalho: Campo que descreve o estilo de trabalho associado à vaga, como "Presencial", "Remoto", "Híbrido" ou qualquer outro formato específico.
> * Salario base: Campo que especifica o valor de salário inicial ofertado pela empresa para dada vaga.
> * Salario maximo: Campo que especifica o valor máximo ofertado pela empresa para dada vaga.
> * Tipo de Contrato: Campo que indica o tipo de contrato associado à vaga, podendo ser "Temporário", "Integral" (permanente), "Parcial" ou outro tipo específico.
> * Data de anúncio: Campo informa a data que a vaga foi anunciada na plataforma.
> * Data limite: Campo que especifica data em que a vaga se encerra.

> HABILIDADE: Campo que lista as skills do profissional e os requisitos essenciais que os candidatos devem atender para se candidatar à vaga. Isso pode incluir qualificações, habilidades específicas, etc.
> * Codigo: Identificação única da entidade.
> * Nome habilidade: Campo informa a habilidade possuida.
> * Tipo: Campo que especifica se a habilidade é uma Soft skill ou Hard skill.
> * Area de atuação: Campo informa a área em qual a habilidade se aplica.

> CONVERSA
> * Codigo: Identificação única da entidade.
> * Mensagem: Campo contém conteúdo da mensagem da conversa.
> * Data: Campo contém data que a mensagem foi enviada.

### 6.	MODELO LÓGICO<br>
![image](https://github.com/kenzokomati/DB/assets/109813173/8b010445-e9b7-44aa-a2ff-40d0dc4c2ca7)

### 7.	[MODELO FÍSICO](modelo_fisico.sql) <br>

	DROP TABLE IF EXISTS PROFISSIONAL_HABILIDADE;
	DROP TABLE IF EXISTS VAGA_HABILIDADE;
	DROP TABLE IF EXISTS PROFISSIONAL_VAGA;
	DROP VIEW vaga_data_inscricao;
	DROP TABLE IF EXISTS VAGA;
	DROP TABLE IF EXISTS CONVERSA;
	DROP TABLE IF EXISTS PROFISSIONAL;
	DROP TABLE IF EXISTS EMPREGADOR;
	DROP TABLE IF EXISTS EMPRESA;
	DROP TABLE IF EXISTS HABILIDADE;
	
	CREATE TABLE PROFISSIONAL (
	    cpf VARCHAR PRIMARY KEY,
	    nome VARCHAR,
	    endereco VARCHAR,
	    status_busca BOOLEAN,
	    pretensao_salarial DECIMAL,
	    modalidade_trabalho VARCHAR,
	    area_atuacao VARCHAR
	);
	
	CREATE TABLE EMPREGADOR (
	    nome VARCHAR,
	    area_atuacao VARCHAR,
	    cnpj VARCHAR PRIMARY KEY,
	    cep INTEGER
	);
	
	CREATE TABLE VAGA (
	    titulo VARCHAR,
	    descricao VARCHAR,
	    requisito VARCHAR,
	    localizacao VARCHAR,
	    modalidade VARCHAR,
	    salario_base DECIMAL,
	    salario_maximo DECIMAL,
	    tipo_contrato VARCHAR,
	    data_anuncio DATE,
	    data_fim DATE,
	    codigo DECIMAL PRIMARY KEY,
	    anunciante VARCHAR
	);
	
	ALTER TABLE VAGA ADD FOREIGN KEY (anunciante) REFERENCES EMPREGADOR (cnpj) ON DELETE CASCADE;
	
	CREATE TABLE PROFISSIONAL_VAGA (
	    profissional VARCHAR,
	    vaga DECIMAL,
	    data_inscricao DATE  
	);
	
	ALTER TABLE PROFISSIONAL_VAGA ADD FOREIGN KEY (profissional) REFERENCES PROFISSIONAL (cpf) ON DELETE CASCADE;
	ALTER TABLE PROFISSIONAL_VAGA ADD FOREIGN KEY (vaga) REFERENCES VAGA (codigo) ON DELETE CASCADE;
	
	CREATE TABLE HABILIDADE (
	    codigo DECIMAL PRIMARY KEY,
	    nome VARCHAR,
	    tipo VARCHAR,
	    area_atuacao VARCHAR
	);
	
	CREATE TABLE PROFISSIONAL_HABILIDADE (
	    profissional VARCHAR,
	    habilidade DECIMAL
	);
	
	ALTER TABLE PROFISSIONAL_HABILIDADE ADD FOREIGN KEY (profissional) REFERENCES PROFISSIONAL (cpf) ON DELETE CASCADE;
	ALTER TABLE PROFISSIONAL_HABILIDADE ADD FOREIGN KEY (habilidade) REFERENCES HABILIDADE (codigo) ON DELETE CASCADE;
	
	CREATE TABLE VAGA_HABILIDADE (
	    vaga DECIMAL,
	    habilidade DECIMAL
	);
	
	ALTER TABLE VAGA_HABILIDADE ADD FOREIGN KEY (vaga) REFERENCES VAGA (codigo) ON DELETE CASCADE;
	ALTER TABLE VAGA_HABILIDADE ADD FOREIGN KEY (habilidade) REFERENCES HABILIDADE (codigo) ON DELETE CASCADE;
	
	CREATE TABLE CONVERSA (
	    codigo DECIMAL PRIMARY KEY,
	    mensagem VARCHAR,
	    data_hora TIMESTAMP,
	    remetente VARCHAR,
	    destinatario VARCHAR
	);
	
	ALTER TABLE CONVERSA ADD FOREIGN KEY (remetente) REFERENCES EMPREGADOR (cnpj) ON DELETE CASCADE;
	ALTER TABLE CONVERSA ADD FOREIGN KEY (destinatario) REFERENCES PROFISSIONAL (cpf) ON DELETE CASCADE;
 
### 8.	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
	
	-- Inserindo mais dados na tabela PROFISSIONAL
	INSERT INTO PROFISSIONAL VALUES
	('11122233344', 'João Silva', 'Rua A, 123', true, 5000.00, 'Presencial', 'TI'),
	('22233344455', 'Maria Oliveira', 'Av. B, 456', true, 6000.00, 'Remoto', 'Marketing'),
	('33344455566', 'Carlos Santos', 'Rua C, 789', false, 4500.00, 'Presencial', 'Engenharia'),
	('44455566677', 'Ana Oliveira', 'Av. D, 987', true, 5500.00, 'Remoto', 'TI'),
	('55566677788', 'Pedro Rocha', 'Rua E, 654', false, 4800.00, 'Presencial', 'Engenharia'),
	('66677788899', 'Fernanda Silva', 'Av. F, 321', true, 6200.00, 'Remoto', 'Marketing'),
	('77788899900', 'Lucas Santos', 'Rua G, 987', false, 5100.00, 'Presencial', 'TI'),
	('88899900011', 'Juliana Lima', 'Av. H, 654', true, 5800.00, 'Remoto', 'Marketing'),
	('99900011122', 'Ricardo Oliveira', 'Rua I, 789', false, 4900.00, 'Presencial', 'Engenharia'),
	('12345678900', 'Amanda Costa', 'Av. J, 123', true, 6700.00, 'Remoto', 'TI');
	
	-- Inserindo mais dados na tabela EMPREGADOR
	INSERT INTO EMPREGADOR VALUES
	('Empresa A', 'TI', '123456789012034', 54321),
	('Empresa B', 'Marketing', '560789012345678', 98765),
	('Empresa C', 'Engenharia', '901234560789012', 12345),
	('Empresa D', 'TI', '345678901230456', 23456),
	('Empresa E', 'Engenharia', '789010234507890', 87654),
	('Empresa F', 'Marketing', '12345678901234', 54321),
	('Empresa G', 'TI', '567890123450678', 98765),
	('Empresa H', 'Engenharia', '901234567890012', 12345),
	('Empresa I', 'Marketing', '345678900123456', 23456),
	('Empresa J', 'TI', '789012345067890', 87654);
	
	-- Inserindo mais dados na tabela VAGA
	INSERT INTO VAGA VALUES
	('Desenvolvedor Web', 'Desenvolvimento de sites', 'Experiência em HTML, CSS, JavaScript', 'São Paulo', 'Híbrido', 6000.00, 8000.00, 'CLT', '2023-11-01', '2023-12-01', 1, '123456789012034'),
	('Analista de Marketing', 'Elaboração de estratégias de marketing', 'Experiência em redes sociais', 'Rio de Janeiro', 'Remoto', 5000.00, 7000.00, 'PJ', '2023-11-02', '2023-12-02', 2, '560789012345678'),
	('Engenheiro Civil', 'Projeto e execução de obras', 'Experiência em AutoCAD', 'Belo Horizonte', 'Presencial', 7000.00, 9000.00, 'CLT', '2023-11-03', '2023-12-03', 3, '901234560789012'),
	('Analista de Dados', 'Análise de dados para tomada de decisão', 'Experiência em SQL e Python', 'São Paulo', 'Híbrido', 6500.00, 8500.00, 'CLT', '2023-11-04', '2023-12-04', 4, '345678901230456'),
	('Engenheiro Eletricista', 'Projeto e execução de instalações elétricas', 'Experiência em CAD', 'Rio de Janeiro', 'Presencial', 7200.00, 9200.00, 'CLT', '2023-11-05', '2023-12-05', 5, '789010234507890'),
	('Designer Gráfico', 'Criação de peças visuais', 'Experiência em Adobe Creative Suite', 'Belo Horizonte', 'Remoto', 5500.00, 7500.00, 'PJ', '2023-11-06', '2023-12-06', 6, '12345678901234'),
	('Desenvolvedor Mobile', 'Desenvolvimento de aplicativos para dispositivos móveis', 'Experiência em React Native', 'São Paulo', 'Remoto', 7000.00, 9000.00, 'PJ', '2023-11-07', '2023-12-07', 7, '567890123450678'),
	('Analista de SEO', 'Otimização de conteúdo para motores de busca', 'Experiência em ferramentas de análise SEO', 'Rio de Janeiro', 'Presencial', 6000.00, 8000.00, 'CLT', '2023-11-08', '2023-12-08', 8, '901234567890012'),
	('Analista Financeiro', 'Análise e controle de finanças', 'Experiência em Excel e contabilidade', 'São Paulo', 'Remoto', 5800.00, 7800.00, 'PJ', '2023-11-09', '2023-12-09', 9, '345678900123456'),
	('Analista de Recursos Humanos', 'Recrutamento e seleção', 'Experiência em entrevistas e avaliação de candidatos', 'Belo Horizonte', 'Presencial', 5500.00, 7500.00, 'CLT', '2023-11-10', '2023-12-10', 10, '789012345067890');
	
	-- Inserindo mais dados na tabela PROFISSIONAL_VAGA
	INSERT INTO PROFISSIONAL_VAGA VALUES
	('11122233344', 1, '2023-01-01'),
	('22233344455', 2, '2023-02-01'),
	('33344455566', 3, '2023-03-01'),
	('44455566677', 4, '2023-04-01'),
	('55566677788', 5, '2023-05-01'),
	('66677788899', 6, '2023-06-01'),
	('77788899900', 7, '2023-07-01'),
	('88899900011', 8, '2023-08-01'),
	('99900011122', 9, '2023-09-01'),
	('12345678900', 10, '2023-10-01');
	
	-- Inserindo mais dados na tabela HABILIDADE
	INSERT INTO HABILIDADE VALUES
	(1, 'Programação', 'Hard', 'TI'),
	(2, 'Marketing Digital', 'Hard', 'Marketing'),
	(3, 'Projeto de Obras', 'Hard', 'Engenharia'),
	(4, 'Análise de Dados', 'Hard', 'TI'),
	(5, 'CAD', 'Hard', 'Engenharia'),
	(6, 'Adobe Creative Suite', 'Hard', 'Design'),
	(7, 'React Native', 'Hard', 'TI'),
	(8, 'Liderança', 'Soft', 'Comportamental'),
	(9, 'Oratória', 'Soft', 'Comportamental'),
	(10, 'Trabalho em equipe', 'Soft', 'Comportamental');
	
	-- Inserindo mais dados na tabela PROFISSIONAL_HABILIDADE
	INSERT INTO PROFISSIONAL_HABILIDADE VALUES
	('11122233344', 1),
	('22233344455', 2),
	('33344455566', 3),
	('44455566677', 4),
	('55566677788', 5),
	('66677788899', 6),
	('77788899900', 7),
	('88899900011', 8),
	('99900011122', 9),
	('12345678900', 10);
	
	-- Inserindo mais dados na tabela VAGA_HABILIDADE
	INSERT INTO VAGA_HABILIDADE VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9),
	(10, 10);
	
	-- Inserindo mais dados na tabela CONVERSA
	INSERT INTO CONVERSA VALUES
	(1, 'Olá, temos interesse em sua candidatura.', '2023-01-10 08:00:00', '123456789012034', '11122233344'),
	(2, 'Gostaríamos de agendar uma entrevista.', '2023-02-15 10:30:00', '560789012345678', '22233344455'),
	(3, 'Discussão sobre detalhes do projeto.', '2023-03-20 14:45:00', '901234560789012', '33344455566'),
	(4, 'Convite para entrevista presencial.', '2023-04-10 09:15:00', '345678901230456', '44455566677'),
	(5, 'Detalhes sobre a vaga de Engenheiro Eletricista.', '2023-05-15 11:45:00', '789010234507890', '55566677788'),
	(6, 'Discussão sobre prazos de entrega.', '2023-06-20 15:30:00', '12345678901234', '66677788899'),
	(7, 'Agendamento de teste prático.', '2023-07-25 10:00:00', '567890123450678', '77788899900'),
	(8, 'Entrevista para vaga de Analista de SEO.', '2023-08-30 14:00:00', '901234567890012', '88899900011'),
	(9, 'Detalhes sobre a vaga de Analista Financeiro.', '2023-09-05 09:30:00', '345678900123456', '99900011122'),
	(10, 'Convite para entrevista presencial de Recrutamento.', '2023-10-12 10:00:00', '789012345067890', '12345678900');

### 9.	TABELAS E PRINCIPAIS CONSULTAS<br>

https://colab.research.google.com/drive/15rgaSOQa76Fq6dMLtPfG7LJmF8TpsrZ0?usp=sharing

#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

#### 9.2.	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

#### 9.3.	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)

#### 9.4.	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>

#### 9.5.	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

#### 9.6.	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>

#### 9.7.	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>

#### 9.8.	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>

#### 9.9.	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>

#### 9.10.	SUBCONSULTAS (Mínimo 4)<br>

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


