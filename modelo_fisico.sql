drop table if exists concorre;
drop table if exists contato;
drop table if exists recomendacao;
drop table if exists vaga;
drop table if exists empregador;
drop table if exists profissional;

CREATE TABLE PROFISSIONAL (
    codigo DECIMAL PRIMARY KEY,
    nome VARCHAR,
    endereco VARCHAR,
    status_busca BOOLEAN,
    pretensao_salarial float,
    modalidade_trabalho VARCHAR,
    area_atuacao VARCHAR
);

CREATE TABLE EMPREGADOR (
    nome VARCHAR,
    area_atuacao VARCHAR,
    cpf_cnpj VARCHAR PRIMARY KEY,
    cep INTEGER,
    contato VARCHAR
);

CREATE TABLE VAGA (
    titulo VARCHAR,
    descricao VARCHAR,
    requisito VARCHAR,
    localizacao VARCHAR,
    modalidade VARCHAR,
    faixa_salarial float,
    tipo_contrato VARCHAR,
    codigo DECIMAL PRIMARY KEY,
    anunciante VARCHAR
);

alter table vaga add foreign key (anunciante) references empregador (cpf_cnpj) on delete cascade;

CREATE TABLE RECOMENDACAO (
    codigo DECIMAL PRIMARY KEY,
    area_atuacao VARCHAR,
    nivel VARCHAR,
    localidade VARCHAR,
    anunciante VARCHAR,
    FK_VAGA DECIMAL,
    FK_PROFISSIONAL DECIMAL
);

alter table recomendacao add foreign key (FK_VAGA) references vaga (codigo) on delete cascade;

alter table recomendacao add foreign key (FK_PROFISSIONAL) references profissional (codigo) on delete cascade;

CREATE TABLE CONTATO (
    codigo DECIMAL PRIMARY KEY,
    mensagem VARCHAR,
    remetente VARCHAR,
    destinatario DECIMAL,
	data_hora DATE
);

alter table contato add foreign key (remetente) references empregador (cpf_cnpj) on delete cascade;

alter table contato add foreign key (destinatario) references profissional (codigo) on delete cascade;