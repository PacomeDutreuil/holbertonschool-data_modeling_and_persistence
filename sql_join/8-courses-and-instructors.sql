SELECT c.title, i.name
FROM courses c
INNER JOIN instructors i
    ON c.instructor_id = i.id
ORDER BY c.title;
