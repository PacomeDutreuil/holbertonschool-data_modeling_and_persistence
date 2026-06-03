SELECT c.title,
       COUNT(r.student_id) AS registration_count
FROM courses c
LEFT JOIN registrations r
    ON c.id = r.course_id
GROUP BY c.id, c.title
ORDER BY registration_count DESC, c.title;
