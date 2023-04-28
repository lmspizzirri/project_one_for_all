SELECT
    a.name AS artista,
    al.album AS album,
    COUNT(f.artist_id) AS pessoas_seguidoras
FROM artists AS a
INNER JOIN albums AS al 
ON a.artist_id = al.artist_id
INNER JOIN followers AS f 
ON a.artist_id = f.artist_id
GROUP BY a.name, al.album
ORDER BY pessoas_seguidoras DESC, artista, album;
