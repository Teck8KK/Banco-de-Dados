-- Criação do Banco de Dados
CREATE DATABASE ClinicaVeterinaria;
USE ClinicaVeterinaria;

-- Tabela Cliente (Entidade Forte)
CREATE TABLE Cliente (
    CPF VARCHAR(11) PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Telefone VARCHAR(15)
);

-- Tabela Veterinário (Entidade Forte)
CREATE TABLE Veterinario (
    CRMv VARCHAR(10) PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Data_Admissao DATE NOT NULL,
    Salario DECIMAL(10,2) NOT NULL
);

-- Tabela Animal (Possui relacionamento 1:N com Cliente)
CREATE TABLE Animal (
    Codigo INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    Ano_Nascimento INT,
    Raca VARCHAR(50),
    CPF_Cliente VARCHAR(11) NOT NULL,
    FOREIGN KEY (CPF_Cliente) REFERENCES Cliente(CPF)
);

-- Tabela Consulta (Tabela associativa nascida do relacionamento N:M)
CREATE TABLE Consulta (
    ID_Consulta INT PRIMARY KEY AUTO_INCREMENT,
    Data DATE NOT NULL,
    Hora TIME NOT NULL,
    Motivo VARCHAR(255) NOT NULL,
    CRMv_Vet VARCHAR(10) NOT NULL,
    Codigo_Animal INT NOT NULL,
    FOREIGN KEY (CRMv_Vet) REFERENCES Veterinario(CRMv),
    FOREIGN KEY (Codigo_Animal) REFERENCES Animal(Codigo)
);
