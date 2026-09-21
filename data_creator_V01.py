# -*- coding: utf-8 -*-
"""
Created on Sun Sep 20 14:30:10 2026

@author: choud
"""

import random as rd

designation = ["Executive", "Associate", "Senior Associate", "Manager", "Director"]
salary_dickn = {"Executive":[90,110]
                , "Associate":[165,180]
                , "Senior Associate":[220,245]
                , "Manager":[285,320]
                , "Director":[400,500]}
department = ["Finance", "HR", "Data Engineering", "Revenue", "Sales", "Marketing"]
gender = ["Males", "Females", "Others"]


def create_random_name(size = 0):
    if size == 0:
        return "no name"
    else:
        name = ""
        surname = ""
        for i in range(size):
            name += chr(rd.randint(65, 90))
            surname += chr(rd.randint(65, 90))
        return name + " " + surname
 
# print(create_random_name(10))



data = []
data_string = ""
for i in range(1000):
    desig = designation[rd.randint(0, len(designation)-1)]
    depart = department[rd.randint(0, len(department)-1)]
    emp_name = create_random_name(rd.randint(4, 7))
    gen = gender[rd.randint(0, len(gender)-1)]
    salary = rd.randint(salary_dickn[desig][0], salary_dickn[desig][1])*1000.00
    
    list_1 = [desig, depart, emp_name, gen, salary]
    
    data_line =  "(N\'" + desig + "\', N\'" + depart + "\', N\'" + emp_name + "\', N\'" + gen + "\', " + str(salary) + "), \n"
    data_string += data_line  
    
    data.append(list_1)

