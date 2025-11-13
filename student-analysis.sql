SELECT si.roll_number,si.name
FROM student_information si
INNER JOIN examination_marks em
ON si.roll_number = em.roll_number
GROUP BY em.roll_number
HAVING SUM(em.subject_one + em.subject_two + em.subject_three) < 100;
