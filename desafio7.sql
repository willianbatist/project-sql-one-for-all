SELECT a.artista AS artista, alb.album AS album, COUNT(s.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS alb
ON a.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguidores AS s
ON a.artista_id = s.artista_id
GROUP BY alb.album_id
ORDER BY seguidores DESC, artista ASC, album ASC;