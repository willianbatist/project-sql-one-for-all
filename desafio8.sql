SELECT a.artista AS artista, al.album
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al
ON a.artista_id = al.artista_id
ORDER BY artista DESC
LIMIT 2