-- Write your query below
with cte as(
select student_id, exam_id, 
score,
dense_rank() over (partition by student_id order by score desc, exam_id asc) as scrank
from exam_results 
)
select student_id, exam_id, score from cte where scrank = 1;