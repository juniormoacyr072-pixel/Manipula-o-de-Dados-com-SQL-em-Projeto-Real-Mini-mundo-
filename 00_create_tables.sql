CREATE TABLE Segmento (
    id_segmento INT PRIMARY KEY,
    nome_segmento VARCHAR(100),
    descricao VARCHAR(255)
);

CREATE TABLE Regra_Negocio (
    id_regra INT PRIMARY KEY,
    descricao VARCHAR(255),
    segmento_origem INT,
    tipo_operacao VARCHAR(50),
    FOREIGN KEY (segmento_origem) REFERENCES Segmento(id_segmento)
);

CREATE TABLE Operador (
    id_operador INT PRIMARY KEY,
    nome VARCHAR(150),
    matricula VARCHAR(20),
    cpf VARCHAR(15),
    segmento INT,
    status VARCHAR(20),
    FOREIGN KEY (segmento) REFERENCES Segmento(id_segmento)
);

CREATE TABLE Atendimento (
    id_atendimento INT PRIMARY KEY,
    data DATE,
    tipo VARCHAR(50),
    status VARCHAR(50),
    id_operador INT,
    FOREIGN KEY (id_operador) REFERENCES Operador(id_operador)
);

CREATE TABLE Campanha (
    id_campanha INT PRIMARY KEY,
    nome VARCHAR(150),
    dt_inicio DATE,
    dt_fim DATE,
    meta_vendas INT
);

CREATE TABLE Venda (
    id_venda INT PRIMARY KEY,
    data_venda DATE,
    valor DECIMAL(10,2),
    status_venda VARCHAR(50),
    id_atendimento INT,
    id_campanha INT,
    FOREIGN KEY (id_atendimento) REFERENCES Atendimento(id_atendimento),
    FOREIGN KEY (id_campanha) REFERENCES Campanha(id_campanha)
);
