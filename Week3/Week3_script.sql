-- 1번
SELECT DISTINCT c_id FROM section 
WHERE years = 2009;

-- 2번 첫번째
SELECT t.c_id, t.grade
FROM student AS s, takes AS t
WHERE s.`name` ='Zhang' and s.id = t.s_id;

-- 2번 두번째
SELECT t.c_id, t.grade
FROM student AS s INNER JOIN takes AS t
ON s.id = t.s_id AND s.`name` = 'Zhang';


-- 3번
SELECT t.c_id
FROM instructor as i
INNER JOIN teaches as t
ON i.id = t.i_id 
WHERE i.dept_name = 'Comp.Sci.' AND t.`year` = 2009;

-- 4번
select t.s_id, sum(c.credits) as '모든학점'
from takes as t inner join course as c
on t.c_id = c.id
group by t.s_id
having sum(c.credits);
