-- 1. Mudar status do operador
UPDATE Operador
SET status = 'ATIVO'
WHERE id_operador = 12;

-- 2. Ajustar valor de vendas recusadas
UPDATE Venda
SET valor = 10
WHERE status_venda = 'RECUSADA';

-- 3. Alterar meta da campanha
UPDATE Campanha
SET meta_vendas = meta_vendas + 10
WHERE id_campanha = 501;
