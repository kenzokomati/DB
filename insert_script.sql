-- Inserções na tabela EMPREGADOR
INSERT INTO EMPREGADOR (nome, area_atuacao, cpf_cnpj, cep, contato) VALUES
    ('Empresa A', 'Tecnologia', '12345678901', 12345, 'empresaA@email.com'),
    ('Empresa B', 'Saúde', '98765432109', 54321, 'empresaB@email.com'),
    ('Empresa C', 'Marketing', '55555555555', 33333, 'empresaC@email.com'),
    ('Empresa D', 'Engenharia', '66666666666', 44444, 'empresaD@email.com');

-- Inserções na tabela PROFISSIONAL
INSERT INTO PROFISSIONAL (codigo, nome, endereco, status_busca, pretensao_salarial, modalidade_trabalho, area_atuacao) VALUES
    (1, 'João', 'Rua A, 123', TRUE, 5000.00, 'Presencial', 'TI'),
    (2, 'Maria', 'Avenida B, 456', TRUE, 6000.00, 'Remoto', 'Saúde'),
    (3, 'Pedro', 'Rua X, 789', FALSE, 7000.00, 'Presencial', 'Marketing'),
    (4, 'Larissa', 'Avenida Y, 1011', TRUE, 5500.00, 'Remoto', 'Engenharia');

-- Inserções na tabela VAGA
INSERT INTO VAGA (titulo, descricao, requisito, localizacao, modalidade, faixa_salarial, tipo_contrato, codigo, anunciante) VALUES
    ('Desenvolvedor Web', 'Descrição da vaga de desenvolvedor web', 'Experiência em HTML, CSS, JavaScript', 'São Paulo', 'Remoto', 6000.00, 'CLT', 1, '12345678901'),
    ('Enfermeiro', 'Descrição da vaga de enfermeiro', 'Coren ativo, experiência em hospitais', 'Rio de Janeiro', 'Presencial', 5500.00, 'CLT', 2, '98765432109'),
    ('Analista de Marketing', 'Descrição da vaga de analista de marketing', 'Experiência em mídias sociais', 'São Paulo', 'Presencial', 5500.00, 'CLT', 3, '55555555555'),
    ('Engenheiro Civil', 'Descrição da vaga de engenheiro civil', 'Formação em Engenharia Civil', 'Curitiba', 'Presencial', 7000.00, 'CLT', 4, '66666666666');

-- Inserções na tabela RECOMENDACAO
INSERT INTO RECOMENDACAO (codigo, area, nivel, localidade, anunciante, FK_VAGA, FK_PROFISSIONAL) VALUES
    (1, 'TI', 'Júnior', 'São Paulo', '12345678901', 1, 1),
    (2, 'Saúde', 'Pleno', 'Rio de Janeiro', '98765432109', 2, 2),
    (3, 'Marketing', 'Pleno', 'São Paulo', '55555555555', 3, 3),
    (4, 'Engenharia', 'Sênior', 'Curitiba', '66666666666', 4, 4);

-- Inserções na tabela CONTATO
INSERT INTO CONTATO (codigo, mensagem, remetente, destinatario, data_hora) VALUES
    (1, 'Olá, tenho interesse na vaga de desenvolvedor web.', '12345678901', 2, '2023-10-26 09:00:00'),
    (2, 'Temos uma oportunidade para enfermeiro em nosso hospital.', '98765432109', 1, '2023-10-26 09:30:00'),
    (3, 'Estou interessado na vaga de analista de marketing.', '55555555555', 1, '2023-10-26 10:00:00'),
    (4, 'Gostaria de saber mais sobre a vaga de engenheiro civil.', '66666666666', 2, '2023-10-26 10:30:00');
