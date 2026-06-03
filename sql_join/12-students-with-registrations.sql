SELECT DISTINCT s.name
FROM students s
INNER JOIN registrations r
    ON s.id = r.student_id
ORDER BY s.name;
