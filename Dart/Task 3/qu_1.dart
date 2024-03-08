// Writ a Dart Program to gt an print total thrmplo!s information using usr input and Map
//Map datatype(use MapEntry class)
// Tak low mntion attriuts for on
// id
// name
// age
// salary

import 'dart:io';

class MapEntry 
{
  var id, name, age, salary;

  void set(int i) 
  {
    stdout.write("\n\nEnter Employee id : ");
    id = stdin.readLineSync()!;

    stdout.write("Enter Employee Name : ");
    name = stdin.readLineSync()!;

    stdout.write("Enter Employee Age : ");
    age = stdin.readLineSync()!;

    stdout.write("Enter Employee Salary : ");
    salary = stdin.readLineSync()!;
  }

  void get(int i) 
  {
    stdout.write("\nEmployee ${i + 1} details are Below :\n");
    Map<String, dynamic> emp = 
    {
      'emp_id': id,
      'emp_name': name,
      'emp_age': age,
      'emp_salary': salary
    };

    print(emp);
  }
}

void main() 
{
  MapEntry m1 = MapEntry();

  for (int i = 0; i < 3; i++)
  {
    m1.set(i);
    m1.get(i);
  }
    
}
