--Leonardo Faria Salazar - RM 557484
--Jonathan Matheus Rasne Pereira Fonseca - RM 558437
--Alexsandro Macedo de Jesus - RM 557068

-- Inserindo dados em t_pq_usuario
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario, ds_email)
VALUES (TO_DATE('1990-01-01', 'YYYY-MM-DD'), 10, 'S', '123.456.789-01', 'João Silva', 'joao.silva@example.com');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario, ds_email)
VALUES (TO_DATE('1985-05-10', 'YYYY-MM-DD'), 20, 'N', '987.654.321-00', 'Maria Souza', 'maria.souza@example.com');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario, ds_email)
VALUES (TO_DATE('1992-07-15', 'YYYY-MM-DD'), 15, 'S', '456.789.123-02', 'Carlos Oliveira', 'carlos.oliveira@example.com');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario, ds_email)
VALUES (TO_DATE('1980-03-20', 'YYYY-MM-DD'), 25, 'N', '789.123.456-03', 'Ana Lima', 'ana.lima@example.com');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario, ds_email)
VALUES (TO_DATE('1995-12-25', 'YYYY-MM-DD'), 30, 'S', '321.654.987-04', 'Pedro Santos', 'pedro.santos@example.com');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario, ds_email)
VALUES (TO_DATE('1988-11-11', 'YYYY-MM-DD'), 40, 'N', '654.321.987-05', 'Fernanda Costa', 'fernanda.costa@example.com');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario, ds_email)
VALUES (TO_DATE('1993-09-05', 'YYYY-MM-DD'), 50, 'S', '852.963.741-06', 'Ricardo Almeida', 'ricardo.almeida@example.com');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario, ds_email)
VALUES (TO_DATE('1991-06-14', 'YYYY-MM-DD'), 60, 'N', '159.753.486-07', 'Patrícia Gomes', 'patricia.gomes@example.com');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario, ds_email)
VALUES (TO_DATE('1983-02-28', 'YYYY-MM-DD'), 70, 'S', '753.951.852-08', 'Rodrigo Azevedo', 'rodrigo.azevedo@example.com');
INSERT INTO t_pq_usuario (dt_nascimento, qt_total_pontos, st_cliente_porto, nr_cpf, nm_usuario, ds_email)
VALUES (TO_DATE('1996-08-08', 'YYYY-MM-DD'), 80, 'N', '159.357.456-09', 'Aline Ferreira', 'aline.ferreira@example.com');

