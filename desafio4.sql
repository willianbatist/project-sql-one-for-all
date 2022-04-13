SELECT DISTINCT(u.name) AS usuario, IF ( YEAR(MAX(h.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico AS h
ON u.usuario_id = h.usuario_id
GROUP BY usuario
