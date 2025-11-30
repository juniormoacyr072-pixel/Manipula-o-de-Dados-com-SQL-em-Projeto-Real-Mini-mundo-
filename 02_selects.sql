-- 1. Operadores ativos por segmento
SELECT nome, matricula, status
FROM Operador
WHERE segmento = 2;

-- 2. Atendimentos finalizados ordenados por data
SELECT *
FROM Atendimento
WHERE status = 'FINALIZADO'
ORDER BY data DESC;

-- 3. Top 2 vendas de maior valor
SELECT id_venda, valor
FROM Venda
ORDER BY valor DESC
LIMIT 2;

-- 4. JOIN – operador + atendimento + venda
SELECT o.nome, a.tipo, v.valor, v.status_venda
FROM Venda v
JOIN Atendimento a ON v.id_atendimento = a.id_atendimento
JOIN Operador o ON a.id_operador = o.id_operador;

-- 5. Vendas por campanha (JOIN)
SELECT c.nome AS campanha, v.id_venda, v.valor
FROM Venda v
JOIN Campanha c ON v.id_campanha = c.id_campanha
ORDER BY valor DESC;