-- Inserindo dados em t_pq_oficina_parceira
INSERT INTO t_pq_oficina_parceira (url_banner, nm_oficina_parceira, nr_prioridade) VALUES ('https://www.planetcarsz.com/img/fabricantes/logos/2021/caoa-chery-logo-20211115113402-1024x532.jpg', 'Caoa Chery Castelo', 1);
INSERT INTO t_pq_oficina_parceira (url_banner, nm_oficina_parceira, nr_prioridade) VALUES ('https://media.glassdoor.com/sql/3294/michelin-squarelogo-1576012926101.png', 'Michelin Serviços Automotivos', 2);
INSERT INTO t_pq_oficina_parceira (url_banner, nm_oficina_parceira, nr_prioridade) VALUES ('https://blog.jocar.com.br/wp-content/uploads/2018/01/logo-jocar-blog2-e1515422077673.png', 'Jocar Autopeças e Acessórios', 3);
INSERT INTO t_pq_oficina_parceira (url_banner, nm_oficina_parceira, nr_prioridade) VALUES ('https://cargox.com.br/wp-content/uploads/2019/03/logo-dpaschoal-300x97.png', 'DPaschoal', 4);
INSERT INTO t_pq_oficina_parceira (url_banner, nm_oficina_parceira, nr_prioridade) VALUES ('https://novovarejoautomotivo.com.br/wp-content/uploads/2024/05/rede-pitstop-logo-1280x720-1-800x500.jpg', 'Pitstop', 5);
INSERT INTO t_pq_oficina_parceira (url_banner, nm_oficina_parceira, nr_prioridade) VALUES ('https://www.krsrail.com/wp-content/uploads/2020/07/katahdin-railcar-services-logo.png', 'Raicar', 6);
INSERT INTO t_pq_oficina_parceira (url_banner, nm_oficina_parceira, nr_prioridade) VALUES ('https://cobreq.com.br/wp-content/webp-express/webp-images/uploads/2023/01/Logo-Cobreq-2023-1.png.webp', 'Cobreq Auto Center', 7);
INSERT INTO t_pq_oficina_parceira (url_banner, nm_oficina_parceira, nr_prioridade) VALUES ('https://mir-s3-cdn-cf.behance.net/project_modules/1400/62f047672749.5b2eea4e83c60.png', 'Porto Seguro Auto', 8);
INSERT INTO t_pq_oficina_parceira (url_banner, nm_oficina_parceira, nr_prioridade) VALUES ('https://conteudo.autoglass.com.br/hubfs/logo-autoglass-RGB_LOGO-ORIGINAL-para-fundos-claros-3.png', 'Autoglass', 9);
INSERT INTO t_pq_oficina_parceira (url_banner, nm_oficina_parceira, nr_prioridade) VALUES ('https://d1csarkz8obe9u.cloudfront.net/posterpreviews/logotipo-de-auto-center-design-template-0dd00fc5825ad6ba522ae131146f73d2_screen.jpg?ts=1701969806', 'Mobiarte Auto Center', 10);

-- Inserindo dados em t_pq_periodo_fidelidade
INSERT INTO t_pq_periodo_fidelidade (ds_recompensas, dt_vigencia, dt_fim_vigencia) VALUES ('Desconto em serviços', SYSDATE, SYSDATE + 30);
INSERT INTO t_pq_periodo_fidelidade (ds_recompensas, dt_vigencia, dt_fim_vigencia) VALUES ('Bônus em peças', SYSDATE, SYSDATE + 60);
INSERT INTO t_pq_periodo_fidelidade (ds_recompensas, dt_vigencia, dt_fim_vigencia) VALUES ('Serviço gratuito', SYSDATE, SYSDATE + 90);
INSERT INTO t_pq_periodo_fidelidade (ds_recompensas, dt_vigencia, dt_fim_vigencia) VALUES ('Voucher de desconto', SYSDATE, SYSDATE + 45);
INSERT INTO t_pq_periodo_fidelidade (ds_recompensas, dt_vigencia, dt_fim_vigencia) VALUES ('Troca de óleo gratuita', SYSDATE, SYSDATE + 30);
INSERT INTO t_pq_periodo_fidelidade (ds_recompensas, dt_vigencia, dt_fim_vigencia) VALUES ('Revisão gratuita', SYSDATE, SYSDATE + 60);
INSERT INTO t_pq_periodo_fidelidade (ds_recompensas, dt_vigencia, dt_fim_vigencia) VALUES ('Desconto em próxima compra', SYSDATE, SYSDATE + 90);
INSERT INTO t_pq_periodo_fidelidade (ds_recompensas, dt_vigencia, dt_fim_vigencia) VALUES ('Kit de limpeza gratuito', SYSDATE, SYSDATE + 30);
INSERT INTO t_pq_periodo_fidelidade (ds_recompensas, dt_vigencia, dt_fim_vigencia) VALUES ('Pontos em dobro', SYSDATE, SYSDATE + 45);
INSERT INTO t_pq_periodo_fidelidade (ds_recompensas, dt_vigencia, dt_fim_vigencia) VALUES ('Amortecedor traseiro gratuito', SYSDATE, SYSDATE + 60);

