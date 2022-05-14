SELECT hackerID, name FROM
(SELECT name, hackerID, COUNT(name) FROM
(SELECT
Hackers.hacker_id AS hackerID, name, Submissions.score AS SS, Challenges.difficulty_level AS DL, Difficulty.score AS DS
FROM Hackers
JOIN Submissions ON Hackers.hacker_id = Submissions.hacker_id
JOIN Challenges ON Submissions.challenge_id = Challenges.challenge_id
JOIN Difficulty ON Challenges.difficulty_level = Difficulty.difficulty_level
HAVING SS = DS) AS TEMP
GROUP BY name, hackerID
HAVING COUNT(name) > 1
ORDER BY COUNT(name) DESC, hackerID) AS TEMP2
