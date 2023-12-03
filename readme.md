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

![conceitual](https://github.com/kenzokomati/DB/assets/109813173/85070fa7-4995-45ad-a05f-b00ac66dd323)

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
> * Endereço: Campo que armazena informações sobre o endereço do cliente, sendo ele o pais onde reside.
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
> * Localização: Campo que indica a localização física onde a vaga está localizada, pais de origem.
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

![logico](https://github.com/kenzokomati/DB/assets/109813173/cd78a434-ff04-4b5c-88d7-24ff61d0cf18)

### 7.	[MODELO FÍSICO](modelo_fisico.sql) <br>

	DROP VIEW IF EXISTS VAGA_DATA_INSCRICAO;
	DROP TABLE IF EXISTS PROFISSIONAL_HABILIDADE;
	DROP TABLE IF EXISTS VAGA_HABILIDADE;
	DROP TABLE IF EXISTS PROFISSIONAL_VAGA;
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
	    cep VARCHAR
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
	    codigo VARCHAR PRIMARY KEY,
	    anunciante VARCHAR
	);
	
	ALTER TABLE VAGA ADD FOREIGN KEY (anunciante) REFERENCES EMPREGADOR (cnpj) ON DELETE CASCADE;
	
	CREATE TABLE PROFISSIONAL_VAGA (
	    profissional VARCHAR,
	    vaga VARCHAR,
	    data_inscricao DATE  
	);
	
	ALTER TABLE PROFISSIONAL_VAGA ADD FOREIGN KEY (profissional) REFERENCES PROFISSIONAL (cpf) ON DELETE CASCADE;
	ALTER TABLE PROFISSIONAL_VAGA ADD FOREIGN KEY (vaga) REFERENCES VAGA (codigo) ON DELETE CASCADE;
	
	CREATE TABLE HABILIDADE (
	    codigo VARCHAR PRIMARY KEY,
	    nome VARCHAR,
	    tipo VARCHAR,
	    area_atuacao VARCHAR
	);
	
	CREATE TABLE PROFISSIONAL_HABILIDADE (
	    profissional VARCHAR,
	    habilidade VARCHAR
	);
	
	ALTER TABLE PROFISSIONAL_HABILIDADE ADD FOREIGN KEY (profissional) REFERENCES PROFISSIONAL (cpf) ON DELETE CASCADE;
	ALTER TABLE PROFISSIONAL_HABILIDADE ADD FOREIGN KEY (habilidade) REFERENCES HABILIDADE (codigo) ON DELETE CASCADE;
	
	CREATE TABLE VAGA_HABILIDADE (
	    vaga VARCHAR,
	    habilidade VARCHAR
	);
	
	ALTER TABLE VAGA_HABILIDADE ADD FOREIGN KEY (vaga) REFERENCES VAGA (codigo) ON DELETE CASCADE;
	ALTER TABLE VAGA_HABILIDADE ADD FOREIGN KEY (habilidade) REFERENCES HABILIDADE (codigo) ON DELETE CASCADE;
	
	CREATE TABLE CONVERSA (
	    codigo VARCHAR PRIMARY KEY,
	    mensagem VARCHAR,
	    data_hora TIMESTAMP,
	    remetente VARCHAR,
	    destinatario VARCHAR
	);
	
	ALTER TABLE CONVERSA ADD FOREIGN KEY (remetente) REFERENCES EMPREGADOR (cnpj) ON DELETE CASCADE;
	ALTER TABLE CONVERSA ADD FOREIGN KEY (destinatario) REFERENCES PROFISSIONAL (cpf) ON DELETE CASCADE;
 
### 8.	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
	
	INSERT INTO profissional VALUES 
	('123.456.789-09', 'Liam', 'Alemanha', True, 3950.0, 'Presencial', 'Desenvolvimento de Software'),
	('234.567.890-12', 'Olivia', 'França', False, 5050.0, 'Remoto', 'Suporte Técnico'),
	('345.678.901-23', 'Noah', 'China', True, 6050.0, 'Presencial', 'Redes de Computadores'),
	('456.789.012-34', 'Emma', 'França', True, 7050.0, 'Presencial', 'Segurança da Informação'),
	('567.890.123-45', 'Ava', 'África do Sul', False, 8050.0, 'Remoto', 'Banco de Dados'),
	('678.901.234-56', 'Isabella', 'África do Sul', False, 9050.0, 'Presencial', 'Engenharia de Software'),
	('789.012.345-67', 'Sophia', 'Reino Unido', True, 10050.0, 'Presencial', 'Inteligência Artificial'),
	('890.123.456-78', 'Jackson', 'Índia', True, 11050.0, 'Presencial', 'Web Design'),
	('901.234.567-89', 'Lucas', 'México', False, 12050.0, 'Remoto', 'Análise de Dados'),
	('012.345.678-90', 'Oliver', 'China', True, 13050.0, 'Presencial', 'Gestão de Projetos de TI'),
	('098.765.432-10', 'Aiden', 'Canadá', False, 14050.0, 'Remoto', 'Engenharia de Software'),
	('987.654.321-09', 'Caden', 'Espanha', False, 15050.0, 'Presencial', 'Redes de Computadores'),
	('876.543.210-98', 'Mia', 'Austrália', True, 3950.0, 'Presencial', 'Desenvolvimento de Software'),
	('765.432.109-87', 'Chloe', 'França', False, 5050.0, 'Presencial', 'Banco de Dados'),
	('654.321.098-76', 'Elijah', 'África do Sul', True, 6050.0, 'Remoto', 'Suporte Técnico'),
	('543.210.987-65', 'Grayson', 'Japão', False, 7050.0, 'Presencial', 'Web Design'),
	('432.109.876-54', 'Charlotte', 'China', True, 8050.0, 'Presencial', 'Inteligência Artificial'),
	('321.098.765-43', 'Harper', 'México', False, 9050.0, 'Presencial', 'Gestão de Projetos de TI'),
	('210.987.654-32', 'Mason', 'Austrália', True, 10050.0, 'Presencial', 'Análise de Dados'),
	('109.876.543-21', 'Evelyn', 'Rússia', True, 11050.0, 'Presencial', 'Segurança da Informação'),
	('001.002.003-04', 'Lily', 'Japão', False, 12050.0, 'Presencial', 'Gestão de Projetos de TI'),
	('005.006.007-08', 'Amelia', 'Canadá', True, 13050.0, 'Presencial', 'Banco de Dados'),
	('009.010.011-12', 'Benjamin', 'Índia', False, 14050.0, 'Remoto', 'Engenharia de Software'),
	('013.014.015-16', 'William', 'Austrália', False, 15050.0, 'Presencial', 'Web Design'),
	('017.018.019-20', 'James', 'Índia', True, 3950.0, 'Remoto', 'Inteligência Artificial'),
	('021.022.023-24', 'Logan', 'Espanha', True, 5050.0, 'Remoto', 'Suporte Técnico'),
	('025.026.027-28', 'Michael', 'Japão', False, 6050.0, 'Remoto', 'Desenvolvimento de Software'),
	('029.030.031-32', 'Alexander', 'Índia', False, 7050.0, 'Presencial', 'Análise de Dados'),
	('033.034.035-36', 'Ethan', 'África do Sul', True, 8050.0, 'Presencial', 'Redes de Computadores'),
	('037.038.039-40', 'Abigail', 'França', True, 9050.0, 'Presencial', 'Engenharia de Software'),
	('041.042.043-44', 'Emily', 'Brasil', False, 10050.0, 'Presencial', 'Segurança da Informação'),
	('045.046.047-48', 'Daniel', 'Canadá', True, 11050.0, 'Presencial', 'Web Design'),
	('049.050.051-52', 'Matthew', 'Canadá', False, 12050.0, 'Remoto', 'Gestão de Projetos de TI'),
	('053.054.055-56', 'Jackson', 'Índia', True, 13050.0, 'Presencial', 'Análise de Dados'),
	('057.058.059-60', 'Sebastian', 'Rússia', False, 14050.0, 'Presencial', 'Suporte Técnico'),
	('061.062.063-64', 'Aria', 'Espanha', True, 15050.0, 'Remoto', 'Banco de Dados'),
	('065.066.067-68', 'Ella', 'Alemanha', True, 3950.0, 'Remoto', 'Inteligência Artificial'),
	('069.070.071-72', 'Scarlett', 'Brasil', False, 5050.0, 'Presencial', 'Desenvolvimento de Software'),
	('073.074.075-76', 'Grace', 'Rússia', True, 6050.0, 'Presencial', 'Redes de Computadores'),
	('077.078.079-80', 'Avery', 'Alemanha', False, 7050.0, 'Remoto', 'Web Design'),
	('081.082.083-84', 'Sofia', 'França', False, 8050.0, 'Presencial', 'Gestão de Projetos de TI'),
	('085.086.087-88', 'Ezra', 'Japão', True, 9050.0, 'Presencial', 'Engenharia de Software'),
	('089.090.091-92', 'David', 'Espanha', False, 10050.0, 'Remoto', 'Análise de Dados'),
	('093.094.095-96', 'Victoria', 'Rússia', True, 11050.0, 'Presencial', 'Suporte Técnico'),
	('097.098.099-00', 'Gabriel', 'Japão', False, 12050.0, 'Remoto', 'Segurança da Informação');


	INSERT INTO empregador VALUES 
		('Microsoft', 'Desenvolvimento de Software', '12.345.678/0001-90', '12345-678'),
		('Apple', 'Suporte Técnico', '98.765.432/0002-01', '98765-432'),
		('Google', 'Redes de Computadores', '23.456.789/0003-23', '23456-789'),
		('Amazon', 'Segurança da Informação', '87.654.321/0004-34', '87654-321'),
		('Facebook', 'Banco de Dados', '45.678.901/0005-45', '45678-901'),
		('IBM', 'Engenharia de Software', '56.789.012/0006-56', '56789-012'),
		('Oracle', 'Inteligência Artificial', '34.567.890/0007-67', '34567-890'),
		('Samsung', 'Web Design', '67.890.123/0008-78', '67890-123'),
		('Tesla', 'Análise de Dados', '45.678.901/0009-89', '45678-901'),
		('Intel', 'Gestão de Projetos de TI', '12.345.678/0010-10', '12345-678'),
		('Twitter', 'Web Design', '98.765.432/0011-21', '98765-432'),
		('LinkedIn', 'Desenvolvimento de Software', '23.456.789/0012-32', '23456-789'),
		('Netflix', 'Redes de Computadores', '87.654.321/0013-43', '87654-321'),
		('Spotify', 'Gestão de Projetos de TI', '45.678.901/0014-54', '45678-901'),
		('Adobe', 'Banco de Dados', '56.789.012/0015-65', '56789-012'),
		('Zoom', 'Análise de Dados', '34.567.890/0016-76', '34567-890'),
		('Salesforce', 'Inteligência Artificial', '67.890.123/0017-87', '67890-123'),
		('Mozilla', 'Engenharia de Software', '45.678.901/0018-98', '45678-901'),
		('Dell', 'Web Design', '12.345.678/0019-09', '12345-678'),
		('HP', 'Gestão de Projetos de TI', '98.765.432/0020-20', '98765-432');
	
	
	 
	INSERT INTO vaga VALUES 
		('Engenheiro de Software Sênior', 'Descrição da vaga 31', 'Requisitos da vaga 31', 'São Paulo', 'Remoto', 8000, 12000, 'PJ', '2023-12-03', '2024-01-17', 'VAGA031', '87.654.321/0004-34'),
		('Cientista de Dados', 'Descrição da vaga 32', 'Requisitos da vaga 32', 'Rio de Janeiro', 'Presencial', 6500, 9500, 'CLT', '2023-12-03', '2024-01-17', 'VAGA032', '45.678.901/0005-45'),
		('Analista de Redes', 'Descrição da vaga 33', 'Requisitos da vaga 33', 'Curitiba', 'Remoto', 5500, 9000, 'PJ', '2023-12-03', '2024-01-17', 'VAGA033', '12.345.678/0001-90'),
		('Desenvolvedor Front-end', 'Descrição da vaga 34', 'Requisitos da vaga 34', 'Recife', 'Presencial', 4800, 7500, 'PJ', '2023-12-03', '2024-01-17', 'VAGA034', '98.765.432/0002-01'),
		('Analista de Banco de Dados', 'Descrição da vaga 35', 'Requisitos da vaga 35', 'Brasília', 'Remoto', 7000, 11000, 'CLT', '2023-12-03', '2024-01-17', 'VAGA035', '23.456.789/0003-23'),
		('Engenheiro de Software', 'Descrição da vaga 36', 'Requisitos da vaga 36', 'São Paulo', 'Presencial', 6200, 9200, 'CLT', '2023-12-03', '2024-01-17', 'VAGA036', '87.654.321/0004-34'),
		('Analista de Sistemas', 'Descrição da vaga 37', 'Requisitos da vaga 37', 'Rio de Janeiro', 'Remoto', 5000, 8500, 'PJ', '2023-12-03', '2024-01-17', 'VAGA037', '45.678.901/0005-45'),
		('Especialista em IA', 'Descrição da vaga 38', 'Requisitos da vaga 38', 'Porto Alegre', 'Presencial', 7500, 11000, 'CLT', '2023-12-03', '2024-01-17', 'VAGA038', '56.789.012/0006-56'),
		('Analista de Segurança Cibernética', 'Descrição da vaga 39', 'Requisitos da vaga 39', 'Curitiba', 'Remoto', 6500, 9500, 'PJ', '2023-12-03', '2024-01-17', 'VAGA039', '34.567.890/0007-67'),
		('Desenvolvedor Back-end', 'Descrição da vaga 40', 'Requisitos da vaga 40', 'Fortaleza', 'Presencial', 6000, 9000, 'CLT', '2023-12-03', '2024-01-17', 'VAGA040', '12.345.678/0001-90'),
		('Analista de Suporte Técnico', 'Descrição da vaga 41', 'Requisitos da vaga 41', 'São Paulo', 'Remoto', 4800, 7500, 'PJ', '2023-12-04', '2024-01-18', 'VAGA041', '98.765.432/0002-01'),
		('Gerente de Projetos de Software', 'Descrição da vaga 42', 'Requisitos da vaga 42', 'Rio de Janeiro', 'Presencial', 8000, 12000, 'CLT', '2023-12-04', '2024-01-18', 'VAGA042', '23.456.789/0003-23'),
		('Analista de Dados', 'Descrição da vaga 43', 'Requisitos da vaga 43', 'Belo Horizonte', 'Remoto', 6200, 9100, 'CLT', '2023-12-04', '2024-01-18', 'VAGA043', '45.678.901/0005-45'),
		('Analista de Redes', 'Descrição da vaga 44', 'Requisitos da vaga 44', 'Manaus', 'Presencial', 7100, 10800, 'PJ', '2023-12-04', '2024-01-18', 'VAGA044', '12.345.678/0001-90'),
		('Desenvolvedor Front-end', 'Descrição da vaga 45', 'Requisitos da vaga 45', 'Salvador', 'Remoto', 5400, 8700, 'CLT', '2023-12-04', '2024-01-18', 'VAGA045', '98.765.432/0002-01'),
		('Analista de Suporte de TI', 'Descrição da vaga 46', 'Requisitos da vaga 46', 'Recife', 'Presencial', 4800, 7500, 'PJ', '2023-12-04', '2024-01-18', 'VAGA046', '23.456.789/0003-23'),
		('Analista de Banco de Dados', 'Descrição da vaga 47', 'Requisitos da vaga 47', 'Fortaleza', 'Remoto', 7000, 11000, 'CLT', '2023-12-04', '2024-01-18', 'VAGA047', '12.345.678/0001-90'),
		('Desenvolvedor Mobile', 'Descrição da vaga 48', 'Requisitos da vaga 48', 'São Paulo', 'Presencial', 5800, 8700, 'PJ', '2023-12-04', '2024-01-18', 'VAGA048', '98.765.432/0002-01'),
		('Analista de Segurança da Informação', 'Descrição da vaga 49', 'Requisitos da vaga 49', 'Rio de Janeiro', 'Remoto', 7200, 11000, 'PJ', '2023-12-04', '2024-01-18', 'VAGA049', '23.456.789/0003-23'),
		('Arquiteto de Software', 'Descrição da vaga 50', 'Requisitos da vaga 50', 'Porto Alegre', 'Presencial', 6400, 9400, 'CLT', '2023-12-04', '2024-01-18', 'VAGA050', '45.678.901/0005-45'),
		('Engenheiro de Dados', 'Descrição da vaga 51', 'Requisitos da vaga 51', 'Curitiba', 'Remoto', 7600, 11800, 'PJ', '2023-12-05', '2024-01-19', 'VAGA051', '87.654.321/0004-34'),
		('Analista de UX/UI', 'Descrição da vaga 52', 'Requisitos da vaga 52', 'Fortaleza', 'Presencial', 5900, 8900, 'CLT', '2023-12-05', '2024-01-19', 'VAGA052', '56.789.012/0006-56'),
		('Especialista em Cloud Computing', 'Descrição da vaga 53', 'Requisitos da vaga 53', 'Porto Alegre', 'Remoto', 8300, 12500, 'PJ', '2023-12-05', '2024-01-19', 'VAGA053', '34.567.890/0007-67'),
		('Analista de Sistemas', 'Descrição da vaga 54', 'Requisitos da vaga 54', 'Natal', 'Remoto', 7000, 10500, 'CLT', '2023-12-05', '2024-01-19', 'VAGA054', '12.345.678/0001-90'),
		('Desenvolvedor Front-end', 'Descrição da vaga 55', 'Requisitos da vaga 55', 'São Paulo', 'Presencial', 5200, 8800, 'PJ', '2023-12-05', '2024-01-19', 'VAGA055', '98.765.432/0002-01'),
		('Analista de Redes', 'Descrição da vaga 56', 'Requisitos da vaga 56', 'Rio de Janeiro', 'Remoto', 6700, 9700, 'CLT', '2023-12-05', '2024-01-19', 'VAGA056', '23.456.789/0003-23'),
		('Desenvolvedor Full Stack', 'Descrição da vaga 57', 'Requisitos da vaga 57', 'São Paulo', 'Presencial', 8000, 12000, 'PJ', '2023-12-05', '2024-01-19', 'VAGA057', '87.654.321/0004-34'),
		('Analista de Dados', 'Descrição da vaga 58', 'Requisitos da vaga 58', 'Belo Horizonte', 'Remoto', 6200, 9100, 'CLT', '2023-12-05', '2024-01-19', 'VAGA058', '45.678.901/0005-45'),
		('Engenheiro de Software', 'Descrição da vaga 59', 'Requisitos da vaga 59', 'Recife', 'Presencial', 7500, 11200, 'PJ', '2023-12-05', '2024-01-19', 'VAGA059', '56.789.012/0006-56'),
		('Analista de Suporte Técnico', 'Descrição da vaga 60', 'Requisitos da vaga 60', 'Porto Alegre', 'Remoto', 6000, 9200, 'CLT', '2023-12-05', '2024-01-19', 'VAGA060', '34.567.890/0007-67'),
		('Desenvolvedor Mobile', 'Descrição da vaga 61', 'Requisitos da vaga 61', 'Manaus', 'Presencial', 6700, 9800, 'PJ', '2023-12-06', '2024-01-20', 'VAGA061', '12.345.678/0001-90'),
		('Analista de Segurança da Informação', 'Descrição da vaga 62', 'Requisitos da vaga 62', 'Salvador', 'Remoto', 7200, 11000, 'PJ', '2023-12-06', '2024-01-20', 'VAGA062', '98.765.432/0002-01'),
		('Arquiteto de Software', 'Descrição da vaga 63', 'Requisitos da vaga 63', 'Recife', 'Presencial', 6400, 9400, 'CLT', '2023-12-06', '2024-01-20', 'VAGA063', '87.654.321/0004-34'),
		('Engenheiro de Dados', 'Descrição da vaga 64', 'Requisitos da vaga 64', 'São Paulo', 'Remoto', 7600, 11800, 'PJ', '2023-12-06', '2024-01-20', 'VAGA064', '45.678.901/0005-45'),
		('Analista de UX/UI', 'Descrição da vaga 65', 'Requisitos da vaga 65', 'Rio de Janeiro', 'Presencial', 5800, 8900, 'CLT', '2023-12-06', '2024-01-20', 'VAGA065', '56.789.012/0006-56'),
		('Especialista em Cloud Computing', 'Descrição da vaga 66', 'Requisitos da vaga 66', 'Fortaleza', 'Remoto', 8300, 12500, 'PJ', '2023-12-06', '2024-01-20', 'VAGA066', '34.567.890/0007-67'),
		('Analista de Sistemas', 'Descrição da vaga 67', 'Requisitos da vaga 67', 'Natal', 'Remoto', 7000, 10500, 'CLT', '2023-12-06', '2024-01-20', 'VAGA067', '12.345.678/0001-90'),
		('Desenvolvedor Front-end', 'Descrição da vaga 68', 'Requisitos da vaga 68', 'São Paulo', 'Presencial', 5200, 8800, 'PJ', '2023-12-06', '2024-01-20', 'VAGA068', '98.765.432/0002-01'),
		('Analista de Redes', 'Descrição da vaga 69', 'Requisitos da vaga 69', 'Rio de Janeiro', 'Remoto', 6700, 9700, 'CLT', '2023-12-06', '2024-01-20', 'VAGA069', '23.456.789/0003-23'),
		('Desenvolvedor Full Stack', 'Descrição da vaga 70', 'Requisitos da vaga 70', 'São Paulo', 'Presencial', 8000, 12000, 'PJ', '2023-12-06', '2024-01-20', 'VAGA070', '87.654.321/0004-34'),
		('Analista de Dados', 'Descrição da vaga 91', 'Requisitos da vaga 91', 'Belo Horizonte', 'Remoto', 6200, 9100, 'CLT', '2023-12-10', '2024-01-25', 'VAGA091', '45.678.901/0005-45'),
		('Engenheiro de Software', 'Descrição da vaga 92', 'Requisitos da vaga 92', 'Recife', 'Presencial', 7500, 11200, 'PJ', '2023-12-10', '2024-01-25', 'VAGA092', '56.789.012/0006-56'),
		('Analista de Suporte Técnico', 'Descrição da vaga 93', 'Requisitos da vaga 93', 'Porto Alegre', 'Remoto', 6000, 9200, 'CLT', '2023-12-10', '2024-01-25', 'VAGA093', '34.567.890/0007-67'),
		('Analista de Banco de Dados', 'Descrição da vaga 94', 'Requisitos da vaga 94', 'Curitiba', 'Presencial', 7100, 10800, 'PJ', '2023-12-10', '2024-01-25', 'VAGA094', '12.345.678/0001-90'),
		('Desenvolvedor Mobile', 'Descrição da vaga 95', 'Requisitos da vaga 95', 'Fortaleza', 'Remoto', 5400, 8700, 'CLT', '2023-12-10', '2024-01-25', 'VAGA095', '98.765.432/0002-01'),
		('Analista de Segurança da Informação', 'Descrição da vaga 96', 'Requisitos da vaga 96', 'Salvador', 'Presencial', 7200, 11000, 'PJ', '2023-12-10', '2024-01-25', 'VAGA096', '23.456.789/0003-23'),
		('Arquiteto de Software', 'Descrição da vaga 97', 'Requisitos da vaga 97', 'Recife', 'Remoto', 6400, 9400, 'CLT', '2023-12-10', '2024-01-25', 'VAGA097', '87.654.321/0004-34'),
		('Engenheiro de Dados', 'Descrição da vaga 98', 'Requisitos da vaga 98', 'São Paulo', 'Presencial', 7600, 11800, 'PJ', '2023-12-10', '2024-01-25', 'VAGA098', '45.678.901/0005-45'),
		('Analista de UX/UI', 'Descrição da vaga 99', 'Requisitos da vaga 99', 'Rio de Janeiro', 'Remoto', 5800, 8900, 'CLT', '2023-12-10', '2024-01-25', 'VAGA099', '56.789.012/0006-56'),
		('Especialista em Cloud Computing', 'Descrição da vaga 100', 'Requisitos da vaga 100', 'Fortaleza', 'Presencial', 8300, 12500, 'PJ', '2023-12-10', '2024-01-25', 'VAGA100', '34.567.890/0007-67'),
		('Desenvolvedor Front-end', 'Descrição da vaga 101', 'Requisitos da vaga 101', 'Manaus', 'Remoto', 6700, 9800, 'CLT', '2023-12-15', '2024-02-01', 'VAGA101', '12.345.678/0001-90'),
		('Analista de Sistemas', 'Descrição da vaga 102', 'Requisitos da vaga 102', 'São Paulo', 'Presencial', 5200, 8800, 'PJ', '2023-12-15', '2024-02-01', 'VAGA102', '98.765.432/0002-01'),
		('Engenheiro de Redes', 'Descrição da vaga 103', 'Requisitos da vaga 103', 'Rio de Janeiro', 'Remoto', 6700, 9700, 'CLT', '2023-12-15', '2024-02-01', 'VAGA103', '23.456.789/0003-23'),
		('Desenvolvedor Full Stack', 'Descrição da vaga 104', 'Requisitos da vaga 104', 'São Paulo', 'Presencial', 8000, 12000, 'PJ', '2023-12-15', '2024-02-01', 'VAGA104', '87.654.321/0004-34'),
		('Analista de Dados', 'Descrição da vaga 105', 'Requisitos da vaga 105', 'Belo Horizonte', 'Remoto', 6200, 9100, 'CLT', '2023-12-15', '2024-02-01', 'VAGA105', '45.678.901/0005-45'),
		('Engenheiro de Software', 'Descrição da vaga 106', 'Requisitos da vaga 106', 'Recife', 'Presencial', 7500, 11200, 'PJ', '2023-12-15', '2024-02-01', 'VAGA106', '56.789.012/0006-56'),
		('Analista de Suporte Técnico', 'Descrição da vaga 107', 'Requisitos da vaga 107', 'Porto Alegre', 'Remoto', 6000, 9200, 'CLT', '2023-12-15', '2024-02-01', 'VAGA107', '34.567.890/0007-67'),
		('Analista de Banco de Dados', 'Descrição da vaga 108', 'Requisitos da vaga 108', 'Curitiba', 'Presencial', 7100, 10800, 'PJ', '2023-12-15', '2024-02-01', 'VAGA108', '12.345.678/0001-90'),
		('Desenvolvedor Mobile', 'Descrição da vaga 109', 'Requisitos da vaga 109', 'Fortaleza', 'Remoto', 5400, 8700, 'CLT', '2023-12-15', '2024-02-01', 'VAGA109', '98.765.432/0002-01'),
		('Analista de Segurança da Informação', 'Descrição da vaga 110', 'Requisitos da vaga 110', 'Salvador', 'Presencial', 7200, 11000, 'PJ', '2023-12-15', '2024-02-01', 'VAGA110', '23.456.789/0003-23'),
		('Engenheiro de Software Sênior', 'Descrição da vaga 111', 'Requisitos da vaga 111', 'Manaus', 'Remoto', 7300, 11000, 'CLT', '2023-12-20', '2024-02-10', 'VAGA111', '12.345.678/0001-90'),
		('Analista de UX/UI', 'Descrição da vaga 112', 'Requisitos da vaga 112', 'São Paulo', 'Presencial', 5500, 9200, 'PJ', '2023-12-20', '2024-02-10', 'VAGA112', '98.765.432/0002-01'),
		('Arquiteto de Software', 'Descrição da vaga 113', 'Requisitos da vaga 113', 'Rio de Janeiro', 'Remoto', 6800, 10500, 'CLT', '2023-12-20', '2024-02-10', 'VAGA113', '23.456.789/0003-23'),
		('Desenvolvedor Back-end', 'Descrição da vaga 114', 'Requisitos da vaga 114', 'São Paulo', 'Presencial', 7500, 11800, 'PJ', '2023-12-20', '2024-02-10', 'VAGA114', '87.654.321/0004-34'),
		('Analista de Dados', 'Descrição da vaga 115', 'Requisitos da vaga 115', 'Belo Horizonte', 'Remoto', 5900, 8900, 'CLT', '2023-12-20', '2024-02-10', 'VAGA115', '45.678.901/0005-45'),
		('Engenheiro de Dados', 'Descrição da vaga 116', 'Requisitos da vaga 116', 'Recife', 'Presencial', 7600, 11800, 'PJ', '2023-12-20', '2024-02-10', 'VAGA116', '56.789.012/0006-56'),
		('Analista de Suporte de TI', 'Descrição da vaga 117', 'Requisitos da vaga 117', 'Porto Alegre', 'Remoto', 6300, 9700, 'CLT', '2023-12-20', '2024-02-10', 'VAGA117', '34.567.890/0007-67'),
		('Analista de Banco de Dados', 'Descrição da vaga 118', 'Requisitos da vaga 118', 'Curitiba', 'Presencial', 7200, 10800, 'PJ', '2023-12-20', '2024-02-10', 'VAGA118', '12.345.678/0001-90'),
		('Desenvolvedor Mobile', 'Descrição da vaga 119', 'Requisitos da vaga 119', 'Fortaleza', 'Remoto', 5600, 8500, 'CLT', '2023-12-20', '2024-02-10', 'VAGA119', '98.765.432/0002-01'),
		('Analista de Segurança da Informação', 'Descrição da vaga 120', 'Requisitos da vaga 120', 'Salvador', 'Presencial', 7000, 11200, 'PJ', '2023-12-20', '2024-02-10', 'VAGA120', '23.456.789/0003-23'),
		('Desenvolvedor Full Stack', 'Descrição da vaga 121', 'Requisitos da vaga 121', 'São Paulo', 'Presencial', 8300, 12500, 'PJ', '2023-12-20', '2024-02-10', 'VAGA121', '87.654.321/0004-34'),
		('Analista de Dados', 'Descrição da vaga 122', 'Requisitos da vaga 122', 'Belo Horizonte', 'Remoto', 6400, 9100, 'CLT', '2023-12-20', '2024-02-10', 'VAGA122', '45.678.901/0005-45'),
		('Engenheiro de Software', 'Descrição da vaga 123', 'Requisitos da vaga 123', 'Recife', 'Presencial', 7700, 11400, 'PJ', '2023-12-20', '2024-02-10', 'VAGA123', '56.789.012/0006-56'),
		('Analista de Suporte Técnico', 'Descrição da vaga 124', 'Requisitos da vaga 124', 'Porto Alegre', 'Remoto', 6100, 9300, 'CLT', '2023-12-20', '2024-02-10', 'VAGA124', '34.567.890/0007-67'),
		('Analista de Banco de Dados', 'Descrição da vaga 125', 'Requisitos da vaga 125', 'Curitiba', 'Presencial', 7000, 10800, 'PJ', '2023-12-20', '2024-02-10', 'VAGA125', '12.345.678/0001-90');
	
	 
	INSERT INTO profissional_vaga VALUES 
		('098.765.432-10', 'VAGA111'),
		('029.030.031-32', 'VAGA069'),
		('057.058.059-60', 'VAGA104'),
		('077.078.079-80', 'VAGA040'),
		('009.010.011-12', 'VAGA102'),
		('432.109.876-54', 'VAGA063'),
		('085.086.087-88', 'VAGA051'),
		('901.234.567-89', 'VAGA125'),
		('456.789.012-34', 'VAGA039'),
		('077.078.079-80', 'VAGA042'),
		('005.006.007-08', 'VAGA099'),
		('432.109.876-54', 'VAGA064'),
		('123.456.789-09', 'VAGA097'),
		('432.109.876-54', 'VAGA061'),
		('077.078.079-80', 'VAGA069'),
		('037.038.039-40', 'VAGA111'),
		('012.345.678-90', 'VAGA107'),
		('037.038.039-40', 'VAGA098'),
		('049.050.051-52', 'VAGA064'),
		('029.030.031-32', 'VAGA100'),
		('567.890.123-45', 'VAGA063'),
		('432.109.876-54', 'VAGA051'),
		('033.034.035-36', 'VAGA068'),
		('033.034.035-36', 'VAGA054'),
		('073.074.075-76', 'VAGA101'),
		('678.901.234-56', 'VAGA097'),
		('876.543.210-98', 'VAGA038'),
		('049.050.051-52', 'VAGA091'),
		('009.010.011-12', 'VAGA093'),
		('789.012.345-67', 'VAGA043'),
		('876.543.210-98', 'VAGA105'),
		('005.006.007-08', 'VAGA101'),
		('085.086.087-88', 'VAGA113'),
		('017.018.019-20', 'VAGA052'),
		('765.432.109-87', 'VAGA102'),
		('029.030.031-32', 'VAGA051'),
		('065.066.067-68', 'VAGA113'),
		('013.014.015-16', 'VAGA067'),
		('123.456.789-09', 'VAGA032'),
		('109.876.543-21', 'VAGA033'),
		('321.098.765-43', 'VAGA048'),
		('234.567.890-12', 'VAGA108'),
		('654.321.098-76', 'VAGA045'),
		('093.094.095-96', 'VAGA055'),
		('901.234.567-89', 'VAGA051'),
		('678.901.234-56', 'VAGA066'),
		('065.066.067-68', 'VAGA046'),
		('025.026.027-28', 'VAGA098'),
		('085.086.087-88', 'VAGA095'),
		('987.654.321-09', 'VAGA045'),
		('029.030.031-32', 'VAGA057'),
		('097.098.099-00', 'VAGA116'),
		('876.543.210-98', 'VAGA123'),
		('045.046.047-48', 'VAGA119'),
		('045.046.047-48', 'VAGA094'),
		('077.078.079-80', 'VAGA050'),
		('987.654.321-09', 'VAGA112'),
		('567.890.123-45', 'VAGA037'),
		('234.567.890-12', 'VAGA070'),
		('432.109.876-54', 'VAGA032'),
		('901.234.567-89', 'VAGA123'),
		('097.098.099-00', 'VAGA060'),
		('012.345.678-90', 'VAGA122'),
		('012.345.678-90', 'VAGA031'),
		('069.070.071-72', 'VAGA106'),
		('089.090.091-92', 'VAGA053'),
		('033.034.035-36', 'VAGA045'),
		('029.030.031-32', 'VAGA051'),
		('012.345.678-90', 'VAGA049'),
		('876.543.210-98', 'VAGA113'),
		('789.012.345-67', 'VAGA056'),
		('033.034.035-36', 'VAGA034'),
		('029.030.031-32', 'VAGA068'),
		('045.046.047-48', 'VAGA041'),
		('065.066.067-68', 'VAGA106'),
		('089.090.091-92', 'VAGA047'),
		('678.901.234-56', 'VAGA098'),
		('081.082.083-84', 'VAGA120'),
		('065.066.067-68', 'VAGA046'),
		('012.345.678-90', 'VAGA118'),
		('045.046.047-48', 'VAGA044'),
		('543.210.987-65', 'VAGA039'),
		('890.123.456-78', 'VAGA107'),
		('001.002.003-04', 'VAGA057'),
		('234.567.890-12', 'VAGA091'),
		('017.018.019-20', 'VAGA125'),
		('049.050.051-52', 'VAGA063'),
		('678.901.234-56', 'VAGA060'),
		('456.789.012-34', 'VAGA115'),
		('890.123.456-78', 'VAGA049'),
		('210.987.654-32', 'VAGA104'),
		('654.321.098-76', 'VAGA038'),
		('123.456.789-09', 'VAGA121'),
		('061.062.063-64', 'VAGA108'),
		('109.876.543-21', 'VAGA062'),
		('093.094.095-96', 'VAGA050'),
		('069.070.071-72', 'VAGA065'),
		('093.094.095-96', 'VAGA101'),
		('089.090.091-92', 'VAGA104'),
		('789.012.345-67', 'VAGA058'),
		('890.123.456-78', 'VAGA041'),
		('321.098.765-43', 'VAGA043'),
		('890.123.456-78', 'VAGA069'),
		('073.074.075-76', 'VAGA105'),
		('045.046.047-48', 'VAGA068'),
		('085.086.087-88', 'VAGA040'),
		('210.987.654-32', 'VAGA041'),
		('876.543.210-98', 'VAGA055'),
		('321.098.765-43', 'VAGA061'),
		('345.678.901-23', 'VAGA112'),
		('009.010.011-12', 'VAGA117'),
		('012.345.678-90', 'VAGA105'),
		('017.018.019-20', 'VAGA035'),
		('073.074.075-76', 'VAGA048'),
		('037.038.039-40', 'VAGA098'),
		('041.042.043-44', 'VAGA115'),
		('025.026.027-28', 'VAGA102'),
		('567.890.123-45', 'VAGA037'),
		('567.890.123-45', 'VAGA062'),
		('234.567.890-12', 'VAGA124'),
		('057.058.059-60', 'VAGA115'),
		('001.002.003-04', 'VAGA125'),
		('456.789.012-34', 'VAGA095'),
		('876.543.210-98', 'VAGA062'),
		('033.034.035-36', 'VAGA043'),
		('001.002.003-04', 'VAGA121'),
		('025.026.027-28', 'VAGA054'),
		('025.026.027-28', 'VAGA103'),
		('345.678.901-23', 'VAGA097'),
		('876.543.210-98', 'VAGA119'),
		('017.018.019-20', 'VAGA099'),
		('065.066.067-68', 'VAGA052'),
		('085.086.087-88', 'VAGA092'),
		('654.321.098-76', 'VAGA096'),
		('045.046.047-48', 'VAGA117'),
		('901.234.567-89', 'VAGA101'),
		('432.109.876-54', 'VAGA068'),
		('029.030.031-32', 'VAGA038'),
		('098.765.432-10', 'VAGA112'),
		('057.058.059-60', 'VAGA118'),
		('123.456.789-09', 'VAGA064'),
		('456.789.012-34', 'VAGA091'),
		('017.018.019-20', 'VAGA113'),
		('890.123.456-78', 'VAGA039'),
		('987.654.321-09', 'VAGA103'),
		('057.058.059-60', 'VAGA037'),
		('053.054.055-56', 'VAGA061'),
		('009.010.011-12', 'VAGA110'),
		('543.210.987-65', 'VAGA095'),
		('789.012.345-67', 'VAGA095');
	
	
	
	INSERT INTO habilidade VALUES 
		('H001', 'Desenvolvimento Ágil', 'Técnica', 'Desenvolvimento de Software'),
		('H002', 'Suporte ao Usuário', 'Técnica', 'Suporte Técnico'),
		('H003', 'Configuração de Redes', 'Técnica', 'Redes de Computadores'),
		('H004', 'Criptografia', 'Técnica', 'Segurança da Informação'),
		('H005', 'Modelagem de Dados', 'Técnica', 'Banco de Dados'),
		('H006', 'Metodologias de Desenvolvimento', 'Técnica', 'Engenharia de Software'),
		('H007', 'Machine Learning', 'Técnica', 'Inteligência Artificial'),
		('H008', 'UI/UX Design', 'Técnica', 'Web Design'),
		('H009', 'Análise Estatística', 'Técnica', 'Análise de Dados'),
		('H010', 'Gestão de Projetos Ágeis', 'Técnica', 'Gestão de Projetos de TI'),
		('H011', 'Comunicação Eficaz', 'Comportamental', 'Geral'),
		('H012', 'Trabalho em Equipe', 'Comportamental', 'Geral'),
		('H013', 'Resolução de Conflitos', 'Comportamental', 'Geral'),
		('H014', 'Liderança', 'Comportamental', 'Geral'),
		('H015', 'Tomada de Decisão', 'Comportamental', 'Geral'),
		('H016', 'Negociação', 'Comportamental', 'Geral'),
		('H017', 'Pensamento Crítico', 'Comportamental', 'Geral'),
		('H018', 'Adaptabilidade', 'Comportamental', 'Geral'),
		('H019', 'Empatia', 'Comportamental', 'Geral'),
		('H020', 'Gestão do Tempo', 'Comportamental', 'Geral'),
		('H021', 'Desenvolvimento Mobile', 'Técnica', 'Desenvolvimento de Software'),
		('H022', 'Solução de Problemas', 'Comportamental', 'Geral'),
		('H023', 'Administração de Sistemas', 'Técnica', 'Redes de Computadores'),
		('H024', 'Privacidade de Dados', 'Técnica', 'Segurança da Informação'),
		('H025', 'SQL Optimization', 'Técnica', 'Banco de Dados'),
		('H026', 'Prototipagem', 'Técnica', 'Web Design'),
		('H027', 'Processamento de Linguagem Natural', 'Técnica', 'Inteligência Artificial'),
		('H028', 'Visualização de Dados', 'Técnica', 'Análise de Dados'),
		('H029', 'Auditoria de Segurança', 'Técnica', 'Segurança da Informação'),
		('H030', 'Scrum Master', 'Técnica', 'Gestão de Projetos de TI'),
		('H031', 'Feedback Construtivo', 'Comportamental', 'Geral'),
		('H032', 'Gestão de Conflitos', 'Comportamental', 'Geral'),
		('H033', 'Compreensão Interpessoal', 'Comportamental', 'Geral'),
		('H034', 'Desenvolvimento Pessoal', 'Comportamental', 'Geral'),
		('H035', 'Inteligência Emocional', 'Comportamental', 'Geral'),
		('H036', 'Test-Driven Development', 'Técnica', 'Desenvolvimento de Software'),
		('H037', 'Automatização de Processos', 'Técnica', 'Engenharia de Software'),
		('H038', 'Machine Vision', 'Técnica', 'Inteligência Artificial'),
		('H039', 'Acessibilidade Web', 'Técnica', 'Web Design'),
		('H040', 'Análise de Riscos', 'Técnica', 'Segurança da Informação'),
		('H041', 'Desenvolvimento Front-end', 'Técnica', 'Web Design'),
		('H042', 'Interação Humano-Computador', 'Técnica', 'Inteligência Artificial'),
		('H043', 'Backup e Recuperação de Dados', 'Técnica', 'Banco de Dados'),
		('H044', 'Gestão de Mudanças', 'Técnica', 'Gestão de Projetos de TI'),
		('H045', 'Machine Translation', 'Técnica', 'Inteligência Artificial'),
		('H046', 'Usabilidade', 'Técnica', 'Web Design'),
		('H047', 'Data Warehousing', 'Técnica', 'Análise de Dados'),
		('H048', 'Firewall Configuration', 'Técnica', 'Segurança da Informação'),
		('H049', 'Desenvolvimento Back-end', 'Técnica', 'Desenvolvimento de Software'),
		('H050', 'Gestão de Stakeholders', 'Comportamental', 'Gestão de Projetos de TI'),
		('H051', 'Resiliência', 'Comportamental', 'Geral'),
		('H052', 'Desenvolvimento de Protótipos', 'Técnica', 'Engenharia de Software'),
		('H053', 'Privacy by Design', 'Técnica', 'Segurança da Informação'),
		('H054', 'Análise de Tendências', 'Técnica', 'Análise de Dados'),
		('H055', 'Desenvolvimento de Jogos', 'Técnica', 'Engenharia de Software'),
		('H056', 'Feedback 360 graus', 'Comportamental', 'Geral'),
		('H057', 'Inteligência Coletiva', 'Comportamental', 'Geral'),
		('H058', 'Gerenciamento de Incidentes', 'Técnica', 'Segurança da Informação'),
		('H059', 'Design Thinking', 'Técnica', 'Web Design'),
		('H060', 'Facilitação de Reuniões', 'Comportamental', 'Gestão de Projetos de TI'),
		('H061', 'Segurança em Nuvem', 'Técnica', 'Segurança da Informação'),
		('H062', 'Machine Ethics', 'Técnica', 'Inteligência Artificial'),
		('H063', 'Data Mining', 'Técnica', 'Análise de Dados'),
		('H064', 'Desenvolvimento Ágil de Negócios', 'Técnica', 'Gestão de Projetos de TI'),
		('H065', 'Realidade Virtual', 'Técnica', 'Web Design'),
		('H066', 'Segurança de Aplicações', 'Técnica', 'Segurança da Informação'),
		('H067', 'Desenvolvimento de APIs', 'Técnica', 'Desenvolvimento de Software'),
		('H068', 'Gestão de Conhecimento', 'Comportamental', 'Geral'),
		('H069', 'Programação Funcional', 'Técnica', 'Desenvolvimento de Software'),
		('H070', 'Negociação de Contratos', 'Comportamental', 'Geral'),
		('H071', 'Arquitetura de Sistemas', 'Técnica', 'Engenharia de Software'),
		('H072', 'Compliance e Ética Digital', 'Técnica', 'Segurança da Informação'),
		('H073', 'Design Responsivo', 'Técnica', 'Web Design'),
		('H074', 'Liderança Servidora', 'Comportamental', 'Geral'),
		('H075', 'IoT (Internet das Coisas)', 'Técnica', 'Redes de Computadores'),
		('H076', 'Gestão da Qualidade de Software', 'Técnica', 'Engenharia de Software'),
		('H077', 'Estatísticas Avançadas', 'Técnica', 'Análise de Dados'),
		('H078', 'Gestão de Recursos em Nuvem', 'Técnica', 'Redes de Computadores'),
		('H079', 'Inteligência de Negócios', 'Técnica', 'Análise de Dados'),
		('H080', 'Coaching Profissional', 'Comportamental', 'Geral'),
		('H081', 'Segurança em Blockchain', 'Técnica', 'Segurança da Informação'),
		('H082', 'Processamento Distribuído', 'Técnica', 'Redes de Computadores'),
		('H083', 'Gestão de Mudança Organizacional', 'Comportamental', 'Geral'),
		('H084', 'Chatbot Development', 'Técnica', 'Inteligência Artificial'),
		('H085', 'Auditoria de Sistemas', 'Técnica', 'Segurança da Informação'),
		('H086', 'Desenvolvimento Orientado a Objetos', 'Técnica', 'Desenvolvimento de Software'),
		('H087', 'Gestão de Portfólio de Projetos', 'Técnica', 'Gestão de Projetos de TI'),
		('H088', 'Computação Quântica', 'Técnica', 'Redes de Computadores'),
		('H089', 'Business Intelligence', 'Técnica', 'Análise de Dados'),
		('H090', 'Design de Experiência do Usuário', 'Técnica', 'Web Design'),
		('H091', 'Gestão de Incidentes de Segurança', 'Técnica', 'Segurança da Informação'),
		('H092', 'Metodologias Ágeis', 'Técnica', 'Desenvolvimento de Software'),
		('H093', 'Gestão de Serviços de TI', 'Técnica', 'Gestão de Projetos de TI'),
		('H094', 'Ética Profissional', 'Comportamental', 'Geral'),
		('H095', 'Engenharia de Requisitos', 'Técnica', 'Engenharia de Software'),
		('H096', 'Gestão de Continuidade de Negócios', 'Técnica', 'Gestão de Projetos de TI'),
		('H097', 'Deep Learning', 'Técnica', 'Inteligência Artificial'),
		('H098', 'Lean Six Sigma', 'Técnica', 'Gestão de Projetos de TI'),
		('H099', 'Comunicação Não Violenta', 'Comportamental', 'Geral'),
		('H100', 'Desenvolvimento Sustentável', 'Comportamental', 'Geral');
	
	 
	 
	INSERT INTO profissional_habilidade VALUES 
		('093.094.095-96', 'H050'),
		('123.456.789-09', 'H050'),
		('077.078.079-80', 'H081'),
		('789.012.345-67', 'H080'),
		('085.086.087-88', 'H050'),
		('061.062.063-64', 'H060'),
		('089.090.091-92', 'H026'),
		('012.345.678-90', 'H077'),
		('057.058.059-60', 'H069'),
		('543.210.987-65', 'H004'),
		('029.030.031-32', 'H077'),
		('654.321.098-76', 'H087'),
		('234.567.890-12', 'H096'),
		('061.062.063-64', 'H029'),
		('021.022.023-24', 'H029'),
		('234.567.890-12', 'H031'),
		('345.678.901-23', 'H048'),
		('049.050.051-52', 'H026'),
		('678.901.234-56', 'H084'),
		('210.987.654-32', 'H053'),
		('012.345.678-90', 'H077'),
		('057.058.059-60', 'H011'),
		('065.066.067-68', 'H038'),
		('765.432.109-87', 'H077'),
		('089.090.091-92', 'H100'),
		('069.070.071-72', 'H015'),
		('017.018.019-20', 'H021'),
		('089.090.091-92', 'H003'),
		('093.094.095-96', 'H013'),
		('041.042.043-44', 'H046'),
		('678.901.234-56', 'H010'),
		('045.046.047-48', 'H058'),
		('876.543.210-98', 'H048'),
		('012.345.678-90', 'H035'),
		('098.765.432-10', 'H020'),
		('025.026.027-28', 'H092'),
		('061.062.063-64', 'H006'),
		('037.038.039-40', 'H022'),
		('321.098.765-43', 'H040'),
		('029.030.031-32', 'H073'),
		('049.050.051-52', 'H005'),
		('543.210.987-65', 'H001'),
		('017.018.019-20', 'H039'),
		('065.066.067-68', 'H065'),
		('037.038.039-40', 'H052'),
		('057.058.059-60', 'H052'),
		('987.654.321-09', 'H031'),
		('025.026.027-28', 'H079'),
		('543.210.987-65', 'H012'),
		('901.234.567-89', 'H065'),
		('093.094.095-96', 'H035'),
		('077.078.079-80', 'H068'),
		('037.038.039-40', 'H090'),
		('053.054.055-56', 'H072'),
		('210.987.654-32', 'H034'),
		('093.094.095-96', 'H004'),
		('089.090.091-92', 'H055'),
		('005.006.007-08', 'H058'),
		('021.022.023-24', 'H046'),
		('081.082.083-84', 'H032'),
		('061.062.063-64', 'H098'),
		('081.082.083-84', 'H035'),
		('678.901.234-56', 'H037'),
		('081.082.083-84', 'H021'),
		('057.058.059-60', 'H024'),
		('009.010.011-12', 'H050'),
		('069.070.071-72', 'H005'),
		('210.987.654-32', 'H036'),
		('543.210.987-65', 'H044'),
		('013.014.015-16', 'H010'),
		('085.086.087-88', 'H047'),
		('005.006.007-08', 'H026'),
		('013.014.015-16', 'H080'),
		('890.123.456-78', 'H034'),
		('876.543.210-98', 'H089'),
		('037.038.039-40', 'H071'),
		('987.654.321-09', 'H060'),
		('049.050.051-52', 'H035'),
		('901.234.567-89', 'H006'),
		('021.022.023-24', 'H035'),
		('098.765.432-10', 'H093'),
		('093.094.095-96', 'H056'),
		('041.042.043-44', 'H032'),
		('123.456.789-09', 'H052'),
		('432.109.876-54', 'H072'),
		('432.109.876-54', 'H068'),
		('053.054.055-56', 'H036'),
		('005.006.007-08', 'H040'),
		('029.030.031-32', 'H032'),
		('321.098.765-43', 'H052'),
		('065.066.067-68', 'H045'),
		('890.123.456-78', 'H011'),
		('017.018.019-20', 'H080'),
		('210.987.654-32', 'H024'),
		('098.765.432-10', 'H093'),
		('025.026.027-28', 'H018'),
		('210.987.654-32', 'H038'),
		('029.030.031-32', 'H016'),
		('789.012.345-67', 'H027'),
		('089.090.091-92', 'H096'),
		('089.090.091-92', 'H059'),
		('345.678.901-23', 'H053'),
		('041.042.043-44', 'H050'),
		('017.018.019-20', 'H038'),
		('876.543.210-98', 'H016'),
		('234.567.890-12', 'H042'),
		('013.014.015-16', 'H062'),
		('049.050.051-52', 'H019'),
		('678.901.234-56', 'H037'),
		('089.090.091-92', 'H072'),
		('077.078.079-80', 'H078'),
		('012.345.678-90', 'H052'),
		('234.567.890-12', 'H049'),
		('321.098.765-43', 'H023'),
		('321.098.765-43', 'H003'),
		('073.074.075-76', 'H023'),
		('123.456.789-09', 'H022'),
		('009.010.011-12', 'H072'),
		('210.987.654-32', 'H085'),
		('097.098.099-00', 'H090'),
		('567.890.123-45', 'H068'),
		('876.543.210-98', 'H060'),
		('085.086.087-88', 'H081'),
		('045.046.047-48', 'H030'),
		('025.026.027-28', 'H006'),
		('057.058.059-60', 'H004'),
		('789.012.345-67', 'H008'),
		('009.010.011-12', 'H057'),
		('089.090.091-92', 'H063'),
		('029.030.031-32', 'H064'),
		('029.030.031-32', 'H018'),
		('097.098.099-00', 'H043'),
		('053.054.055-56', 'H045'),
		('654.321.098-76', 'H026'),
		('012.345.678-90', 'H038'),
		('210.987.654-32', 'H006'),
		('345.678.901-23', 'H099'),
		('097.098.099-00', 'H046'),
		('013.014.015-16', 'H034'),
		('049.050.051-52', 'H021'),
		('890.123.456-78', 'H011'),
		('033.034.035-36', 'H063'),
		('901.234.567-89', 'H080'),
		('123.456.789-09', 'H009'),
		('093.094.095-96', 'H029'),
		('077.078.079-80', 'H090'),
		('049.050.051-52', 'H049'),
		('901.234.567-89', 'H038'),
		('081.082.083-84', 'H028'),
		('025.026.027-28', 'H056'),
		('654.321.098-76', 'H065'),
		('041.042.043-44', 'H074'),
		('021.022.023-24', 'H008'),
		('789.012.345-67', 'H067'),
		('053.054.055-56', 'H031'),
		('073.074.075-76', 'H051'),
		('021.022.023-24', 'H085'),
		('987.654.321-09', 'H087'),
		('321.098.765-43', 'H030'),
		('061.062.063-64', 'H048'),
		('012.345.678-90', 'H079'),
		('012.345.678-90', 'H024'),
		('045.046.047-48', 'H072'),
		('543.210.987-65', 'H062'),
		('037.038.039-40', 'H015'),
		('021.022.023-24', 'H059'),
		('045.046.047-48', 'H029'),
		('041.042.043-44', 'H086'),
		('021.022.023-24', 'H029'),
		('041.042.043-44', 'H042'),
		('013.014.015-16', 'H026'),
		('029.030.031-32', 'H052'),
		('041.042.043-44', 'H008'),
		('987.654.321-09', 'H002'),
		('021.022.023-24', 'H064'),
		('025.026.027-28', 'H030'),
		('013.014.015-16', 'H057'),
		('065.066.067-68', 'H016'),
		('789.012.345-67', 'H067'),
		('053.054.055-56', 'H015'),
		('033.034.035-36', 'H006'),
		('073.074.075-76', 'H080'),
		('009.010.011-12', 'H062'),
		('077.078.079-80', 'H085'),
		('073.074.075-76', 'H057'),
		('085.086.087-88', 'H011'),
		('045.046.047-48', 'H004'),
		('041.042.043-44', 'H024'),
		('037.038.039-40', 'H061'),
		('085.086.087-88', 'H047'),
		('567.890.123-45', 'H054'),
		('053.054.055-56', 'H088'),
		('210.987.654-32', 'H085'),
		('009.010.011-12', 'H029'),
		('098.765.432-10', 'H085'),
		('654.321.098-76', 'H044'),
		('085.086.087-88', 'H002'),
		('085.086.087-88', 'H018'),
		('234.567.890-12', 'H097'),
		('789.012.345-67', 'H055');
	
	
	
	INSERT INTO vaga_habilidade VALUES 
		('VAGA100', 'H089'),
		('VAGA062', 'H086'),
		('VAGA066', 'H014'),
		('VAGA046', 'H067'),
		('VAGA057', 'H046'),
		('VAGA121', 'H060'),
		('VAGA046', 'H094'),
		('VAGA036', 'H093'),
		('VAGA051', 'H030'),
		('VAGA124', 'H072'),
		('VAGA104', 'H059'),
		('VAGA111', 'H058'),
		('VAGA115', 'H029'),
		('VAGA036', 'H032'),
		('VAGA113', 'H037'),
		('VAGA098', 'H032'),
		('VAGA120', 'H072'),
		('VAGA043', 'H027'),
		('VAGA057', 'H091'),
		('VAGA123', 'H037'),
		('VAGA061', 'H035'),
		('VAGA058', 'H021'),
		('VAGA122', 'H093'),
		('VAGA032', 'H079'),
		('VAGA041', 'H049'),
		('VAGA035', 'H062'),
		('VAGA117', 'H081'),
		('VAGA112', 'H028'),
		('VAGA038', 'H071'),
		('VAGA121', 'H087'),
		('VAGA112', 'H055'),
		('VAGA042', 'H012'),
		('VAGA054', 'H071'),
		('VAGA093', 'H011'),
		('VAGA037', 'H046'),
		('VAGA059', 'H090'),
		('VAGA044', 'H097'),
		('VAGA113', 'H061'),
		('VAGA056', 'H081'),
		('VAGA105', 'H049'),
		('VAGA104', 'H046'),
		('VAGA117', 'H023'),
		('VAGA095', 'H005'),
		('VAGA123', 'H082'),
		('VAGA124', 'H063'),
		('VAGA101', 'H033'),
		('VAGA102', 'H012'),
		('VAGA056', 'H018'),
		('VAGA094', 'H030'),
		('VAGA054', 'H060'),
		('VAGA113', 'H006'),
		('VAGA031', 'H037'),
		('VAGA121', 'H038'),
		('VAGA032', 'H093'),
		('VAGA112', 'H004'),
		('VAGA056', 'H095'),
		('VAGA059', 'H016'),
		('VAGA050', 'H093'),
		('VAGA114', 'H021'),
		('VAGA044', 'H043'),
		('VAGA113', 'H099'),
		('VAGA069', 'H082'),
		('VAGA056', 'H015'),
		('VAGA038', 'H025'),
		('VAGA055', 'H075'),
		('VAGA069', 'H075'),
		('VAGA063', 'H071'),
		('VAGA055', 'H089'),
		('VAGA036', 'H068'),
		('VAGA099', 'H030'),
		('VAGA101', 'H016'),
		('VAGA113', 'H016'),
		('VAGA091', 'H049'),
		('VAGA117', 'H029'),
		('VAGA046', 'H011'),
		('VAGA091', 'H072'),
		('VAGA067', 'H058'),
		('VAGA105', 'H005'),
		('VAGA053', 'H077'),
		('VAGA046', 'H053'),
		('VAGA114', 'H022'),
		('VAGA033', 'H042'),
		('VAGA121', 'H036'),
		('VAGA062', 'H041'),
		('VAGA059', 'H002'),
		('VAGA112', 'H045'),
		('VAGA063', 'H070'),
		('VAGA057', 'H011'),
		('VAGA036', 'H035'),
		('VAGA036', 'H071'),
		('VAGA101', 'H095'),
		('VAGA098', 'H061'),
		('VAGA096', 'H012'),
		('VAGA046', 'H065'),
		('VAGA045', 'H096'),
		('VAGA042', 'H074'),
		('VAGA103', 'H093'),
		('VAGA051', 'H047'),
		('VAGA098', 'H051'),
		('VAGA045', 'H076'),
		('VAGA060', 'H091'),
		('VAGA044', 'H061'),
		('VAGA062', 'H056'),
		('VAGA115', 'H010'),
		('VAGA058', 'H081'),
		('VAGA052', 'H023'),
		('VAGA041', 'H041'),
		('VAGA106', 'H022'),
		('VAGA054', 'H093'),
		('VAGA114', 'H012'),
		('VAGA104', 'H068'),
		('VAGA119', 'H053'),
		('VAGA055', 'H091'),
		('VAGA068', 'H061'),
		('VAGA098', 'H035'),
		('VAGA064', 'H067'),
		('VAGA067', 'H062'),
		('VAGA048', 'H026'),
		('VAGA124', 'H005'),
		('VAGA042', 'H051'),
		('VAGA121', 'H065'),
		('VAGA043', 'H086'),
		('VAGA047', 'H042'),
		('VAGA049', 'H055'),
		('VAGA115', 'H055'),
		('VAGA101', 'H067'),
		('VAGA059', 'H017'),
		('VAGA113', 'H037'),
		('VAGA035', 'H014'),
		('VAGA058', 'H006'),
		('VAGA118', 'H030'),
		('VAGA113', 'H005'),
		('VAGA121', 'H077'),
		('VAGA061', 'H063'),
		('VAGA046', 'H052'),
		('VAGA114', 'H074'),
		('VAGA067', 'H044'),
		('VAGA038', 'H057'),
		('VAGA062', 'H007'),
		('VAGA048', 'H007'),
		('VAGA046', 'H037'),
		('VAGA110', 'H013'),
		('VAGA102', 'H074'),
		('VAGA108', 'H014'),
		('VAGA062', 'H083'),
		('VAGA070', 'H015'),
		('VAGA123', 'H035'),
		('VAGA032', 'H052'),
		('VAGA034', 'H071'),
		('VAGA123', 'H071'),
		('VAGA091', 'H012'),
		('VAGA050', 'H015'),
		('VAGA051', 'H043'),
		('VAGA049', 'H048'),
		('VAGA050', 'H030'),
		('VAGA107', 'H019'),
		('VAGA054', 'H049'),
		('VAGA065', 'H002'),
		('VAGA111', 'H057'),
		('VAGA037', 'H071'),
		('VAGA060', 'H057'),
		('VAGA112', 'H085'),
		('VAGA050', 'H070'),
		('VAGA101', 'H047'),
		('VAGA037', 'H045'),
		('VAGA039', 'H076'),
		('VAGA046', 'H006'),
		('VAGA064', 'H062'),
		('VAGA094', 'H064'),
		('VAGA059', 'H012'),
		('VAGA091', 'H061'),
		('VAGA036', 'H084'),
		('VAGA066', 'H009'),
		('VAGA048', 'H095'),
		('VAGA109', 'H042'),
		('VAGA092', 'H072'),
		('VAGA095', 'H092'),
		('VAGA046', 'H057'),
		('VAGA067', 'H024'),
		('VAGA111', 'H059'),
		('VAGA039', 'H048'),
		('VAGA095', 'H006'),
		('VAGA032', 'H021'),
		('VAGA064', 'H052'),
		('VAGA102', 'H027'),
		('VAGA040', 'H029'),
		('VAGA091', 'H070'),
		('VAGA110', 'H031'),
		('VAGA034', 'H024'),
		('VAGA116', 'H040'),
		('VAGA044', 'H036'),
		('VAGA108', 'H004'),
		('VAGA119', 'H054'),
		('VAGA100', 'H092'),
		('VAGA041', 'H006'),
		('VAGA094', 'H071'),
		('VAGA109', 'H082'),
		('VAGA100', 'H012'),
		('VAGA120', 'H061'),
		('VAGA069', 'H042'),
		('VAGA122', 'H021'),
		('VAGA057', 'H091'),
		('VAGA105', 'H036'),
		('VAGA039', 'H075'),
		('VAGA097', 'H019'),
		('VAGA052', 'H009'),
		('VAGA121', 'H015'),
		('VAGA060', 'H022'),
		('VAGA106', 'H026'),
		('VAGA091', 'H023'),
		('VAGA121', 'H008'),
		('VAGA112', 'H066'),
		('VAGA056', 'H064'),
		('VAGA051', 'H031'),
		('VAGA036', 'H010'),
		('VAGA102', 'H020'),
		('VAGA091', 'H073'),
		('VAGA099', 'H041'),
		('VAGA104', 'H033'),
		('VAGA038', 'H088'),
		('VAGA101', 'H010'),
		('VAGA125', 'H045'),
		('VAGA063', 'H014'),
		('VAGA102', 'H028'),
		('VAGA099', 'H089'),
		('VAGA065', 'H054'),
		('VAGA105', 'H075'),
		('VAGA064', 'H002'),
		('VAGA111', 'H051'),
		('VAGA102', 'H035'),
		('VAGA095', 'H047'),
		('VAGA055', 'H024'),
		('VAGA031', 'H069'),
		('VAGA034', 'H040'),
		('VAGA114', 'H071'),
		('VAGA040', 'H079'),
		('VAGA058', 'H086'),
		('VAGA057', 'H055'),
		('VAGA070', 'H063'),
		('VAGA065', 'H003'),
		('VAGA108', 'H016'),
		('VAGA059', 'H076'),
		('VAGA042', 'H007'),
		('VAGA112', 'H042'),
		('VAGA095', 'H057'),
		('VAGA053', 'H049'),
		('VAGA122', 'H015'),
		('VAGA118', 'H099'),
		('VAGA114', 'H012'),
		('VAGA048', 'H062');
	
	
	
	INSERT INTO conversa VALUES 
		('C001', 'Prezado Profissional, estamos interessados em sua candidatura para a vaga de Desenvolvedor Sênior. Poderia fornecer mais detalhes sobre sua experiência?', '2023-12-02 09:00:00', '23.456.789/0003-23', '097.098.099-00'),
		('C002', 'Agradecemos por se candidatar à nossa vaga de Analista de Dados. Gostaríamos de agendar uma entrevista virtual para discutir mais sobre sua qualificação. Está disponível na próxima semana?', '2023-12-02 09:15:00', '23.456.789/0003-23', '005.006.007-08'),
		('C003', 'Caro Candidato, agradecemos seu interesse na posição de Gerente de Projetos. Poderia compartilhar sua disponibilidade para uma entrevista presencial?', '2023-12-02 09:30:00', '23.456.789/0003-23', '678.901.234-56'),
		('C004', 'Prezado Profissional, ficamos impressionados com seu perfil para a vaga de Engenheiro de Software. Podemos marcar uma reunião virtual para discutir mais sobre suas habilidades e expectativas?', '2023-12-02 09:45:00', '34.567.890/0007-67', '009.010.011-12'),
		('C005', 'Estimado Candidato, gostaríamos de agendar uma chamada para falar sobre a oportunidade de Desenvolvedor Front-end em nossa empresa. Qual seria um horário conveniente para você?', '2023-12-02 10:00:00', '56.789.012/0006-56', '876.543.210-98'),
		('C006', 'Prezado Profissional, sua candidatura para o cargo de Especialista em Segurança da Informação foi recebida. Estamos revisando seu currículo e entraremos em contato em breve para uma possível entrevista.', '2023-12-02 10:15:00', '87.654.321/0004-34', '073.074.075-76'),
		('C007', 'Agradecemos por se candidatar à vaga de Designer UI/UX. Estamos revisando os currículos e entraremos em contato com os candidatos selecionados para a próxima fase do processo seletivo.', '2023-12-02 10:30:00', '12.345.678/0001-90', '077.078.079-80'),
		('C008', 'Prezado Candidato, ficamos interessados em sua aplicação para a vaga de Analista de Suporte Técnico. Podemos agendar uma entrevista virtual para discutir mais sobre sua experiência?', '2023-12-02 10:45:00', '56.789.012/0006-56', '543.210.987-65'),
		('C009', 'Caro Profissional, gostaríamos de discutir sua candidatura para a vaga de Cientista de Dados. Podemos agendar uma reunião virtual para a próxima semana?', '2023-12-02 11:00:00', '23.456.789/0003-23', '432.109.876-54'),
		('C010', 'Prezado Candidato, sua aplicação para a posição de Gerente de Projetos de TI foi recebida. Estamos revisando os currículos e entraremos em contato com os candidatos selecionados.', '2023-12-02 11:15:00', '98.765.432/0002-01', '654.321.098-76'),
		('C011', 'Caro Profissional, sua aplicação para a vaga de Analista de Redes de Computadores chamou nossa atenção. Podemos agendar uma entrevista virtual para discutir mais sobre sua experiência?', '2023-12-02 11:30:00', '87.654.321/0004-34', '654.321.098-76'),
		('C012', 'Prezado Candidato, agradecemos por se candidatar à posição de Arquiteto de Soluções. Estamos revisando os currículos e entraremos em contato em breve para mais detalhes.', '2023-12-02 11:45:00', '98.765.432/0002-01', '069.070.071-72'),
		('C013', 'Estimado Profissional, sua candidatura para a vaga de Desenvolvedor Full Stack foi recebida. Podemos agendar uma chamada para discutir mais sobre suas habilidades técnicas?', '2023-12-02 12:00:00', '98.765.432/0002-01', '061.062.063-64'),
		('C014', 'Caro Candidato, agradecemos por sua candidatura à posição de Analista de Segurança da Informação. Estamos avaliando as candidaturas e entraremos em contato com os candidatos selecionados.', '2023-12-02 12:15:00', '98.765.432/0002-01', '013.014.015-16'),
		('C015', 'Prezado Profissional, ficamos interessados em sua aplicação para a vaga de Engenheiro de Redes. Podemos marcar uma entrevista virtual para discutir mais sobre sua experiência e expectativas?', '2023-12-02 12:30:00', '23.456.789/0003-23', '098.765.432-10'),
		('C016', 'Agradecemos por sua inscrição na oportunidade de Desenvolvedor Mobile. Estamos revisando os currículos e entraremos em contato em breve para a próxima etapa do processo seletivo.', '2023-12-02 12:45:00', '23.456.789/0003-23', '081.082.083-84'),
		('C017', 'Estimado Candidato, sua candidatura para a posição de Especialista em Banco de Dados foi recebida. Podemos agendar uma chamada para discutir mais sobre suas qualificações?', '2023-12-02 13:00:00', '56.789.012/0006-56', '093.094.095-96'),
		('C018', 'Prezado Profissional, ficamos impressionados com seu perfil para a vaga de Analista de Business Intelligence. Podemos marcar uma reunião virtual para discutir mais detalhes?', '2023-12-02 13:15:00', '23.456.789/0003-23', '876.543.210-98'),
		('C019', 'Caro Candidato, agradecemos por se candidatar à posição de Desenvolvedor Back-end. Estamos revisando as candidaturas e entraremos em contato em breve.', '2023-12-02 13:30:00', '56.789.012/0006-56', '432.109.876-54'),
		('C020', 'Prezado Profissional, sua aplicação para a vaga de Engenheiro de Software Júnior foi recebida. Podemos agendar uma entrevista para discutir mais sobre suas habilidades?', '2023-12-02 13:45:00', '56.789.012/0006-56', '053.054.055-56'),
		('C021', 'Estimado Profissional, sua candidatura para a vaga de Analista de Sistemas foi recebida. Podemos agendar uma entrevista virtual para discutir mais sobre suas habilidades técnicas?', '2023-12-02 14:00:00', '98.765.432/0002-01', '049.050.051-52'),
		('C022', 'Prezado Candidato, agradecemos por sua aplicação à posição de Analista de Qualidade de Software. Estamos revisando as candidaturas e entraremos em contato em breve.', '2023-12-02 14:15:00', '87.654.321/0004-34', '123.456.789-09'),
		('C023', 'Caro Profissional, gostaríamos de discutir sua candidatura para a vaga de Engenheiro de Software Pleno. Podemos agendar uma chamada para a próxima semana?', '2023-12-02 14:30:00', '12.345.678/0001-90', '069.070.071-72'),
		('C024', 'Agradecemos por se candidatar à oportunidade de Desenvolvedor Java. Estamos revisando os currículos e entraremos em contato com os candidatos selecionados.', '2023-12-02 14:45:00', '45.678.901/0005-45', '654.321.098-76'),
		('C025', 'Prezado Candidato, ficamos interessados em seu perfil para a vaga de Analista de Infraestrutura. Podemos marcar uma reunião virtual para discutir mais detalhes?', '2023-12-02 15:00:00', '87.654.321/0004-34', '345.678.901-23'),
		('C026', 'Caro Profissional, agradecemos por sua candidatura à posição de Especialista em Cloud Computing. Estamos avaliando as candidaturas e entraremos em contato em breve.', '2023-12-02 15:15:00', '87.654.321/0004-34', '901.234.567-89'),
		('C027', 'Estimado Candidato, sua aplicação para a vaga de Analista de Banco de Dados foi recebida. Podemos agendar uma chamada para discutir mais sobre sua experiência?', '2023-12-02 15:30:00', '98.765.432/0002-01', '009.010.011-12'),
		('C028', 'Prezado Profissional, ficamos impressionados com seu currículo para a posição de Desenvolvedor Python. Podemos marcar uma entrevista virtual para discutir mais detalhes?', '2023-12-02 15:45:00', '12.345.678/0001-90', '057.058.059-60'),
		('C029', 'Agradecemos por se candidatar à oportunidade de Analista de Redes. Estamos revisando as candidaturas e entraremos em contato em breve com os próximos passos.', '2023-12-02 16:00:00', '45.678.901/0005-45', '041.042.043-44'),
		('C030', 'Caro Candidato, sua aplicação para a posição de Analista de Suporte Técnico foi recebida. Podemos agendar uma chamada para discutir mais sobre suas qualificações?', '2023-12-02 16:15:00', '56.789.012/0006-56', '009.010.011-12');

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

https://colab.research.google.com/drive/1WW4Fj4dMy7XJxHXLgys3U3fBBBuF1gth#scrollTo=HtUPoY613UUc


### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
https://docs.google.com/presentation/d/1xwYLmWuPDVgDEjb64JkogORGCbiV8JI-DehTdWOZMTI/edit#slide=id.g2a0f283a160_0_272<br>

#### b) Tempo de apresentação 6:40 
https://www.youtube.com/watch?v=cM6bbV76HlE <br>
