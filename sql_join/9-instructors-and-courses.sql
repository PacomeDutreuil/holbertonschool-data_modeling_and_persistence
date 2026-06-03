SELECT i.name, c.title
FROM instructors i
LEFT JOIN courses c
    ON c.instructor_id = i.id
ORDER BY i.name, c.title;
