teaches(teacher1, student1, sub101).
teaches(teacher2, student2, sub102).
teaches(teacher1, student3, sub101).

teacher_of(Teacher, Student) :- teaches(Teacher, Student, _).
subject_code(Student, Code) :- teaches(_, Student, Code).
