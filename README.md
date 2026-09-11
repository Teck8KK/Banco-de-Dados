# Modelagem de Dados — Clínica Veterinária

Projeto acadêmico da disciplina de Banco de Dados: modelagem completa, do Modelo Conceitual (DER) ao Modelo Físico (script SQL), para o sistema de gestão de uma **Clínica Veterinária**.

## 🎯 Objetivo

Aplicar os conceitos de modelagem de dados — entidades, atributos, relacionamentos e cardinalidades — convertendo um cenário de negócio em:

1. Diagrama Entidade-Relacionamento (DER)
2. Esquema Relacional (Modelo Lógico)
3. Dicionário de Dados
4. Script SQL (DDL) para criação física do banco

## 📋 Cenário

A clínica precisa controlar:

- **Clientes** (CPF, Nome, Telefone) — donos dos animais
- **Animais** (Código, Nome, Ano de Nascimento, Raça) — cada animal pertence a um único cliente
- **Veterinários** (CRMv, Nome, Data de Admissão, Salário)
- **Consultas** — registro do atendimento de um veterinário a um animal, com Data, Hora e Motivo


## 🗂️ Estrutura do repositório

```
├── 1_der.png                    # Diagrama Entidade-Relacionamento (Modelo Conceitual)
├── 2_esquema_relacional.txt     # Modelo Lógico — tabelas, PKs e FKs
├── 3_dicionario_dados.pdf       # Dicionário de Dados de cada tabela
├── 4_script_fisico.sql          # Script DDL para criar o banco no MySQL
└── README.md                    # Este arquivo
```

## 🛠️ Ferramentas utilizadas

- MySQL Workbench (modelagem e geração do DDL)
- Editor de texto (esquema relacional)
- Word/PDF (dicionário de dados)

## 👥 Integrantes do grupo

- Flávio Eduardo Saturnino de Oliveira
