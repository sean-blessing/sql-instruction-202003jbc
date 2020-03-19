SELECT * FROM enrolled
 order by studentID;
 
select * from student
 where id = 4;
 -- student id 4 is Aerila Dulake
 
select * from course
 where id in (1002, 1007, 1005);
-- she's enrolled in english, civics, and socialstudies

-- 2 table join:  student - enrolled
select firstname, lastname, courseid, grade 
  from student s
  join enrolled e
    on  s.id = e.studentID;
    
-- 2 table join:  course - enrolled
select subject, name, credits, quarter, studentID, grade
  from course c
  join enrolled e
    on c.id = e.courseID;
    
-- 3 table join: show each student and their enrolled courses
select firstname, lastname, subject, name, grade 
  from student s
  join enrolled e
    on e.studentID = s.id
  join course c
    on c.id = e.courseID;