-- Inserindo dados em t_pq_veiculo
INSERT INTO t_pq_veiculo (nr_placa, nm_marca, nm_modelo, nr_ano_fabricacao, id_usuario) VALUES ('ABC-1234', 'Jeep', 'Compass', 2023, 1);
INSERT INTO t_pq_veiculo (nr_placa, nm_marca, nm_modelo, nr_ano_fabricacao, id_usuario) VALUES ('DEF-5678', 'Honda', 'Civic', 2018, 2);
INSERT INTO t_pq_veiculo (nr_placa, nm_marca, nm_modelo, nr_ano_fabricacao, id_usuario) VALUES ('GHI-9012', 'Ford', 'Fiesta', 2012, 3);
INSERT INTO t_pq_veiculo (nr_placa, nm_marca, nm_modelo, nr_ano_fabricacao, id_usuario) VALUES ('JKL-3456', 'Chevrolet', 'Onix', 2020, 4);
INSERT INTO t_pq_veiculo (nr_placa, nm_marca, nm_modelo, nr_ano_fabricacao, id_usuario) VALUES ('MNO-7890', 'Fiat', 'Palio', 2010, 5);
INSERT INTO t_pq_veiculo (nr_placa, nm_marca, nm_modelo, nr_ano_fabricacao, id_usuario) VALUES ('PQR-1234', 'Volkswagen', 'Golf', 2017, 6);
INSERT INTO t_pq_veiculo (nr_placa, nm_marca, nm_modelo, nr_ano_fabricacao, id_usuario) VALUES ('STU-5678', 'Hyundai', 'HB20', 2019, 7);
INSERT INTO t_pq_veiculo (nr_placa, nm_marca, nm_modelo, nr_ano_fabricacao, id_usuario) VALUES ('VWX-9012', 'Renault', 'Duster', 2016, 8);
INSERT INTO t_pq_veiculo (nr_placa, nm_marca, nm_modelo, nr_ano_fabricacao, id_usuario) VALUES ('YZA-3456', 'Nissan', 'March', 2014, 9);
INSERT INTO t_pq_veiculo (nr_placa, nm_marca, nm_modelo, nr_ano_fabricacao, id_usuario) VALUES ('BCD-7890', 'Jeep', 'Renegade', 2021, 10);

-- Inserindo dados em t_pq_endereco
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado, id_oficina_parceira, id_usuario) VALUES ('Rua das Flores', '12345-678', 'São Paulo', 'SP', 1, 1);
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado, id_oficina_parceira, id_usuario) VALUES ('Avenida Central', '87654-321', 'Rio de Janeiro', 'RJ', 2, 2);
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado, id_oficina_parceira, id_usuario) VALUES ('Rua do Sol', '13579-246', 'Belo Horizonte', 'MG', 3, 3);
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado, id_oficina_parceira, id_usuario) VALUES ('Avenida Paulista', '98765-432', 'São Paulo', 'SP', 4, 4);
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado, id_oficina_parceira, id_usuario) VALUES ('Rua das Palmeiras', '24680-135', 'Curitiba', 'PR', 5, 5);
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado, id_oficina_parceira, id_usuario) VALUES ('Rua dos Sonhos', '11223-445', 'Fortaleza', 'CE', 6, 6);
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado, id_oficina_parceira, id_usuario) VALUES ('Avenida Atlântica', '55443-221', 'Florianópolis', 'SC', 7, 7);
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado, id_oficina_parceira, id_usuario) VALUES ('Rua da Paz', '66778-990', 'Salvador', 'BA', 8, 8);
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado, id_oficina_parceira, id_usuario) VALUES ('Avenida das Árvores', '99887-776', 'Porto Alegre', 'RS', 9, 9);
INSERT INTO t_pq_endereco (ds_logradouro, nr_cep, nm_cidade, uf_estado, id_oficina_parceira, id_usuario) VALUES ('Rua Esperança', '33445-667', 'Manaus', 'AM', 10, 10);

