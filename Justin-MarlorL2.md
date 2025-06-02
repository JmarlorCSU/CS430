Justin Marlor
CS430
Lab 2
05/28/2025

1. Find all the student's names enrolled in CS430dl.
Πsname (σ_cname = “CS430dl” (Student ⨝ Enrolled ⨝ Class))
2. Find all the classes Hans Solo took in the SP16 semester.
Π_cname (σ_sname = “Hans Solo” ^ σ_esemester = “SP16” (Student ⨝ Enrolled ⨝ Class)
3. Find all the classrooms on the second floor of building "A".
Π_crid (σ_crfloor = 2 ^ b_name = “A” (Classrooms ⨝ Building))
4. Find all the class names that are located in Classroom 130.
Π_cname (σ_crid = 130 (Class ⨝ ClassAssigned))
5. Find all the buildings that have ever had CS430dl in one of their classrooms.
Πbname (σ_cname = “CS430dl” (Class ⨝ ClassAssigned ⨝ Classrooms ⨝ Building))
6. Find all the classrooms that Alice Wonderland has been in.
Πcrid (σ_sname = “Alice Wonderland” (Student ⨝ Enrolled ⨝ ClassAssigned)
7. Find all the students with a CS major that have been in a class in either the "A" building
or the "B" building.
Πsname (σ_major = “CS” ^ (b_name = “A” v b_name = “B”) (Student ⨝ Enrolled ⨝ ClassAssigned
⨝ Classrooms ⨝ Building))
8. Find all the classrooms that are in use during the SS21 semester.
Π_crid (σ_casemester = “SS21” (Classrooms ⨝ ClassAssigned))
