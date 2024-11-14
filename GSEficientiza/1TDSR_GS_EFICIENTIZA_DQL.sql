--Alexsandro Macedo De Jesus RM: 557068 - 1TDSR
--Heitor Romero Da Rocha RM: 558301 - 1TDSPW
--Leonardo Faria Salazar RM: 557484 - 1TDSR


-- 1
select t.nome TIPOFONTE, count(*) QUANTIDADEPROJETOS
from pf0645.tipo_fontes t join pf0645.projetos_sustentaveis p on (t.id_tipo_fonte = p.id_tipo_fonte)
group by t.nome
having count(*) > 2
order by t.nome asc;

-- 2
select p.id_projeto, p.descricao, p.custo
from pf0645.tipo_fontes t join pf0645.projetos_sustentaveis p on (t.id_tipo_fonte = p.id_tipo_fonte)
where t.id_tipo_fonte = 2 or t.id_tipo_fonte = 1
order by p.descricao asc;

-- 3
select p.id_projeto, p.descricao, p.status
from pf0645.projetos_sustentaveis p 
where p.custo > 500.00000 and p.status = 'Em andamento';

-- 4
select r.nome REGIAO, round(avg(p.custo), 2) MEDIACUSTO
from pf0645.regioes_sustentaveis r join pf0645.projetos_sustentaveis p on (r.id_regiao = p.id_regiao)
group by r.nome
order by avg(p.custo) desc;

-- 5
select r.nome REGIAO, t.nome TIPOFONTE, count(*) QUANTIDADEPROJETOS, round(avg(e.emissao), 2) MEDIAEMISSAO
from pf0645.regioes_sustentaveis r 
join pf0645.projetos_sustentaveis p on (r.id_regiao = p.id_regiao)
join pf0645.tipo_fontes t on (t.id_tipo_fonte = p.id_tipo_fonte)
join pf0645.emissoes_carbono e on (t.id_tipo_fonte = e.id_tipo_fonte)
group by r.nome, t.nome
having avg(e.emissao) > 5000
order by r.nome asc, t.nome asc;

