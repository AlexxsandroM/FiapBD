--Leonardo Faria Salazar - RM 557484
--Jonathan Matheus Rasne Pereira Fonseca - RM 558437
--Alexsandro Macedo de Jesus - RM 557068


DROP TABLE t_pq_veiculo CASCADE CONSTRAINTS;
DROP TABLE t_pq_usuario CASCADE CONSTRAINTS;
DROP TABLE t_pq_servicos CASCADE CONSTRAINTS;
DROP TABLE t_pq_recompensa CASCADE CONSTRAINTS;
DROP TABLE t_pq_periodo_fidelidade CASCADE CONSTRAINTS;
DROP TABLE t_pq_peca CASCADE CONSTRAINTS;
DROP TABLE t_pq_orcamento CASCADE CONSTRAINTS;
DROP TABLE t_pq_oficina_parceira CASCADE CONSTRAINTS;
DROP TABLE t_pq_mensagem_bot CASCADE CONSTRAINTS;
DROP TABLE t_pq_endereco CASCADE CONSTRAINTS;
DROP TABLE t_pq_orcamento_servicos CASCADE CONSTRAINTS;
DROP TABLE t_pq_resgate_recompensa CASCADE CONSTRAINTS;

-- Tabela de usuários
CREATE TABLE t_pq_usuario (
    id_usuario       NUMBER(10) GENERATED ALWAYS AS IDENTITY,
    dt_nascimento    DATE,
    qt_total_pontos  NUMBER(10) DEFAULT 0,
    st_cliente_porto CHAR(1),
    nr_cpf           VARCHAR2(14) NOT NULL,
    nm_usuario       VARCHAR2(150) NOT NULL,
    ds_email         VARCHAR2(100),
    CONSTRAINT t_pq_usuario_pk PRIMARY KEY (id_usuario),
    CONSTRAINT t_pq_usuario_nr_cpf_un UNIQUE (nr_cpf),
    CONSTRAINT t_pq_usuario_ds_email_un UNIQUE (ds_email),
    CONSTRAINT chk_qt_total_pontos CHECK (qt_total_pontos >= 0),
    CONSTRAINT chk_st_cliente_porto CHECK (st_cliente_porto IN ('N', 'S'))
) LOGGING;

-- Tabela de oficinas parceiras
CREATE TABLE t_pq_oficina_parceira (
    id_oficina_parceira NUMBER(10) GENERATED ALWAYS AS IDENTITY,
    url_banner          VARCHAR2(255),
    nm_oficina_parceira VARCHAR2(150) NOT NULL,
    nr_prioridade       NUMBER(2) NOT NULL,
    CONSTRAINT t_pq_oficina_parceira_pk PRIMARY KEY (id_oficina_parceira)
) LOGGING;

-- Tabela de endereços
CREATE TABLE t_pq_endereco (
    id_endereco         NUMBER(10) GENERATED ALWAYS AS IDENTITY,
    ds_logradouro       VARCHAR2(255) NOT NULL,
    nr_cep              VARCHAR2(9) NOT NULL,
    nm_cidade           VARCHAR2(255),
    uf_estado           VARCHAR2(2) NOT NULL,
    id_oficina_parceira NUMBER(10),
    id_usuario          NUMBER(10),
    CONSTRAINT t_pq_endereco_pk PRIMARY KEY (id_endereco),
    CONSTRAINT t_pq_endereco_oficina_fk FOREIGN KEY (id_oficina_parceira) REFERENCES t_pq_oficina_parceira (id_oficina_parceira),
    CONSTRAINT t_pq_endereco_usuario_fk FOREIGN KEY (id_usuario) REFERENCES t_pq_usuario (id_usuario)
) LOGGING;

-- Tabela de mensagens do bot
CREATE TABLE t_pq_mensagem_bot (
    id_mensagem_bot  NUMBER(10) GENERATED ALWAYS AS IDENTITY,
    id_usuario       NUMBER(10),
    ds_mensagem      VARCHAR2(500),
    dt_hora_mensagem DATE DEFAULT sysdate,
    CONSTRAINT t_pq_mensagem_bot_pk PRIMARY KEY (id_mensagem_bot),
    CONSTRAINT t_pq_mensagem_bot_usuario_fk FOREIGN KEY (id_usuario) REFERENCES t_pq_usuario (id_usuario)
) LOGGING;

-- Tabela de orçamentos
CREATE TABLE t_pq_orcamento (
    id_orcamento     NUMBER(10) GENERATED ALWAYS AS IDENTITY,
    id_usuario       NUMBER(10),
    dt_orcamento     DATE NOT NULL,
    vl_total         NUMBER(10, 2) NOT NULL,
    ds_status        VARCHAR2(50) NOT NULL,
    ds_condicoes_pag VARCHAR2(500),
    dt_aceite        DATE,
    CONSTRAINT t_pq_orcamento_pk PRIMARY KEY (id_orcamento),
    CONSTRAINT t_pq_orcamento_usuario_fk FOREIGN KEY (id_usuario) REFERENCES t_pq_usuario (id_usuario)
) LOGGING;