-- Inserindo dados em t_pq_orcamento
INSERT INTO t_pq_orcamento (ID_USUARIO, dt_orcamento, vl_total, ds_status, ds_condicoes_pag, dt_aceite) VALUES (2, SYSDATE, 750.00, 'Pendente', 'Pagamento à vista', NULL);
INSERT INTO t_pq_orcamento (ID_USUARIO, dt_orcamento, vl_total, ds_status, ds_condicoes_pag, dt_aceite) VALUES (3, SYSDATE, 1000.00, 'Rejeitado', 'Parcelado em 2x', NULL);
INSERT INTO t_pq_orcamento (ID_USUARIO, dt_orcamento, vl_total, ds_status, ds_condicoes_pag, dt_aceite) VALUES (5, SYSDATE, 1200.00, 'Aceito', 'Parcelado em 2x', SYSDATE);
INSERT INTO t_pq_orcamento (ID_USUARIO, dt_orcamento, vl_total, ds_status, ds_condicoes_pag, dt_aceite) VALUES (6, SYSDATE, 1500.00, 'Pendente', 'Pagamento à vista', NULL);
INSERT INTO t_pq_orcamento (ID_USUARIO, dt_orcamento, vl_total, ds_status, ds_condicoes_pag, dt_aceite) VALUES (7, SYSDATE, 1800.00, 'Rejeitado', 'Pagamento à vista', NULL);
INSERT INTO t_pq_orcamento (ID_USUARIO, dt_orcamento, vl_total, ds_status, ds_condicoes_pag, dt_aceite) VALUES (9, SYSDATE, 2200.00, 'Pendente', 'Parcelado em 4x', NULL);
INSERT INTO t_pq_orcamento (ID_USUARIO, dt_orcamento, vl_total, ds_status, ds_condicoes_pag, dt_aceite) VALUES (1, SYSDATE, 2500.00, 'Aceito', 'Parcelado em 3x', SYSDATE);
INSERT INTO t_pq_orcamento (ID_USUARIO, dt_orcamento, vl_total, ds_status, ds_condicoes_pag, dt_aceite) VALUES (4, SYSDATE, 3000.00, 'Pendente', 'Pagamento à vista', NULL);
INSERT INTO t_pq_orcamento (ID_USUARIO, dt_orcamento, vl_total, ds_status, ds_condicoes_pag, dt_aceite) VALUES (8, SYSDATE, 3600.00, 'Aceito', 'Parcelado em 6x', SYSDATE);
INSERT INTO t_pq_orcamento (ID_USUARIO, dt_orcamento, vl_total, ds_status, ds_condicoes_pag, dt_aceite) VALUES (10, SYSDATE, 5000.00, 'Aceito', 'Parcelado em 5x', SYSDATE);

-- Inserindo dados em t_pq_servicos
INSERT INTO t_pq_servicos (ds_servicos, vl_servicos, id_oficina_parceira) VALUES ('Troca de óleo', 150.00, 1);
INSERT INTO t_pq_servicos (ds_servicos, vl_servicos, id_oficina_parceira) VALUES ('Alinhamento e balanceamento', 200.00, 2);
INSERT INTO t_pq_servicos (ds_servicos, vl_servicos, id_oficina_parceira) VALUES ('Revisão completa', 600.00, 3);
INSERT INTO t_pq_servicos (ds_servicos, vl_servicos, id_oficina_parceira) VALUES ('Troca de filtros', 100.00, 4);
INSERT INTO t_pq_servicos (ds_servicos, vl_servicos, id_oficina_parceira) VALUES ('Troca de pastilhas de freio', 250.00, 5);
INSERT INTO t_pq_servicos (ds_servicos, vl_servicos, id_oficina_parceira) VALUES ('Limpeza de ar condicionado', 120.00, 6);
INSERT INTO t_pq_servicos (ds_servicos, vl_servicos, id_oficina_parceira) VALUES ('Troca de bateria', 350.00, 7);
INSERT INTO t_pq_servicos (ds_servicos, vl_servicos, id_oficina_parceira) VALUES ('Serviço de pintura', 800.00, 8);
INSERT INTO t_pq_servicos (ds_servicos, vl_servicos, id_oficina_parceira) VALUES ('Reparo de radiador', 500.00, 9);
INSERT INTO t_pq_servicos (ds_servicos, vl_servicos, id_oficina_parceira) VALUES ('Instalação de som', 300.00, 10);

