SELECT COUNT(DISTINCT(m.musica_id)) AS cancoes, COUNT(DISTINCT(a.artista_id)) AS artistas, COUNT(DISTINCT(a.album_id)) AS albuns
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.albuns AS a
ON m.album_id = a.album_id;