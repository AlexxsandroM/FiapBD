-- Inserindo 20 linhas na tabela t_pq_endereco
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado) VALUES ('Rua das Flores', '12345-001', 'São Paulo', 'SP');
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado) VALUES ('Avenida Brasil', '12345-002', 'Rio de Janeiro', 'RJ');
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado) VALUES ('Rua das Palmeiras', '12345-003', 'Belo Horizonte', 'MG');
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado) VALUES ('Rua A', '12345-004', 'Porto Alegre', 'RS');
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado) VALUES ('Rua B', '12345-005', 'Curitiba', 'PR');
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado) VALUES ('Rua C', '12345-006', 'Recife', 'PE');
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado) VALUES ('Rua D', '12345-007', 'Fortaleza', 'CE');
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado) VALUES ('Rua E', '12345-008', 'Manaus', 'AM');
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado) VALUES ('Rua F', '12345-009', 'Salvador', 'BA');
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado) VALUES ('Rua G', '12345-010', 'Florianópolis', 'SC');
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado) VALUES ('Rua H', '12345-011', 'Goiânia', 'GO');
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado) VALUES ('Rua I', '12345-012', 'Natal', 'RN');
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado) VALUES ('Rua J', '12345-013', 'João Pessoa', 'PB');
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado) VALUES ('Rua K', '12345-014', 'Maceió', 'AL');
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado) VALUES ('Rua L', '12345-015', 'Aracaju', 'SE');
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado) VALUES ('Rua M', '12345-016', 'Belém', 'PA');
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado) VALUES ('Rua N', '12345-017', 'Cuiabá', 'MT');
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado) VALUES ('Rua O', '12345-018', 'Campo Grande', 'MS');
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado) VALUES ('Rua P', '12345-019', 'Vitória', 'ES');
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado) VALUES ('Rua Q', '12345-020', 'Brasília', 'DF');

-- Inserindo 20 linhas na tabela t_pq_usuario
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario) VALUES (TO_DATE('1990-01-01', 'YYYY-MM-DD'), 100, 'S', '123.456.789-00', 'João Silva');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario) VALUES (TO_DATE('1985-02-02', 'YYYY-MM-DD'), 200, 'N', '123.456.789-01', 'Maria Oliveira');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario) VALUES (TO_DATE('1995-03-03', 'YYYY-MM-DD'), 300, 'S', '123.456.789-02', 'Carlos Souza');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario) VALUES (TO_DATE('1992-04-04', 'YYYY-MM-DD'), 400, 'N', '123.456.789-03', 'Ana Costa');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario) VALUES (TO_DATE('1988-05-05', 'YYYY-MM-DD'), 500, 'S', '123.456.789-04', 'Paulo Mendes');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario) VALUES (TO_DATE('1991-06-06', 'YYYY-MM-DD'), 600, 'N', '123.456.789-05', 'Luciana Rocha');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario) VALUES (TO_DATE('1993-07-07', 'YYYY-MM-DD'), 700, 'S', '123.456.789-06', 'Fernando Almeida');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario) VALUES (TO_DATE('1987-08-08', 'YYYY-MM-DD'), 800, 'N', '123.456.789-07', 'Beatriz Lima');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario) VALUES (TO_DATE('1994-09-09', 'YYYY-MM-DD'), 900, 'S', '123.456.789-08', 'Rafael Gomes');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario) VALUES (TO_DATE('1989-10-10', 'YYYY-MM-DD'), 1000, 'N', '123.456.789-09', 'Juliana Martins');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario) VALUES (TO_DATE('1996-11-11', 'YYYY-MM-DD'), 1100, 'S', '123.456.789-10', 'Gustavo Fernandes');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario) VALUES (TO_DATE('1986-12-12', 'YYYY-MM-DD'), 1200, 'N', '123.456.789-11', 'Camila Ribeiro');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario) VALUES (TO_DATE('1997-01-13', 'YYYY-MM-DD'), 1300, 'S', '123.456.789-12', 'Marcos Santos');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario) VALUES (TO_DATE('1991-02-14', 'YYYY-MM-DD'), 1400, 'N', '123.456.789-13', 'Patrícia Silva');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario) VALUES (TO_DATE('1988-03-15', 'YYYY-MM-DD'), 1500, 'S', '123.456.789-14', 'Rodrigo Alves');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario) VALUES (TO_DATE('1993-04-16', 'YYYY-MM-DD'), 1600, 'N', '123.456.789-15', 'Larissa Correia');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario) VALUES (TO_DATE('1992-05-17', 'YYYY-MM-DD'), 1700, 'S', '123.456.789-16', 'André Figueiredo');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario) VALUES (TO_DATE('1990-06-18', 'YYYY-MM-DD'), 1800, 'N', '123.456.789-17', 'Renata Carvalho');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario) VALUES (TO_DATE('1994-07-19', 'YYYY-MM-DD'), 1900, 'S', '123.456.789-18', 'Thiago Nascimento');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario) VALUES (TO_DATE('1985-08-20', 'YYYY-MM-DD'), 2000, 'N', '123.456.789-19', 'Vanessa Duarte');

