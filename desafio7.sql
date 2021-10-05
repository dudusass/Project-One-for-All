CREATE VIEW perfil_artistas AS
SELECT 
a.name AS artista,
ab.name AS album,
COUNT(f.artist_id) AS seguidores
FROM SpotifyClone.artists AS a
JOIN SpotifyClone.albuns AS a1 ON a.artist_id = a1.artist_id
JOIN SpotifyClone.follower_artist f ON a.artist_id = f.artist_id
GROUP BY `album`, `artista`
ORDER BY `seguidores` DESC, `artista`;

