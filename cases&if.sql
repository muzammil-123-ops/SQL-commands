use muzammil;
show tables;
select*from student_marks_case;
#1.Display each student's name and SQL marks. Use the IF() function to check whether the student has scored 50 or above. Display 'Pass' or 'Fail'.
select student_name,sql_marks, if(sql_marks>=50,"Pass","Fail") as PF from student_marks_case;
#2.Display each student's name and attendance percentage. Check whether attendance is 75% or above. Display 'Eligible' or 'Not Eligible'.
select student_name,attendance_percentage, if(attendance_percentage>=75,"Eligible","Not Eligible") as Eligible_or_Not from student_marks_case;
#3.3. Display each student's name and SQL marks. Categorize their performance using the following conditions:
#- 90 and above – Excellent
#- 75 to 89 – Very Good
#- 50 to 74 – Good
#- Below 50 – Needs Improvement
select student_name,
       sql_marks,
       case when sql_marks>=90 then "Excellent"
       when sql_marks>=75 then "VeryGood"
       when sql_marks>=50 then "Good"
       else "Needs Improvement"
       end as Sql_Performance from student_marks_case;
#4.4. Display each student's name and Python marks. Assign grades according to the following conditions:
#- 90 and above – A
#- 80 to 89 – B
#- 70 to 79 – C
#- 50 to 69 – D
#- Below 50 – F
select student_name,
       python_marks,
       case when python_marks>=90 then "A"
       when python_marks>=80 then "B"
       when python_marks>=70 then "C"
       when python_marks>=50 then "D" 
       else "F"
       end as Grade from student_marks_case;
#5.5. Display each student's name, SQL marks, and Python marks. Categorize students using the following conditions:
#- Both SQL and Python marks above 75 – Data Analytics Ready
#- Either SQL or Python marks above 75 – Average
#- Both subjects 75 or below – Needs Training
select student_name,
       sql_marks,
       python_marks,
       case when sql_marks>=75 and python_marks>=75 then "Data Analytics Ready"
       when sql_marks>=75 or python_marks>=75 then "Average"
       else "Needs Training"
       end as SP from student_marks_case;
#6.Display each student's name and marks in SQL, Python, Excel, and Power BI. Identify and display the subject in which each student scored the highest marks.
select student_name,
       sql_marks,
       python_marks,
       excel_marks,
       powerbi_marks,
       case when sql_marks>python_marks and sql_marks>excel_marks and sql_marks>powerbi_marks then "SQL"
       when python_marks>sql_marks and python_marks>excel_marks and python_marks>powerbi_marks then "PYTHON"
       when excel_marks>sql_marks and excel_marks>python_marks and excel_marks>powerbi_marks then "EXCEL"
       else "POWERBI" 
       end as Topper from student_marks_case;