-- Tabela de peças
CREATE TABLE t_pq_peca (
    id_peca             NUMBER(10) GENERATED ALWAYS AS IDENTITY,
    nm_peca             VARCHAR2(150) NOT NULL,
    cd_peca             VARCHAR2(100),
    ds_peca             VARCHAR2(500),
    vl_unitario         NUMBER(10, 2) NOT NULL,
    id_oficina_parceira NUMBER(10),
    CONSTRAINT t_pq_peca_pk PRIMARY KEY (id_peca),
    CONSTRAINT t_pq_peca_oficina_fk FOREIGN KEY (id_oficina_parceira) REFERENCES t_pq_oficina_parceira (id_oficina_parceira)
) LOGGING;

-- Tabela de períodos de fidelidade
CREATE TABLE t_pq_periodo_fidelidade (
    id_periodo_fidelidade NUMBER(10) GENERATED ALWAYS AS IDENTITY,
    ds_recompensas        VARCHAR2(500),
    dt_vigencia           DATE NOT NULL,
    dt_fim_vigencia       DATE NOT NULL,
    CONSTRAINT t_pq_periodo_fidelidade_pk PRIMARY KEY (id_periodo_fidelidade)
) LOGGING;

-- Tabela de recompensas
CREATE TABLE t_pq_recompensa (
    id_recompensa         NUMBER(10) GENERATED ALWAYS AS IDENTITY,
    ds_recompensa         VARCHAR2(500),
    vl_estrelas           NUMBER,
    qr_code_recompensa    VARCHAR2(255),
    id_periodo_fidelidade NUMBER(10) NOT NULL,
    CONSTRAINT t_pq_recompensa_pk PRIMARY KEY (id_recompensa),
    CONSTRAINT t_pq_recompensa_periodo_fidelidade_fk FOREIGN KEY (id_periodo_fidelidade) REFERENCES t_pq_periodo_fidelidade (id_periodo_fidelidade)
) LOGGING;

-- Tabela de serviços
CREATE TABLE t_pq_servicos (
    id_servicos         NUMBER(10) GENERATED ALWAYS AS IDENTITY,
    ds_servicos         VARCHAR2(255),
    vl_servicos         NUMBER(10, 2),
    id_oficina_parceira NUMBER(10),
    CONSTRAINT t_pq_servicos_pk PRIMARY KEY (id_servicos),
    CONSTRAINT t_pq_servicos_oficina_fk FOREIGN KEY (id_oficina_parceira) REFERENCES t_pq_oficina_parceira (id_oficina_parceira)
) LOGGING;

-- Tabela de veículos
CREATE TABLE t_pq_veiculo (
    id_veiculo        NUMBER(10) GENERATED ALWAYS AS IDENTITY,
    nr_placa          VARCHAR2(10) NOT NULL,
    nm_marca          VARCHAR2(100) NOT NULL,
    nm_modelo         VARCHAR2(100) NOT NULL,
    nr_ano_fabricacao NUMBER(4) NOT NULL,
    id_usuario        NUMBER(10),
    CONSTRAINT t_pq_veiculo_pk PRIMARY KEY (id_veiculo),
    CONSTRAINT t_pq_veiculo_usuario_fk FOREIGN KEY (id_usuario) REFERENCES t_pq_usuario (id_usuario)
) LOGGING;

-- Tabela de orçamentos e serviços
CREATE TABLE t_pq_orcamento_servicos (
    id_orcamento     NUMBER(10),
    id_servicos      NUMBER(10),
    PRIMARY KEY (id_orcamento, id_servicos),
    CONSTRAINT t_pq_orcamento_fk FOREIGN KEY (id_orcamento) REFERENCES t_pq_orcamento (id_orcamento),
    CONSTRAINT t_pq_servicos_fk FOREIGN KEY (id_servicos) REFERENCES t_pq_servicos (id_servicos)
) LOGGING;

-- Tabela de resgates de recompensas
CREATE TABLE t_pq_resgate_recompensa (
    id_resgate           NUMBER(10) GENERATED ALWAYS AS IDENTITY,
    id_usuario           NUMBER(10) NOT NULL,
    id_recompensa        NUMBER(10) NOT NULL,
    dt_resgate           DATE DEFAULT sysdate,
    qt_pontos_utilizados NUMBER(10) NOT NULL,
    ds_recompensa         VARCHAR2(500),
    PRIMARY KEY (id_resgate),
    CONSTRAINT t_pq_resgate_usuario_fk FOREIGN KEY (id_usuario) REFERENCES t_pq_usuario (id_usuario),
    CONSTRAINT t_pq_resgate_recompensa_fk FOREIGN KEY (id_recompensa) REFERENCES t_pq_recompensa (id_recompensa),
    CONSTRAINT chk_qt_pontos_utilizados CHECK (qt_pontos_utilizados >= 0)
) LOGGING;