-- Inserindo dados em t_pq_orcamento_servicos
INSERT INTO t_pq_orcamento_servicos (id_orcamento, id_servicos) VALUES (1, 1); -- Troca de óleo
INSERT INTO t_pq_orcamento_servicos (id_orcamento, id_servicos) VALUES (1, 4); -- Troca de filtros
INSERT INTO t_pq_orcamento_servicos (id_orcamento, id_servicos) VALUES (2, 2); -- Alinhamento e balanceamento
INSERT INTO t_pq_orcamento_servicos (id_orcamento, id_servicos) VALUES (2, 5); -- Troca de pastilhas de freio
INSERT INTO t_pq_orcamento_servicos (id_orcamento, id_servicos) VALUES (3, 3); -- Revisão completa
INSERT INTO t_pq_orcamento_servicos (id_orcamento, id_servicos) VALUES (3, 5); -- Troca de pastilhas de freio
INSERT INTO t_pq_orcamento_servicos (id_orcamento, id_servicos) VALUES (3, 7); -- Troca de bateria
INSERT INTO t_pq_orcamento_servicos (id_orcamento, id_servicos) VALUES (4, 4); -- Troca de filtros
INSERT INTO t_pq_orcamento_servicos (id_orcamento, id_servicos) VALUES (4, 2); -- Alinhamento e balanceamento
INSERT INTO t_pq_orcamento_servicos (id_orcamento, id_servicos) VALUES (5, 5); -- Troca de pastilhas de freio
INSERT INTO t_pq_orcamento_servicos (id_orcamento, id_servicos) VALUES (5, 6); -- Limpeza de ar condicionado
INSERT INTO t_pq_orcamento_servicos (id_orcamento, id_servicos) VALUES (6, 1); -- Troca de óleo
INSERT INTO t_pq_orcamento_servicos (id_orcamento, id_servicos) VALUES (6, 8); -- Serviço de pintura
INSERT INTO t_pq_orcamento_servicos (id_orcamento, id_servicos) VALUES (7, 7); -- Troca de bateria
INSERT INTO t_pq_orcamento_servicos (id_orcamento, id_servicos) VALUES (7, 2); -- Alinhamento e balanceamento
INSERT INTO t_pq_orcamento_servicos (id_orcamento, id_servicos) VALUES (8, 8); -- Serviço de pintura
INSERT INTO t_pq_orcamento_servicos (id_orcamento, id_servicos) VALUES (9, 9); -- Reparo de radiador
INSERT INTO t_pq_orcamento_servicos (id_orcamento, id_servicos) VALUES (9, 4); -- Troca de filtros
INSERT INTO t_pq_orcamento_servicos (id_orcamento, id_servicos) VALUES (10, 10); -- Instalação de som
INSERT INTO t_pq_orcamento_servicos (id_orcamento, id_servicos) VALUES (10, 6); -- Limpeza de ar condicionado

