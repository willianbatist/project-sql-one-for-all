SELECT m.musica AS cancao, COUNT(h.musica_id) AS reproducoes
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.musicas AS m
ON h.musica_id = m.musica_id
GROUP BY m.musica
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
