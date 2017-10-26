SELECT 
	tbl.professor_id
    ,ds.id as diasemana_id
    ,ifnull(tbl.aula1,0) as aula1
    ,ifnull(tbl.aula2,0) as aula2
    ,ifnull(tbl.aula3,0) as aula3
    ,ifnull(tbl.aula4,0) as aula4
    ,ifnull(tbl.aula5,0) as aula5
    ,ifnull(tbl.aula6,0) as aula6
    ,ifnull(tbl.aula7,0) as aula7
    ,ifnull(tbl.aula8,0) as aula8
    ,ifnull(tbl.aula9,0) as aula9
FROM
	diasemana as ds
	left join (
					SELECT   
						dp.professor_id     
						,dt.diasemana_id     
						,sum(case when dt.tempoaula_id = 1 then 1 else 0 end) as aula1     
						,sum(case when dt.tempoaula_id = 2 then 1 else 0 end) as aula2     
						,sum(case when dt.tempoaula_id = 3 then 1 else 0 end) as aula3     
						,sum(case when dt.tempoaula_id = 4 then 1 else 0 end) as aula4     
						,sum(case when dt.tempoaula_id = 5 then 1 else 0 end) as aula5     
						,sum(case when dt.tempoaula_id = 6 then 1 else 0 end) as aula6 
						,sum(case when dt.tempoaula_id = 7 then 1 else 0 end) as aula7    
						,sum(case when dt.tempoaula_id = 8 then 1 else 0 end) as aula8     
						,sum(case when dt.tempoaula_id = 9 then 1 else 0 end) as aula9     
					FROM   
						disponibilidade as dp 
						inner join diatempo as dt on dp.diatempo_id = dt.id     
						inner join diasemana as ds on dt.diasemana_id = ds.id     
						inner join tempoaula as ta on dt.tempoaula_id = ta.id 
					/*WHERE  
						dp.professor_id = 24 */
					group by dp.professor_id, dt.diasemana_id
			  ) as tbl on ds.id = tbl.diasemana_id