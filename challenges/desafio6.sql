SELECT 
    ROUND(MIN(p.value), 2) AS faturamento_minimo,
    ROUND(MAX(p.value), 2) AS faturamento_maximo,
    ROUND(AVG(p.value), 2) AS faturamento_medio,
    ROUND(SUM(p.value), 2) AS faturamento_total
FROM plans AS p
INNER JOIN users AS u
ON p.plans_id = u.plans_id;
