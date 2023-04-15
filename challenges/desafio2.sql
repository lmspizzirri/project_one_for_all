SELECT
	COUNT(c.song_id) AS 'cancoes',
    COUNT(DISTINCT(a.artist_id)) AS 'artistas',
    COUNT(DISTINCT(a.album_id)) AS 'albuns'
FROM songs AS c
INNER JOIN albums AS a
ON c.album_id = a.album_id;