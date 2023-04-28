SELECT 
    art.name AS artista,
    CASE
        WHEN COUNT(f.song_id) >= 5 THEN 'A'
        WHEN COUNT(f.song_id) BETWEEN 3 AND 4 THEN 'B'
        WHEN COUNT(f.song_id) BETWEEN 1 AND 2 THEN 'C'
        ELSE '-'
    END AS ranking
FROM artists AS art
LEFT JOIN albums AS alb
ON art.artist_id = alb.artist_id
LEFT JOIN songs AS s
ON alb.album_id = s.album_id
LEFT JOIN favorite_songs AS f
ON s.song_id = f.song_id
GROUP BY artista
ORDER BY COUNT(f.song_id) DESC;