-- Inserindo outras tabelas conforme necessário...


-- Inserindo 10 linhas na tabela t_pq_mensagem_bot
INSERT INTO t_pq_mensagem_bot (id_usuario, ds_mensagem, dt_hora_mensagem) VALUES (1, 'Bem-vindo ao nosso sistema!', TO_DATE('2024-10-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO t_pq_mensagem_bot (id_usuario, ds_mensagem, dt_hora_mensagem) VALUES (2, 'Como posso ajudar você hoje?', TO_DATE('2024-10-02 09:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO t_pq_mensagem_bot (id_usuario, ds_mensagem, dt_hora_mensagem) VALUES (3, 'Você tem pontos suficientes para uma recompensa!', TO_DATE('2024-10-03 10:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO t_pq_mensagem_bot (id_usuario, ds_mensagem, dt_hora_mensagem) VALUES (4, 'Sua assinatura foi renovada.', TO_DATE('2024-10-04 11:45:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO t_pq_mensagem_bot (id_usuario, ds_mensagem, dt_hora_mensagem) VALUES (5, 'Promoção exclusiva para você!', TO_DATE('2024-10-05 14:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO t_pq_mensagem_bot (id_usuario, ds_mensagem, dt_hora_mensagem) VALUES (6, 'Atualize seus dados de contato.', TO_DATE('2024-10-06 15:15:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO t_pq_mensagem_bot (id_usuario, ds_mensagem, dt_hora_mensagem) VALUES (7, 'Seu pedido foi processado.', TO_DATE('2024-10-07 16:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO t_pq_mensagem_bot (id_usuario, ds_mensagem, dt_hora_mensagem) VALUES (8, 'Novos produtos adicionados ao catálogo.', TO_DATE('2024-10-08 17:45:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO t_pq_mensagem_bot (id_usuario, ds_mensagem, dt_hora_mensagem) VALUES (9, 'Obrigado por ser um cliente fiel!', TO_DATE('2024-10-09 18:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO t_pq_mensagem_bot (id_usuario, ds_mensagem, dt_hora_mensagem) VALUES (10, 'Confirme seu endereço de entrega.', TO_DATE('2024-10-10 19:30:00', 'YYYY-MM-DD HH24:MI:SS'));

-- Inserindo 5 linhas na tabela t_pq_periodo_fidelidade
INSERT INTO t_pq_periodo_fidelidade (ds_recompensas, dt_vigencia, dt_fim_vigencia) VALUES ('Período 1', TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_DATE('2024-06-30', 'YYYY-MM-DD'));
INSERT INTO t_pq_periodo_fidelidade (ds_recompensas, dt_vigencia, dt_fim_vigencia) VALUES ('Período 2', TO_DATE('2024-07-01', 'YYYY-MM-DD'), TO_DATE('2024-12-31', 'YYYY-MM-DD'));
INSERT INTO t_pq_periodo_fidelidade (ds_recompensas, dt_vigencia, dt_fim_vigencia) VALUES ('Período 3', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-06-30', 'YYYY-MM-DD'));
INSERT INTO t_pq_periodo_fidelidade (ds_recompensas, dt_vigencia, dt_fim_vigencia) VALUES ('Período 4', TO_DATE('2023-07-01', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'));
INSERT INTO t_pq_periodo_fidelidade (ds_recompensas, dt_vigencia, dt_fim_vigencia) VALUES ('Período 5', TO_DATE('2022-01-01', 'YYYY-MM-DD'), TO_DATE('2022-06-30', 'YYYY-MM-DD'));

-- Inserindo 5 linhas na tabela t_pq_recompensa
INSERT INTO t_pq_recompensa (id_periodo_fidelidade, ds_recompensa, vl_estrelas, qr_code_recompensa) VALUES (1, 'Vale-compras de R$50', 100, 'QR1');
INSERT INTO t_pq_recompensa (id_periodo_fidelidade, ds_recompensa, vl_estrelas, qr_code_recompensa) VALUES (2, 'Desconto de 20%', 150, 'QR2');
INSERT INTO t_pq_recompensa (id_periodo_fidelidade, ds_recompensa, vl_estrelas, qr_code_recompensa) VALUES (3, 'Brinde exclusivo', 200, 'QR3');
INSERT INTO t_pq_recompensa (id_periodo_fidelidade, ds_recompensa, vl_estrelas, qr_code_recompensa) VALUES (4, 'Vale-jantar', 250, 'QR4');
INSERT INTO t_pq_recompensa (id_periodo_fidelidade, ds_recompensa, vl_estrelas, qr_code_recompensa) VALUES (5, 'Vale-cinema', 300, 'QR5');

-- Inserindo 10 linhas na tabela t_pq_usuario_endereco
INSERT INTO t_pq_usuario_endereco (id_usuario, id_endereco) VALUES (1, 1);
INSERT INTO t_pq_usuario_endereco (id_usuario, id_endereco) VALUES (2, 2);
INSERT INTO t_pq_usuario_endereco (id_usuario, id_endereco) VALUES (3, 3);
INSERT INTO t_pq_usuario_endereco (id_usuario, id_endereco) VALUES (4, 4);
INSERT INTO t_pq_usuario_endereco (id_usuario, id_endereco) VALUES (5, 5);
INSERT INTO t_pq_usuario_endereco (id_usuario, id_endereco) VALUES (6, 6);
INSERT INTO t_pq_usuario_endereco (id_usuario, id_endereco) VALUES (7, 7);
INSERT INTO t_pq_usuario_endereco (id_usuario, id_endereco) VALUES (8, 8);
INSERT INTO t_pq_usuario_endereco (id_usuario, id_endereco) VALUES (9, 9);
INSERT INTO t_pq_usuario_endereco (id_usuario, id_endereco) VALUES (10, 10);

-- Inserindo 5 linhas na tabela t_pq_usuario_recompensa
INSERT INTO t_pq_usuario_recompensa (id_usuario, id_recompensa, dt_recebimento) VALUES (1, 1, TO_DATE('2024-01-01', 'YYYY-MM-DD'));
INSERT INTO t_pq_usuario_recompensa (id_usuario, id_recompensa, dt_recebimento) VALUES (2, 2, TO_DATE('2024-02-01', 'YYYY-MM-DD'));
INSERT INTO t_pq_usuario_recompensa (id_usuario, id_recompensa, dt_recebimento) VALUES (3, 3, TO_DATE('2024-03-01', 'YYYY-MM-DD'));
INSERT INTO t_pq_usuario_recompensa (id_usuario, id_recompensa, dt_recebimento) VALUES (4, 4, TO_DATE('2024-04-01', 'YYYY-MM-DD'));
INSERT INTO t_pq_usuario_recompensa (id_usuario, id_recompensa, dt_recebimento) VALUES (5, 5, TO_DATE('2024-05-01', 'YYYY-MM-DD'));

-- Inserindo 5 linhas na tabela t_pq_veiculo
INSERT INTO t_pq_veiculo (nr_placa, nm_marca, nm_modelo, nr_ano_fabricacao, id_usuario) VALUES ('ABC1D23', 'Fiat', 'Uno', 2020, 1);
INSERT INTO t_pq_veiculo (nr_placa, nm_marca, nm_modelo, nr_ano_fabricacao, id_usuario) VALUES ('EFG2H45', 'Chevrolet', 'Onix', 2021, 2);
INSERT INTO t_pq_veiculo (nr_placa, nm_marca, nm_modelo, nr_ano_fabricacao, id_usuario) VALUES ('IJK3L67', 'Toyota', 'Corolla', 2019, 3);
INSERT INTO t_pq_veiculo (nr_placa, nm_marca, nm_modelo, nr_ano_fabricacao, id_usuario) VALUES ('LMN4P89', 'Honda', 'Civic', 2018, 4);
INSERT INTO t_pq_veiculo (nr_placa, nm_marca, nm_modelo, nr_ano_fabricacao, id_usuario) VALUES ('OPQ5R12', 'Hyundai', 'HB20', 2020, 5);
