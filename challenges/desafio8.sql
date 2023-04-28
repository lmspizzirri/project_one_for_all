SELECT 
    a.name AS artista,
    al.album AS album
FROM artists AS a 
INNER JOIN albums AS al 
ON a.artist_id = al.artist_id
WHERE a.name = 'Elis Regina';
