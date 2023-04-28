SELECT
    COUNT(l.user_id) AS musicas_no_historico
FROM listened_songs AS l 
INNER JOIN users AS u 
ON u.user_id = l.user_id
WHERE u.username = 'Barbara Liskov';
