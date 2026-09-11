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

### Relacionamentos

| Relacionamento | Cardinalidade | Regra aplicada |
|---|---|---|
| Cliente → Animal | 1:N | PK de Cliente vira FK em Animal |
| Veterinário ↔ Animal (via Consulta) | N:M | Consulta vira tabela própria, com as FKs das duas entidades |

## 🗂️ Estrutura do repositório

```
├── 1_der.png                    # Diagrama Entidade-Relacionamento (Modelo Conceitual)
├── 2_esquema_relacional.txt     # Modelo Lógico — tabelas, PKs e FKs
├── 3_dicionario_dados.pdf       # Dicionário de Dados de cada tabela
├── 4_script_fisico.sql          # Script DDL para criar o banco no MySQL
└── README.md                    # Este arquivo
```

## 🧩 Modelo Lógico (resumo)

```
Cliente (CPF, Nome, Telefone)
Veterinario (CRMv, Nome, Data_Admissao, Salario)
Animal (Codigo, Nome, Ano_Nascimento, Raca, CPF_Cliente (FK) referencia Cliente)
Consulta (ID_Consulta, Data, Hora, Motivo, CRMv_Vet (FK) referencia Veterinario, Codigo_Animal (FK) referencia Animal)
```

> `ID_Consulta` foi adicionado como chave primária substituta (surrogate key) da tabela `Consulta`, para evitar o uso de chave composta.

## ⚙️ Como executar o script SQL

1. Abra o **MySQL Workbench** e conecte-se a uma instância local.
2. Vá em **File → Open SQL Script** e selecione `4_script_fisico.sql`.
3. Clique no ícone de execução (⚡) para rodar o script completo.
4. O schema `ClinicaVeterinaria` e as 4 tabelas serão criados automaticamente, com as chaves estrangeiras já configuradas.

## 🛠️ Ferramentas utilizadas

- MySQL Workbench (modelagem e geração do DDL)
- Editor de texto (esquema relacional)
- Word/PDF (dicionário de dados)

## 👥 Integrantes do grupo

- [Nome 1]
- [Nome 2]
- [Nome 3]
- [Nome 4]

## 📚 Disciplina

Modelagem de Dados: Do Conceitual ao Lógico com Diagramas Entidade-Relacionamento (DER)
