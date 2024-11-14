-- Leonardo Faria Salazar - RM 557484
-- Jonathan Matheus Rasne Pereira Fonseca - RM 558437
-- Alexsandro Macedo de Jesus - RM 557068

-- Relat�rio de usu�rios com dados b�sicos, ordenado por pontos totais
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

-- Relat�rio de recompensas
SELECT 
    rr.id_resgate AS "ID do Resgate",
    rr.ds_recompensa AS "Descri��o da Recompensa",
    rr.qt_pontos_utilizados AS "Pontos Utilizados",
    rr.dt_resgate AS "Data do Resgate",
    rr.id_usuario AS "ID do Usu�rio"
FROM t_pq_resgate_recompensa rr
ORDER BY rr.qt_pontos_utilizados, rr.id_resgate;

-- Relat�rio com fun��es num�ricas simples para valores de or�amento
SELECT
    MAX(o.vl_total) AS "Maior valor de or�amento", 
    MIN(o.vl_total) AS "Menor valor de or�amento", 
    AVG(o.vl_total) AS "Valor m�dio de or�amento"
FROM t_pq_orcamento o;

-- Contagem de or�amentos por status
SELECT
    o.ds_status AS "Status or�amento",
    COUNT(*) AS "Quantidade de or�amentos"
FROM t_pq_orcamento o
GROUP BY o.ds_status
ORDER BY "Quantidade de or�amentos" DESC;

-- Relat�rio com dados agregados de usu�rios por status de cliente
SELECT 
    u.st_cliente_porto AS "Status do cliente",
    AVG(u.qt_total_pontos) AS "M�dia de pontos acumulados",
    MAX(u.qt_total_pontos) AS "M�ximo de pontos acumulados",
    MIN(u.qt_total_pontos) AS "M�nimo de pontos acumulados",
    COUNT(u.id_usuario) AS "Quantidade de usu�rios"
FROM t_pq_usuario u
GROUP BY u.st_cliente_porto
ORDER BY u.st_cliente_porto;

-- Relat�rio de ve�culos agrupado por marca, com m�dia de pontos dos usu�rios propriet�rios
SELECT 
    v.nm_marca AS "Marca do ve�culo",
    COUNT(v.id_veiculo) AS "Quantidade de ve�culos",
    AVG(u.qt_total_pontos) AS "M�dia de pontos dos usu�rios"
FROM t_pq_veiculo v
JOIN t_pq_usuario u ON v.id_usuario = u.id_usuario
GROUP BY v.nm_marca
ORDER BY "Quantidade de ve�culos" DESC;

-- Relat�rio de usu�rios com pontos totais acima da m�dia
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

-- Relat�rio de usu�rios com pontos totais abaixo da m�dia
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

-- Relat�rio de servi�os dos usu�rios com jun��o de tabelas
SELECT 
    u.nm_usuario AS "Nome do usu�rio",
    u.ds_email AS "E-mail do usu�rio",
    s.vl_servicos AS "Valor dos servi�os",
    s.ds_servicos AS "Descri��o dos servi�os"
FROM t_pq_usuario u
JOIN t_pq_orcamento o ON u.id_usuario = o.id_usuario
JOIN t_pq_orcamento_servicos os ON o.id_orcamento = os.id_orcamento
JOIN t_pq_servicos s ON os.id_servicos = s.id_servicos
ORDER BY u.nm_usuario;

-- Relat�rio de ve�culos e or�amentos dos usu�rios
SELECT
    u.nm_usuario AS "Nome do usu�rio",
    u.ds_email AS "E-mail do usu�rio",
    v.nm_marca AS "Marca do ve�culo",
    v.nm_modelo AS "Modelo do ve�culo",
    o.vl_total AS "Valor do or�amento",
    o.ds_status AS "Status do or�amento"
FROM t_pq_usuario u
JOIN t_pq_veiculo v ON u.id_usuario = v.id_usuario
JOIN t_pq_orcamento o ON u.id_usuario = o.id_usuario
ORDER BY u.nm_usuario;
