DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(45))
BEGIN
SELECT a.name AS artista, a1.name AS album
FROM SpotifyClone.artists AS a
JOIN SpotifyClone.albums AS a1 ON a.artist_id = a1.artist_id
WHERE a.name LIKE CONCAT('%', artist_name, '%')
ORDER BY `album`;
END $$
DELIMITER ;