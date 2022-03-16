/* valorPorHoras = valorFixo * horas
 Salario = valorPorHoras + (valorPorHoras * percentual)
*/
/*
select 
    doctors.name
    (attendances.hours * 150) + (attendances.hours * 150 * (work_shifts.bonus/100)) as salary
from
    attendances
inner join doctors on doctors.id = attendances.id_doctor
inner join work_shifts on work_shifts.id = attendances.id_work_shift
*/
select 
    doctors.name as name,
    SUM((attendances.hours * 150) + (attendances.hours * 150 * (work_shifts.bonus/100))) as salary
from
    attendances
inner join doctors on doctors.id = attendances.id_doctor
inner join work_shifts on work_shifts.id = attendances.id_work_shift
GROUP BY doctors.id
ORDER BY salary