-- Inserindo dados em t_pq_peca
INSERT INTO t_pq_peca (nm_peca, cd_peca, ds_peca, vl_unitario, id_oficina_parceira) VALUES ('Filtro de Óleo', 'FO123', 'Filtro para óleo de motor', 50.00, 1);
INSERT INTO t_pq_peca (nm_peca, cd_peca, ds_peca, vl_unitario, id_oficina_parceira) VALUES ('Pneu Aro 16', 'PN456', 'Pneu para carros de passeio', 400.00, 2);
INSERT INTO t_pq_peca (nm_peca, cd_peca, ds_peca, vl_unitario, id_oficina_parceira) VALUES ('Bateria 60Ah', 'BT789', 'Bateria automotiva', 350.00, 3);
INSERT INTO t_pq_peca (nm_peca, cd_peca, ds_peca, vl_unitario, id_oficina_parceira) VALUES ('Velas de Ignição', 'VI101', 'Velas para motor', 80.00, 4);
INSERT INTO t_pq_peca (nm_peca, cd_peca, ds_peca, vl_unitario, id_oficina_parceira) VALUES ('Pastilha de Freio', 'PF202', 'Pastilha para sistema de freio', 150.00, 5);
INSERT INTO t_pq_peca (nm_peca, cd_peca, ds_peca, vl_unitario, id_oficina_parceira) VALUES ('Correia Dentada', 'CD303', 'Correia para motor', 200.00, 6);
INSERT INTO t_pq_peca (nm_peca, cd_peca, ds_peca, vl_unitario, id_oficina_parceira) VALUES ('Filtro de Ar', 'FA404', 'Filtro para ar condicionado', 100.00, 7);
INSERT INTO t_pq_peca (nm_peca, cd_peca, ds_peca, vl_unitario, id_oficina_parceira) VALUES ('Amortecedor', 'AM505', 'Amortecedor traseiro', 250.00, 8);
INSERT INTO t_pq_peca (nm_peca, cd_peca, ds_peca, vl_unitario, id_oficina_parceira) VALUES ('Radiador', 'RD606', 'Radiador de arrefecimento', 500.00, 9);
INSERT INTO t_pq_peca (nm_peca, cd_peca, ds_peca, vl_unitario, id_oficina_parceira) VALUES ('Escapamento', 'ES707', 'Escapamento esportivo', 600.00, 10);

-- Inserindo dados em t_pq_mensagem_bot
INSERT INTO t_pq_mensagem_bot (id_usuario, ds_mensagem, dt_hora_mensagem) VALUES (1, 'Bem-vindo ao nosso sistema!', SYSDATE);
INSERT INTO t_pq_mensagem_bot (id_usuario, ds_mensagem, dt_hora_mensagem) VALUES (2, 'Sua solicitação foi recebida.', SYSDATE);
INSERT INTO t_pq_mensagem_bot (id_usuario, ds_mensagem, dt_hora_mensagem) VALUES (3, 'Estamos analisando sua proposta.', SYSDATE);
INSERT INTO t_pq_mensagem_bot (id_usuario, ds_mensagem, dt_hora_mensagem) VALUES (4, 'Mensagem automática de confirmação.', SYSDATE);
INSERT INTO t_pq_mensagem_bot (id_usuario, ds_mensagem, dt_hora_mensagem) VALUES (5, 'Sua conta foi atualizada.', SYSDATE);
INSERT INTO t_pq_mensagem_bot (id_usuario, ds_mensagem, dt_hora_mensagem) VALUES (6, 'Aguardando mais informações.', SYSDATE);
INSERT INTO t_pq_mensagem_bot (id_usuario, ds_mensagem, dt_hora_mensagem) VALUES (7, 'Seu pedido está em andamento.', SYSDATE);
INSERT INTO t_pq_mensagem_bot (id_usuario, ds_mensagem, dt_hora_mensagem) VALUES (8, 'Obrigado por nos contatar!', SYSDATE);
INSERT INTO t_pq_mensagem_bot (id_usuario, ds_mensagem, dt_hora_mensagem) VALUES (9, 'Houve uma alteração no seu cadastro.', SYSDATE);
INSERT INTO t_pq_mensagem_bot (id_usuario, ds_mensagem, dt_hora_mensagem) VALUES (10, 'Sua mensagem foi recebida.', SYSDATE);

