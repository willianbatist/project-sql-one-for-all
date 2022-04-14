SELECT CONVERT(ROUND(MIN(p.valor_plano),2),CHAR) AS faturamento_minimo, CONVERT(ROUND(MAX(p.valor_plano),2),CHAR) AS faturamento_maximo, CONVERT(ROUND(AVG(p.valor_plano),2),CHAR) AS faturamento_medio, CONVERT(ROUND(SUM(p.valor_plano), 2),CHAR) AS faturamento_total
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.planos AS p
ON u.plano_id = p.plano_id