SELECT
	COUNT(s.song_id) AS 'cancoes',
    COUNT(DISTINCT(a.artist_id)) AS 'artistas',
    COUNT(DISTINCT(a.album_id)) AS 'albuns'
FROM songs AS s
INNER JOIN albums AS a
ON s.album_id = a.album_id;