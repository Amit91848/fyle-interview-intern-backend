-- Write query to find the number of grade A's given by the teacher who has graded the most assignments

SELECT COUNT(*) AS num_a_grades, teacher_id
FROM assignments
WHERE grade = 'A'
GROUP BY teacher_id
ORDER BY num_a_grades DESC
LIMIT 1;