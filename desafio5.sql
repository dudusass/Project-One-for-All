CREATE VIEW top_2_hits_do_momento AS
SELECT 
name AS cancao,
(SELECT COUNT(*)
  FROM SpotifyClone.history
  WHERE music_id = m.music_id
  GROUP BY music_id) reproducoes
FROM SpotifyClone.musics m
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;