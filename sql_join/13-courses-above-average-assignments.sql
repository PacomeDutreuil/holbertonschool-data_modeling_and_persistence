SELECT title
FROM courses
WHERE id IN (
    SELECT course_id
    FROM assignments
    GROUP BY course_id
    HAVING COUNT(*) >
    (
        SELECT AVG(cnt)
        FROM (
            SELECT COUNT(*) AS cnt
            FROM assignments
            GROUP BY course_id
        )
    )
)
ORDER BY title;
