select * from pf0645.projetos_sustentaveis;
select * from pf0645.tipo_fontes;
select * from pf0645.regioes_sustentaveis;
select * from pf0645.emissoes_carbono;

-- tipo_fonte id regiao quantidade 

select t.nome, distinct(t.id_tipo_fonte) QUANTIDADEPROJETOS
from pf0645.tipo_fontes t join pf0645.projetos_sustentaveis p on (t.id_tipo_fonte = p.id_tipo_fonte)
where t.id_tipo_fonte > 2
group by t.nome;