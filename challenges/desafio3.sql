SELECT 
    u.username AS pessoa_usuaria,
    (COUNT(l.song_id)) AS musicas_ouvidas,
    (SUM(ROUND(s.duration/60, 2))) AS total_minutos
FROM users AS u    
INNER JOIN listened_songs AS l 
ON u.user_id = l.user_id
INNER JOIN songs AS s 
ON l.song_id = s.song_id
GROUP BY u.username
ORDER BY u.username;
