Justin Marlor
CS430
Lab 2
05/28/2025

1. Find all the student's names enrolled in CS430dl.
Πsname (σcname = “CS430dl” (Student ⨝ Enrolled ⨝ Class))
2. Find all the classes Hans Solo took in the SP16 semester.
Πcname (σSname = “Hans Solo” ^ σesemester = “SP16” (Student ⨝ Enrolled ⨝ Class)
3. Find all the classrooms on the second floor of building "A".
Πcrid (σcrfloor = 2 ^ bname = “A” (Classrooms ⨝ Building))
4. Find all the class names that are located in Classroom 130.
Πcname (σcrid = 130 (Class ⨝ ClassAssigned))
5. Find all the buildings that have ever had CS430dl in one of their classrooms.
Πbname (σcname = “CS430dl” (Class ⨝ ClassAssigned ⨝ Classrooms ⨝ Building))
6. Find all the classrooms that Alice Wonderland has been in.
Πcrid (σsname = “Alice Wonderland” (Student ⨝ Enrolled ⨝ ClassAssigned)
7. Find all the students with a CS major that have been in a class in either the "A" building
or the "B" building.
Πsname (σmajor = “CS” ^ (bname = “A” v bname = “B”) (Student ⨝ Enrolled ⨝ ClassAssigned
⨝ Classrooms ⨝ Building))
8. Find all the classrooms that are in use during the SS21 semester.
Πcrid (σcasemester = “SS21” (Classrooms ⨝ ClassAssigned))
