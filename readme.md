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

![logico](https://github.com/kenzokomati/DB/assets/109813173/cd78a434-ff04-4b5c-88d7-24ff61d0cf18)

### 7.	[MODELO FÍSICO](modelo_fisico.sql) <br>

	DROP VIEW IF EXISTS vaga_data_inscricao;
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
	
	INSERT INTO PROFISSIONAL (cpf, nome, endereco, status_busca, pretensao_salarial, modalidade_trabalho, area_atuacao)
	VALUES 
	  ('12345678901', 'Maria Oliveira', 'Av. Principal, 123', true, 6000.00, 'Remoto', 'Marketing'),
	  ('23456789012', 'Carlos Santos', 'Rua das Flores, 456', true, 7500.00, 'Presencial', 'Engenharia'),
	  ('34567890123', 'Ana Souza', 'Alameda dos Anjos, 789', false, 5500.00, 'Remoto', 'Recursos Humanos'),
	  ('45678901234', 'Lucas Pereira', 'Avenida Central, 567', true, 7000.00, 'Presencial', 'Desenvolvimento'),
	  ('56789012345', 'Fernanda Lima', 'Travessa dos Bosques, 678', false, 8000.00, 'Remoto', 'Design'),
	  ('67890123456', 'Rafael Oliveira', 'Rua das Estrelas, 789', true, 6500.00, 'Presencial', 'TI'),
	  ('78901234567', 'Isabela Silva', 'Av. dos Girassóis, 890', true, 7200.00, 'Remoto', 'Engenharia'),
	  ('89012345678', 'Gabriel Santos', 'Praça Central, 901', false, 5800.00, 'Presencial', 'Recursos Humanos'),
	  ('90123456789', 'Mariana Souza', 'Alameda dos Lírios, 123', true, 6700.00, 'Remoto', 'Marketing'),
	  ('11223344556', 'Thiago Pereira', 'Rua das Águas, 456', true, 6900.00, 'Presencial', 'Desenvolvimento'),
	  ('22334455667', 'Juliana Lima', 'Avenida do Sol, 789', false, 7800.00, 'Remoto', 'Design'),
	  ('33445566778', 'Felipe Oliveira', 'Travessa da Lua, 890', true, 7300.00, 'Presencial', 'TI'),
	  ('44556677889', 'Amanda Silva', 'Av. das Estrelas, 901', true, 8200.00, 'Remoto', 'Engenharia'),
	  ('55667788990', 'Rodrigo Santos', 'Rua da Paz, 123', false, 6100.00, 'Presencial', 'Recursos Humanos'),
	  ('66778899001', 'Luiza Souza', 'Alameda das Flores, 456', true, 5600.00, 'Remoto', 'Marketing');
	
	
	 
	INSERT INTO EMPREGADOR (nome, area_atuacao, cnpj, cep)
	VALUES 
	  ('Empresa A', 'Tecnologia', '12345678000101', '12345678'),
	  ('Empresa B', 'Saúde', '23456789000112', '23456789'),
	  ('Empresa C', 'Educação', '34567890123423', '34567890'),
	  ('Empresa D', 'Alimentação', '45678901234534', '45678901'),
	  ('Empresa E', 'Varejo', '56789012345645', '56789012'),
	  ('Empresa F', 'Engenharia', '67890123456756', '67890123'),
	  ('Empresa G', 'Marketing', '78901234567867', '78901234'),
	  ('Empresa H', 'Automotivo', '89012345678978', '89012345'),
	  ('Empresa I', 'Financeiro', '90123456789089', '90123456'),
	  ('Empresa J', 'Moda', '11223344556690', '11223344'),
	  ('Empresa K', 'Turismo', '22334455667701', '22334455'),
	  ('Empresa L', 'Construção', '33445566778812', '33445566'),
	  ('Empresa M', 'Telecomunicações', '44556677889923', '44556677'),
	  ('Empresa N', 'Energia', '55667788990034', '55667788'),
	  ('Empresa O', 'Logística', '66778899001145', '66778899');
	
	
	 
	INSERT INTO VAGA (
	    titulo, descricao, requisito, localizacao, modalidade,
	    salario_base, salario_maximo, tipo_contrato, data_anuncio,
	    data_fim, codigo, anunciante
	)
	VALUES 
	   ('Desenvolvedor Front-end', 'Desenvolvimento de interfaces web responsivas.', 'Experiência em HTML, CSS, JavaScript.', 'São Paulo, SP', 'Presencial', 5000.00, 8000.00, 'CLT', '2023-01-01', '2023-02-01', 1, '12345678000101'),
	  ('Analista de Marketing Digital', 'Elaboração de estratégias de marketing online.', 'Conhecimento em SEO, SEM, redes sociais.', 'Rio de Janeiro, RJ', 'Remoto', 6000.00, 9000.00, 'PJ', '2023-01-15', '2023-02-15', 2, '23456789000112'),
	  ('Engenheiro Civil', 'Coordenação de projetos de construção civil.', 'Formação em Engenharia Civil, experiência comprovada.', 'Belo Horizonte, MG', 'Presencial', 7000.00, 10000.00, 'CLT', '2023-02-01', '2023-03-01', 3, '34567890123423'),
	  ('Enfermeiro(a)', 'Assistência direta ao paciente em hospital.', 'Formação em Enfermagem, registro ativo.', 'Curitiba, PR', 'Presencial', 5500.00, 8500.00, 'CLT', '2023-02-15', '2023-03-15', 4, '45678901234534'),
	  ('Analista Financeiro', 'Análise de fluxo de caixa e elaboração de relatórios.', 'Experiência na área financeira.', 'Porto Alegre, RS', 'Remoto', 6500.00, 9500.00, 'PJ', '2023-03-01', '2023-04-01', 5, '56789012345645'),
	  ('Designer Gráfico', 'Criação de peças gráficas e materiais publicitários.', 'Domínio de ferramentas como Adobe Photoshop e Illustrator.', 'Recife, PE', 'Presencial', 5500.00, 8000.00, 'CLT', '2023-03-15', '2023-04-15', 6, '67890123456756'),
	  ('Engenheiro de Software', 'Desenvolvimento e manutenção de sistemas.', 'Experiência em programação Java e bancos de dados.', 'Salvador, BA', 'Remoto', 8000.00, 12000.00, 'CLT', '2023-04-01', '2023-05-01', 7, '78901234567867'),
	  ('Analista de Recursos Humanos', 'Recrutamento e seleção de talentos.', 'Conhecimento em processos de RH.', 'Fortaleza, CE', 'Presencial', 6000.00, 9000.00, 'CLT', '2023-04-15', '2023-05-15', 8, '89012345678978'),
	  ('Técnico de Suporte', 'Atendimento a usuários e resolução de problemas técnicos.', 'Experiência em suporte a sistemas operacionais.', 'Manaus, AM', 'Presencial', 4500.00, 7000.00, 'CLT', '2023-05-01', '2023-06-01', 9, '90123456789089'),
	  ('Analista de Vendas', 'Prospecção de clientes e fechamento de negócios.', 'Experiência em vendas corporativas.', 'Goiânia, GO', 'Remoto', 7000.00, 11000.00, 'PJ', '2023-05-15', '2023-06-15', 10, '11223344556690'),
	  ('Arquiteto(a)', 'Elaboração de projetos arquitetônicos.', 'Formação em Arquitetura, experiência comprovada.', 'Brasília, DF', 'Presencial', 7500.00, 11500.00, 'CLT', '2023-06-01', '2023-07-01', 11, '22334455667701'),
	  ('Analista de Sistemas', 'Análise e desenvolvimento de sistemas.', 'Experiência em linguagens como Python e Ruby.', 'Natal, RN', 'Remoto', 8000.00, 12000.00, 'CLT', '2023-06-15', '2023-07-15', 12, '33445566778812'),
	  ('Gerente de Projetos', 'Coordenação de equipes e projetos.', 'Certificação PMP, experiência em gestão de projetos.', 'João Pessoa, PB', 'Presencial', 9000.00, 13000.00, 'CLT', '2023-07-01', '2023-08-01', 13, '44556677889923'),
	  ('Analista de Qualidade', 'Controle e garantia de qualidade de produtos.', 'Experiência em processos de qualidade.', 'Cuiabá, MT', 'Remoto', 6500.00, 10000.00, 'PJ', '2023-07-15', '2023-08-15', 14, '55667788990034'),
	  ('Analista de Comunicação', 'Elaboração de estratégias de comunicação.', 'Conhecimento em assessoria de imprensa e redes sociais.', 'Porto Velho, RO', 'Presencial', 6000.00, 9500.00, 'CLT', '2023-08-01', '2023-09-01', 15, '66778899001145');
	
	 
	 
	INSERT INTO PROFISSIONAL_VAGA
	VALUES
	('12345678901', 1), ('23456789012', 2),
	('34567890123', 3), ('45678901234', 4),
	('56789012345', 5), ('67890123456', 6),
	('78901234567', 7), ('89012345678', 8),
	('90123456789', 9), ('11223344556', 10),
	('22334455667', 11), ('33445566778', 12),
	('44556677889', 13), ('55667788990', 14),
	('66778899001', 15), ('12345678901', 1),
	('23456789012', 2), ('34567890123', 3),
	('45678901234', 4), ('56789012345', 5),
	('67890123456', 6), ('78901234567', 7),
	('89012345678', 8), ('90123456789', 9),
	('11223344556', 10), ('22334455667', 11),
	('33445566778', 12), ('44556677889', 13),
	('55667788990', 14), ('66778899001', 15),
	('12345678901', 1), ('23456789012', 2),
	('34567890123', 3), ('45678901234', 4),
	('56789012345', 5), ('67890123456', 6),
	('78901234567', 7), ('89012345678', 8),
	('90123456789', 9), ('11223344556', 10),
	('22334455667', 11), ('33445566778', 12),
	('44556677889', 13), ('55667788990', 14),
	('66778899001', 15);
	
	
	
	INSERT INTO HABILIDADE (codigo, nome, tipo, area_atuacao)
	VALUES 
	  (1, 'HTML', 'Linguagem de Marcação', 'Desenvolvimento'),
	  (2, 'CSS', 'Linguagem de Estilo', 'Desenvolvimento'),
	  (3, 'JavaScript', 'Linguagem de Programação', 'Desenvolvimento'),
	  (4, 'SEO', 'Marketing Digital', 'Marketing'),
	  (5, 'Recrutamento', 'Recursos Humanos', 'Recursos Humanos'),
	  (6, 'Java', 'Linguagem de Programação', 'Desenvolvimento'),
	  (7, 'Python', 'Linguagem de Programação', 'Desenvolvimento'),
	  (8, 'Gestão de Projetos', 'Habilidade Gerencial', 'Diversas'),
	  (9, 'Comunicação', 'Habilidade Interpessoal', 'Diversas'),
	  (10, 'Assessoria de Imprensa', 'Comunicação', 'Comunicação'),
	  (11, 'Design Gráfico', 'Design', 'Design'),
	  (12, 'Redes Sociais', 'Marketing Digital', 'Marketing'),
	  (13, 'Enfermagem Clínica', 'Saúde', 'Saúde'),
	  (14, 'Finanças Corporativas', 'Finanças', 'Financeiro'),
	  (15, 'Desenvolvimento Mobile', 'Desenvolvimento', 'Desenvolvimento Mobile');
	
	 
	 
	INSERT INTO PROFISSIONAL_HABILIDADE VALUES
	('12345678901', 1), ('12345678901', 4),
	('23456789012', 2), ('23456789012', 8),
	('34567890123', 5), ('34567890123', 9),
	('45678901234', 3), ('45678901234', 6),
	('56789012345', 11), ('56789012345', 12),
	('67890123456', 3), ('67890123456', 7),
	('78901234567', 8), ('78901234567', 13),
	('89012345678', 5), ('89012345678', 14),
	('90123456789', 1), ('90123456789', 4),
	('11223344556', 3), ('11223344556', 9),
	('22334455667', 11), ('22334455667', 12),
	('33445566778', 6), ('33445566778', 10),
	('44556677889', 2), ('44556677889', 14),
	('55667788990', 7), ('55667788990', 13),
	('66778899001', 5), ('66778899001', 9),
	('12345678901', 7), ('23456789012', 5),
	('34567890123', 3), ('45678901234', 11),
	('56789012345', 2), ('67890123456', 14),
	('78901234567', 6), ('89012345678', 13),
	('90123456789', 10), ('11223344556', 8),
	('22334455667', 4), ('33445566778', 12),
	('44556677889', 9), ('55667788990', 1),
	('66778899001', 13);
	
	
	
	INSERT INTO VAGA_HABILIDADE VALUES
	(1, 1), (1, 2),
	(2, 4), (2, 5),
	(3, 8), (3, 12),
	(4, 13), (4, 1),
	(5, 14), (5, 4),
	(6, 11), (6, 12),
	(7, 6), (7, 7),
	(8, 5), (8, 9),
	(9, 6), (9, 15),
	(10, 11), (10, 12),
	(11, 1), (11, 2),
	(12, 3), (12, 7),
	(13, 6), (13, 14),
	(14, 8), (14, 13),
	(15, 9), (15, 10),
	(1, 13), (2, 14),
	(3, 9), (4, 11),
	(5, 12), (6, 15),
	(7, 7), (8, 10),
	(9, 1), (10, 13),
	(11, 3), (12, 6),
	(13, 8), (14, 12),
	(15, 9), (1, 7),
	(2, 5), (3, 3),
	(4, 11), (5, 2),
	(6, 14), (7, 7),
	(8, 6), (9, 9),
	(10, 1), (11, 13),
	(12, 3), (13, 6),
	(14, 4), (15, 10);
	
	
	
	INSERT INTO CONVERSA (codigo, mensagem, data_hora, remetente, destinatario)
	VALUES 
	  (1, 'Olá, temos interesse em sua candidatura.', '2023-01-10 08:00:00', '12345678000101', '12345678901'),
	  (2, 'Gostaríamos de agendar uma entrevista.', '2023-02-15 10:30:00', '23456789000112', '23456789012'),
	  (3, 'Discussão sobre detalhes do projeto.', '2023-03-20 14:45:00', '34567890123423', '34567890123'),
	  (4, 'Convite para entrevista presencial.', '2023-04-10 09:15:00', '45678901234534', '45678901234'),
	  (5, 'Detalhes sobre a vaga de Engenheiro Eletricista.', '2023-05-15 11:45:00', '56789012345645', '56789012345'),
	  (6, 'Discussão sobre prazos de entrega.', '2023-06-20 15:30:00', '67890123456756', '67890123456'),
	  (7, 'Agendamento de teste prático.', '2023-07-25 10:00:00', '78901234567867', '78901234567'),
	  (8, 'Entrevista para vaga de Analista de SEO.', '2023-08-30 14:00:00', '89012345678978', '89012345678'),
	  (9, 'Detalhes sobre a vaga de Analista Financeiro.', '2023-09-05 09:30:00', '90123456789089', '90123456789'),
	  (10, 'Convite para entrevista presencial de Recrutamento.', '2023-10-12 10:00:00', '11223344556690', '11223344556'),
	  (11, 'Feedback sobre seu desempenho no teste prático.', '2023-11-15 15:45:00', '22334455667701', '33445566778'),
	  (12, 'Detalhes sobre a vaga de Designer Gráfico.', '2023-12-01 11:00:00', '33445566778812', '44556677889'),
	  (13, 'Convite para participar de processo seletivo.', '2024-01-10 09:30:00', '44556677889923', '55667788990'),
	  (14, 'Feedback sobre sua entrevista para a vaga de Analista de Vendas.', '2024-02-15 16:15:00', '55667788990034', '66778899001'),
	  (15, 'Convite para segunda fase do processo seletivo.', '2024-03-20 14:00:00', '66778899001145', '78901234567');

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


