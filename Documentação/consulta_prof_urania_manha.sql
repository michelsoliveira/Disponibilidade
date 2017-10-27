SELECT   
	p.nome    
	,dt.diasemana_id     
	,sum(case when dt.tempoaula_id = 1 then 1 else 0 end) as aula1     
	,sum(case when dt.tempoaula_id = 2 then 1 else 0 end) as aula2     
	,sum(case when dt.tempoaula_id = 3 then 1 else 0 end) as aula3     
	,sum(case when dt.tempoaula_id = 4 then 1 else 0 end) as aula4     
	,sum(case when dt.tempoaula_id = 5 then 1 else 0 end) as aula5     
    ,concat(
		convert(sum(case when dt.tempoaula_id = 1 then 1 else 0 end),char)
		,convert(sum(case when dt.tempoaula_id = 2 then 1 else 0 end),char)
        ,convert(sum(case when dt.tempoaula_id = 3 then 1 else 0 end),char)
        ,convert(sum(case when dt.tempoaula_id = 4 then 1 else 0 end),char)
        ,convert(sum(case when dt.tempoaula_id = 5 then 1 else 0 end),char)
    ) as horario
FROM   
	disponibilidade as dp 
	inner join professor as p on dp.professor_id = p.id
    inner join diatempo as dt on dp.diatempo_id = dt.id     
	inner join diasemana as ds on dt.diasemana_id = ds.id     
	inner join tempoaula as ta on dt.tempoaula_id = ta.id 
WHERE  
	dp.professor_id = 24
group by dp.professor_id, dt.diasemana_id