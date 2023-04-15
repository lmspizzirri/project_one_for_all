SELECT 
    DISTINCT(u.username) AS pessoa_usuaria,
    CASE 
        WHEN MAX(YEAR(l.listened_date)) >= 2021 THEN 'Ativa'
        Else 'Inativa'
    END AS status_pessoa_usuaria
FROM users AS u
INNER JOIN listened_songs AS l
ON u.user_id = l.user_id
GROUP BY u.username
ORDER BY u.username;
