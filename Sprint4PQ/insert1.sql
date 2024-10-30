-- Recriando as tabelas com IDs gerados automaticamente:

CREATE TABLE t_pq_endereco (
    id_endereco   NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    ds_logradouro VARCHAR2(255) NOT NULL,
    nr_cep        VARCHAR2(9) NOT NULL,
    nm_cidade     VARCHAR2(255),
    uf_estado     VARCHAR2(2) NOT NULL
)
LOGGING;

CREATE TABLE t_pq_usuario (
    id_usuario       NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    dt_nascimento    DATE,
    qt_total_pontos  NUMBER(10) DEFAULT 0,
    st_cliente_porto CHAR(1),
    nr_cpf           VARCHAR2(14) NOT NULL,
    nm_usuario       VARCHAR2(150) NOT NULL
)
LOGGING;

ALTER TABLE t_pq_usuario ADD CONSTRAINT t_pq_usuario_nr_cpf_un UNIQUE ( nr_cpf );

ALTER TABLE t_pq_usuario
    ADD CHECK ( st_cliente_porto IN ( 'N', 'S' ) );

CREATE TABLE t_pq_mensagem_bot (
    id_mensagem_bot  NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_usuario       NUMBER(10),
    ds_mensagem      VARCHAR2(500),
    dt_hora_mensagem DATE DEFAULT sysdate
)
LOGGING;

CREATE TABLE t_pq_periodo_fidelidade (
    id_periodo_fidelidade NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    ds_recompensas        VARCHAR2(500),
    dt_vigencia           DATE NOT NULL,
    dt_fim_vigencia       DATE NOT NULL
)
LOGGING;

CREATE TABLE t_pq_recompensa (
    id_recompensa      NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_periodo_fidelidade NUMBER(10),
    ds_recompensa      VARCHAR2(500),
    vl_estrelas        NUMBER,
    qr_code_recompensa VARCHAR2(255)
)
LOGGING;

CREATE TABLE t_pq_usuario_endereco (
    id_usuario  NUMBER(10) NOT NULL,
    id_endereco NUMBER(10) NOT NULL,
    PRIMARY KEY ( id_usuario, id_endereco )
)
LOGGING;

CREATE TABLE t_pq_usuario_recompensa (
    id_usuario     NUMBER(10) NOT NULL,
    id_recompensa  NUMBER(10) NOT NULL,
    dt_recebimento DATE,
    PRIMARY KEY ( id_usuario, id_recompensa )
)
LOGGING;

CREATE TABLE t_pq_veiculo (
    id_veiculo        NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nr_placa          VARCHAR2(10) NOT NULL,
    nm_marca          VARCHAR2(100) NOT NULL,
    nm_modelo         VARCHAR2(100) NOT NULL,
    nr_ano_fabricacao NUMBER(4) NOT NULL,
    id_usuario        NUMBER(10) NOT NULL
)
LOGGING;

-- Adicionar relacionamentos após a criação de todas as tabelas

-- Relacionamento entre t_pq_mensagem_bot e t_pq_usuario
ALTER TABLE t_pq_mensagem_bot
    ADD CONSTRAINT fk_mensagem_usuario
    FOREIGN KEY (id_usuario)
    REFERENCES t_pq_usuario (id_usuario);

-- Relacionamento entre t_pq_recompensa e t_pq_periodo_fidelidade
ALTER TABLE t_pq_recompensa
    ADD CONSTRAINT fk_recompensa_periodo
    FOREIGN KEY (id_periodo_fidelidade)
    REFERENCES t_pq_periodo_fidelidade (id_periodo_fidelidade);

-- Relacionamento entre t_pq_usuario_endereco e t_pq_usuario/t_pq_endereco
ALTER TABLE t_pq_usuario_endereco
    ADD CONSTRAINT fk_usuario_endereco_usuario
    FOREIGN KEY (id_usuario)
    REFERENCES t_pq_usuario (id_usuario);

ALTER TABLE t_pq_usuario_endereco
    ADD CONSTRAINT fk_usuario_endereco_endereco
    FOREIGN KEY (id_endereco)
    REFERENCES t_pq_endereco (id_endereco);

-- Relacionamento entre t_pq_usuario_recompensa e t_pq_usuario/t_pq_recompensa
ALTER TABLE t_pq_usuario_recompensa
    ADD CONSTRAINT fk_usuario_recompensa_usuario
    FOREIGN KEY (id_usuario)
    REFERENCES t_pq_usuario (id_usuario);

ALTER TABLE t_pq_usuario_recompensa
    ADD CONSTRAINT fk_usuario_recompensa_recompensa
    FOREIGN KEY (id_recompensa)
    REFERENCES t_pq_recompensa (id_recompensa);

-- Relacionamento entre t_pq_veiculo e t_pq_usuario
ALTER TABLE t_pq_veiculo
    ADD CONSTRAINT fk_veiculo_usuario
    FOREIGN KEY (id_usuario)
    REFERENCES t_pq_usuario (id_usuario);

-- Inserindo dados nas tabelas