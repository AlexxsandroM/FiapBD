-- Leonardo Faria Salazar - RM 557484
-- Jonathan Matheus Rasne Pereira Fonseca - RM 558437
-- Alexsandro Macedo de Jesus - RM 557068

-- Relatório de usuários com dados básicos, ordenado por pontos totais
SELECT 
    u.id_usuario,
    u.dt_nascimento,
    u.qt_total_pontos,
    u.st_cliente_porto,
    u.nr_cpf,
    u.nm_usuario,
    u.ds_email
FROM t_pq_usuario u
ORDER BY u.qt_total_pontos;

-- Relatório de recompensas
SELECT 
    rr.id_resgate AS "ID do Resgate",
    rr.ds_recompensa AS "Descrição da Recompensa",
    rr.qt_pontos_utilizados AS "Pontos Utilizados",
    rr.dt_resgate AS "Data do Resgate",
    rr.id_usuario AS "ID do Usuário"
FROM t_pq_resgate_recompensa rr
ORDER BY rr.qt_pontos_utilizados, rr.id_resgate;

-- Relatório com funções numéricas simples para valores de orçamento
SELECT
    MAX(o.vl_total) AS "Maior valor de orçamento", 
    MIN(o.vl_total) AS "Menor valor de orçamento", 
    AVG(o.vl_total) AS "Valor médio de orçamento"
FROM t_pq_orcamento o;

-- Contagem de orçamentos por status
SELECT
    o.ds_status AS "Status orçamento",
    COUNT(*) AS "Quantidade de orçamentos"
FROM t_pq_orcamento o
GROUP BY o.ds_status
ORDER BY "Quantidade de orçamentos" DESC;

-- Relatório com dados agregados de usuários por status de cliente
SELECT 
    u.st_cliente_porto AS "Status do cliente",
    AVG(u.qt_total_pontos) AS "Média de pontos acumulados",
    MAX(u.qt_total_pontos) AS "Máximo de pontos acumulados",
    MIN(u.qt_total_pontos) AS "Mínimo de pontos acumulados",
    COUNT(u.id_usuario) AS "Quantidade de usuários"
FROM t_pq_usuario u
GROUP BY u.st_cliente_porto
ORDER BY u.st_cliente_porto;

-- Relatório de veículos agrupado por marca, com média de pontos dos usuários proprietários
SELECT 
    v.nm_marca AS "Marca do veículo",
    COUNT(v.id_veiculo) AS "Quantidade de veículos",
    AVG(u.qt_total_pontos) AS "Média de pontos dos usuários"
FROM t_pq_veiculo v
JOIN t_pq_usuario u ON v.id_usuario = u.id_usuario
GROUP BY v.nm_marca
ORDER BY "Quantidade de veículos" DESC;

-- Relatório de usuários com pontos totais acima da média
WITH media_pontos AS (
    SELECT AVG(u.qt_total_pontos) AS media_geral_pontos
    FROM t_pq_usuario u
)
SELECT 
    u.nm_usuario,
    u.ds_email,
    u.qt_total_pontos,
    u.st_cliente_porto
FROM t_pq_usuario u
WHERE u.qt_total_pontos > (SELECT media_geral_pontos FROM media_pontos)
ORDER BY u.qt_total_pontos DESC;

-- Relatório de usuários com pontos totais abaixo da média
WITH media_pontos AS (
    SELECT AVG(u.qt_total_pontos) AS media_geral_pontos
    FROM t_pq_usuario u
)
SELECT 
    u.nm_usuario,
    u.ds_email,
    u.qt_total_pontos,
    u.st_cliente_porto
FROM t_pq_usuario u
WHERE u.qt_total_pontos < (SELECT media_geral_pontos FROM media_pontos)
ORDER BY u.qt_total_pontos DESC;

-- Relatório de serviços dos usuários com junção de tabelas
SELECT 
    u.nm_usuario AS "Nome do usuário",
    u.ds_email AS "E-mail do usuário",
    s.vl_servicos AS "Valor dos serviços",
    s.ds_servicos AS "Descrição dos serviços"
FROM t_pq_usuario u
JOIN t_pq_orcamento o ON u.id_usuario = o.id_usuario
JOIN t_pq_orcamento_servicos os ON o.id_orcamento = os.id_orcamento
JOIN t_pq_servicos s ON os.id_servicos = s.id_servicos
ORDER BY u.nm_usuario;

-- Relatório de veículos e orçamentos dos usuários
SELECT
    u.nm_usuario AS "Nome do usuário",
    u.ds_email AS "E-mail do usuário",
    v.nm_marca AS "Marca do veículo",
    v.nm_modelo AS "Modelo do veículo",
    o.vl_total AS "Valor do orçamento",
    o.ds_status AS "Status do orçamento"
FROM t_pq_usuario u
JOIN t_pq_veiculo v ON u.id_usuario = v.id_usuario
JOIN t_pq_orcamento o ON u.id_usuario = o.id_usuario
ORDER BY u.nm_usuario;
