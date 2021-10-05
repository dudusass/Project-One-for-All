CREATE VIEW estatisticas_musicais AS
SELECT 
(SELECT COUNT(*) FROM SpotifyClone.musics) cancoes,
(SELECT COUNT(*) FROM SpotifyClone.artists) artistas,
(SELECT COUNT(*) FROM SpotifyClone.albuns) albuns;
