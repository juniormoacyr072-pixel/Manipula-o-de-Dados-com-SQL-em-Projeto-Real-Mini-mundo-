# Banco de Dados – Experiência Prática

Este repositório contém os scripts SQL desenvolvidos para a disciplina de Banco de Dados.  
O projeto modela um ambiente de **operadores**, **segmentos**, **atendimentos**, **vendas**, **campanhas** e **regras de negócio**.

---

## 📌 Arquivos do Repositório

### `00_create_tables.sql`
Criação das tabelas do banco de acordo com o modelo lógico da atividade.

### `01_insert.sql`
Scripts de inserção de dados nas tabelas principais:
- Segmento  
- Regra_Negocio  
- Operador  
- Atendimento  
- Campanha  
- Venda  

### `02_selects.sql`
Consultas contendo:
- WHERE  
- ORDER BY  
- LIMIT  
- JOIN (com até 3 tabelas)

### `03_updates_deletes.sql`
Manipulação de dados contendo:
- 3 UPDATEs com condições  
- 3 DELETEs com condições  

---

## ▶️ Como Executar

1. Criar o banco de dados:
   ```sql
   CREATE DATABASE projeto_operadores;
