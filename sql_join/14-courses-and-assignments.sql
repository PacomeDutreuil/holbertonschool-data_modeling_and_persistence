SELECT c.title, a.title
FROM courses c
LEFT JOIN assignments a
    ON c.id = a.course_id
ORDER BY c.title, a.title;