-- Inserindo dados na tabela t_pq_recompensa
INSERT INTO t_pq_recompensa (ds_recompensa, vl_estrelas, qr_code_recompensa, id_periodo_fidelidade) VALUES ('Desconto de 10%', 1, 'QRCODE123', 1);
INSERT INTO t_pq_recompensa (ds_recompensa, vl_estrelas, qr_code_recompensa, id_periodo_fidelidade) VALUES ('Troca de óleo gratuita', 2, 'QRCODE456', 2);
INSERT INTO t_pq_recompensa (ds_recompensa, vl_estrelas, qr_code_recompensa, id_periodo_fidelidade) VALUES ('Desconto em próxima compra', 3, 'QRCODE789', 3);
INSERT INTO t_pq_recompensa (ds_recompensa, vl_estrelas, qr_code_recompensa, id_periodo_fidelidade) VALUES ('Voucher de serviço gratuito', 4, 'QRCODE101', 4);
INSERT INTO t_pq_recompensa (ds_recompensa, vl_estrelas, qr_code_recompensa, id_periodo_fidelidade) VALUES ('Desconto de 20%', 5, 'QRCODE202', 5);
INSERT INTO t_pq_recompensa (ds_recompensa, vl_estrelas, qr_code_recompensa, id_periodo_fidelidade) VALUES ('Revisão completa gratuita', 5, 'QRCODE303', 6);
INSERT INTO t_pq_recompensa (ds_recompensa, vl_estrelas, qr_code_recompensa, id_periodo_fidelidade) VALUES ('Voucher de R$50', 2, 'QRCODE404', 7);
INSERT INTO t_pq_recompensa (ds_recompensa, vl_estrelas, qr_code_recompensa, id_periodo_fidelidade) VALUES ('Pontos em dobro', 3, 'QRCODE505', 8);
INSERT INTO t_pq_recompensa (ds_recompensa, vl_estrelas, qr_code_recompensa, id_periodo_fidelidade) VALUES ('Amortecedor traseiro gratuito', 4, 'QRCODE606', 9);
INSERT INTO t_pq_recompensa (ds_recompensa, vl_estrelas, qr_code_recompensa, id_periodo_fidelidade) VALUES ('Serviço de alinhamento gratuito', 5, 'QRCODE707', 10);

