






SELECT
(CASE WHEN Marks >= 70 THEN Name
 ELSE NULL END) AS TEMP,
 Grade, Marks
FROM Students JOIN Grades
ON Marks BETWEEN Min_Mark AND Max_Mark
ORDER BY Grade DESC, Name, Marks;
