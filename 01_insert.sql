-- Segmento
INSERT INTO Segmento (id_segmento, nome_segmento, descricao) VALUES
(1, 'VIVO PRE CONTROLE', 'Atendimento e vendas pré e controle'),
(2, 'VIVO TOTAL', 'Segmento completo com atendimento geral'),
(3, 'PÓS PAGO', 'Clientes pós pagos');

-- Regras de Negócio
INSERT INTO Regra_Negocio (id_regra, descricao, segmento_origem, tipo_operacao) VALUES
(1, 'Validar elegibilidade do cliente', 1, 'Verificacao'),
(2, 'Aplicar desconto', 2, 'Comercial'),
(3, 'Regras especiais pós-pago', 3, 'Analise');

-- Operadores
INSERT INTO Operador (id_operador, nome, matricula, cpf, segmento, status) VALUES
(10, 'João Silva', '20201', '123.456.789-00', 1, 'ATIVO'),
(11, 'Maria Oliveira', '20202', '987.654.321-00', 2, 'ATIVO'),
(12, 'Carlos Lima', '20203', '111.222.333-44', 2, 'INATIVO');

-- Atendimentos
INSERT INTO Atendimento (id_atendimento, data, tipo, status, id_operador) VALUES
(1001, '2025-01-10', 'CALL', 'FINALIZADO', 10),
(1002, '2025-01-12', 'WHATSAPP', 'FINALIZADO', 11),
(1003, '2025-01-13', 'CALL', 'EM ABERTO', 11);

-- Campanhas
INSERT INTO Campanha (id_campanha, nome, dt_inicio, dt_fim, meta_vendas) VALUES
(501, 'Campanha Janeiro', '2025-01-01', '2025-01-31', 50),
(502, 'Campanha Premium', '2025-01-05', '2025-02-05', 70);

-- Vendas
INSERT INTO Venda (id_venda, data_venda, valor, status_venda, id_atendimento, id_campanha) VALUES
(9001, '2025-01-10', 120.50, 'APROVADA', 1001, 501),
(9002, '2025-01-12', 350.00, 'APROVADA', 1002, 502),
(9003, '2025-01-15', 0, 'RECUSADA', 1003, 501);
