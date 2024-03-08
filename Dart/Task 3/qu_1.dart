// Writ a Dart Program to gt an print total thrmplo!s information using usr input and Map 
//Map datatype(use MapEntry class)
// Tak low mntion attriuts for on
// id
// name
// age
// salary

import 'dart:io';

void main() 
{
  var id, name, age, salary;

  for(int i=0; i<3; i++)
  {
    stdout.write("\n\nEnter Employee id : ");
    id = stdin.readLineSync()!;

    stdout.write("Enter Employee Name : ");
    name = stdin.readLineSync()!;

    stdout.write("Enter Employee Age : ");
    age = stdin.readLineSync()!;

    stdout.write("Enter Employee Salary : ");
    salary = stdin.readLineSync()!;

    stdout.write("\nEmployee ${i+1} details are Below");
    Map<String, dynamic> emp1 = {
      'emp_id'  : id,
      'emp_name': name,
      'emp_age' : age,
      'emp_salary': salary
    };
    print(emp1);
  }


}