-- Inserindo dados em t_pq_resgate_recompensa
INSERT INTO t_pq_resgate_recompensa (id_usuario, id_recompensa, dt_resgate, qt_pontos_utilizados, ds_recompensa) VALUES (1, 1, TO_DATE('2024-11-01', 'YYYY-MM-DD'), 1, 'Desconto de 10%');
INSERT INTO t_pq_resgate_recompensa (id_usuario, id_recompensa, dt_resgate, qt_pontos_utilizados, ds_recompensa) VALUES (2, 2, TO_DATE('2024-11-02', 'YYYY-MM-DD'), 2, 'Troca de óleo gratuita');
INSERT INTO t_pq_resgate_recompensa (id_usuario, id_recompensa, dt_resgate, qt_pontos_utilizados, ds_recompensa) VALUES (3, 3, TO_DATE('2024-11-03', 'YYYY-MM-DD'), 3, 'Desconto em próxima compra');
INSERT INTO t_pq_resgate_recompensa (id_usuario, id_recompensa, dt_resgate, qt_pontos_utilizados, ds_recompensa) VALUES (4, 4, TO_DATE('2024-11-04', 'YYYY-MM-DD'), 4, 'Voucher de serviço gratuito');
INSERT INTO t_pq_resgate_recompensa (id_usuario, id_recompensa, dt_resgate, qt_pontos_utilizados, ds_recompensa) VALUES (5, 5, TO_DATE('2024-11-05', 'YYYY-MM-DD'), 5, 'Desconto de 20%');
INSERT INTO t_pq_resgate_recompensa (id_usuario, id_recompensa, dt_resgate, qt_pontos_utilizados, ds_recompensa) VALUES (6, 6, TO_DATE('2024-11-06', 'YYYY-MM-DD'), 1, 'Revisão completa gratuita');
INSERT INTO t_pq_resgate_recompensa (id_usuario, id_recompensa, dt_resgate, qt_pontos_utilizados, ds_recompensa) VALUES (7, 7, TO_DATE('2024-11-07', 'YYYY-MM-DD'), 2, 'Voucher de R$50');
INSERT INTO t_pq_resgate_recompensa (id_usuario, id_recompensa, dt_resgate, qt_pontos_utilizados, ds_recompensa) VALUES (8, 8, TO_DATE('2024-11-08', 'YYYY-MM-DD'), 3, 'Pontos em dobro');
INSERT INTO t_pq_resgate_recompensa (id_usuario, id_recompensa, dt_resgate, qt_pontos_utilizados, ds_recompensa) VALUES (9, 9, TO_DATE('2024-11-09', 'YYYY-MM-DD'), 4, 'Amortecedor traseiro gratuito');
INSERT INTO t_pq_resgate_recompensa (id_usuario, id_recompensa, dt_resgate, qt_pontos_utilizados, ds_recompensa) VALUES (10, 10, TO_DATE('2024-11-10', 'YYYY-MM-DD'), 5, 'Serviço de alinhamento gratuito');
INSERT INTO t_pq_resgate_recompensa (id_usuario, id_recompensa, dt_resgate, qt_pontos_utilizados, ds_recompensa) VALUES (2, 1, TO_DATE('2024-11-11', 'YYYY-MM-DD'), 1, 'Desconto de 10%');
INSERT INTO t_pq_resgate_recompensa (id_usuario, id_recompensa, dt_resgate, qt_pontos_utilizados, ds_recompensa) VALUES (3, 2, TO_DATE('2024-11-12', 'YYYY-MM-DD'), 2, 'Troca de óleo gratuita');
INSERT INTO t_pq_resgate_recompensa (id_usuario, id_recompensa, dt_resgate, qt_pontos_utilizados, ds_recompensa) VALUES (4, 3, TO_DATE('2024-11-13', 'YYYY-MM-DD'), 3, 'Desconto em próxima compra');
INSERT INTO t_pq_resgate_recompensa (id_usuario, id_recompensa, dt_resgate, qt_pontos_utilizados, ds_recompensa) VALUES (5, 4, TO_DATE('2024-11-14', 'YYYY-MM-DD'), 4, 'Voucher de serviço gratuito');
INSERT INTO t_pq_resgate_recompensa (id_usuario, id_recompensa, dt_resgate, qt_pontos_utilizados, ds_recompensa) VALUES (6, 5, TO_DATE('2024-11-15', 'YYYY-MM-DD'), 5, 'Desconto de 20%');
INSERT INTO t_pq_resgate_recompensa (id_usuario, id_recompensa, dt_resgate, qt_pontos_utilizados, ds_recompensa) VALUES (7, 6, TO_DATE('2024-11-16', 'YYYY-MM-DD'), 5, 'Revisão completa gratuita');
INSERT INTO t_pq_resgate_recompensa (id_usuario, id_recompensa, dt_resgate, qt_pontos_utilizados, ds_recompensa) VALUES (8, 7, TO_DATE('2024-11-17', 'YYYY-MM-DD'), 2, 'Voucher de R$50');
INSERT INTO t_pq_resgate_recompensa (id_usuario, id_recompensa, dt_resgate, qt_pontos_utilizados, ds_recompensa) VALUES (9, 8, TO_DATE('2024-11-18', 'YYYY-MM-DD'), 3, 'Pontos em dobro');
INSERT INTO t_pq_resgate_recompensa (id_usuario, id_recompensa, dt_resgate, qt_pontos_utilizados, ds_recompensa) VALUES (10, 9, TO_DATE('2024-11-19', 'YYYY-MM-DD'), 4, 'Amortecedor traseiro gratuito');
INSERT INTO t_pq_resgate_recompensa (id_usuario, id_recompensa, dt_resgate, qt_pontos_utilizados, ds_recompensa) VALUES (1, 10, TO_DATE('2024-11-20', 'YYYY-MM-DD'), 5, 'Serviço de alinhamento gratuito');

commit;