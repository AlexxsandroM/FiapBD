-- Drop das tabelas, incluindo constraints relacionadas

DROP TABLE t_pq_recompensa CASCADE CONSTRAINTS;

DROP TABLE t_pq_periodo_fidelidade CASCADE CONSTRAINTS;

DROP TABLE t_pq_mensagem_bot CASCADE CONSTRAINTS;

DROP TABLE t_pq_oficina_parceira CASCADE CONSTRAINTS;

DROP TABLE t_pq_usuario CASCADE CONSTRAINTS;

DROP TABLE t_pq_endereco CASCADE CONSTRAINTS;

DROP TABLE t_pq_peca CASCADE CONSTRAINTS;

DROP TABLE t_pq_veiculo CASCADE CONSTRAINTS;

DROP TABLE t_pq_orcamento CASCADE CONSTRAINTS;
DROP TABLE t_pq_oficina_endereco;
DROP TABLE t_pq_oficina_peca;
DROP TABLE t_pq_orcamento_oficina;
DROP TABLE t_pq_orcamento_usuario;
DROP TABLE t_pq_usuario_endereco;
DROP TABLE t_pq_usuario_recompensa;
DROP TABLE t_pq_usuario_veiculo;

DROP TABLE t_pq_servicos CASCADE CONSTRAINTS;
DROP TABLE t_pq_orcamento_servicos CASCADE CONSTRAINTS;
DROP TABLE t_pq_periodo_fidelidade_recompensa;
-- Criação de sequences para os IDs

