SELECT amount as most_frequent_value
from value_table
group by amount
ORDER BY COUNT(*) DESC
LIMIT 1


/*
    Agrupar Valores
    Contar valores Agrupados
    Ordenar por ordem decrescente
    Pegar o primeiro

*/