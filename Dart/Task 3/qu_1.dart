//1.Writ a Dart Program to gt an print total thrmplo!s information using usr input and Map
//Map datatype(use MapEntry class)
// Tak low mntion attriuts for on
// id
// name
// age
// salary

import 'dart:io';

class Employee 
{
  var id, name, age, salary;

  void set(int i) 
  {
    stdout.write("\n\n>---Enter Employee ${i+1} Details---<\n");
    stdout.write("Enter Employee id : ");
    id = int.parse(stdin.readLineSync()!);

    stdout.write("Enter Employee Name : ");
    name = stdin.readLineSync()!;

    stdout.write("Enter Employee Age : ");
    age = int.parse(stdin.readLineSync()!);

    stdout.write("Enter Employee Salary : ");
    salary = int.parse(stdin.readLineSync()!);
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
  List<Employee> arr = [];

  for (int i = 0; i < 3; i++)
  {
    Employee e1 = Employee();
    e1.set(i);
    arr.add(e1);
  }

  for(int i=0; i<3; i++)
  {
    arr[i].get(i);
  }   
  
}
