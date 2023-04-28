SELECT
    a.album AS album,
    COUNT(f.song_id) AS favoritadas
FROM favorite_songs AS f
INNER JOIN songs AS s
ON f.song_id = s.song_id
INNER JOIN albums AS a 
ON s.album_id = a.album_id
GROUP BY a.album
ORDER BY favoritadas DESC, album
LIMIT 3;
