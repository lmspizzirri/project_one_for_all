SELECT
    s.song AS cancao,
    COUNT(l.user_id) AS reproducoes
FROM songs AS s
INNER JOIN listened_songs AS l
ON s.song_id = l.song_id
GROUP BY s.song
ORDER BY reproducoes DESC, s.song
LIMIT 2;
