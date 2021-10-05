CREATE VIEW historico_reproducao_usuarios AS
SELECT u.name AS usuario, m.name AS nome
FROM SpotifyClone.history h
JOIN SpotifyClone.musics m ON h.music_id = m.music_id
JOIN SpotifyClone.users u ON h.user_id = u.user_id
ORDER BY `usuario`, `nome`;
