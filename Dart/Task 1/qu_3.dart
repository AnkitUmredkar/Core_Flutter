// Write a Dart program to perform multiplication of two user given numbers.

import 'dart:io';

void main() 
{
  stdout.write("Enter first number : ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Second Number : ");
  int num2 = int.parse(stdin.readLineSync()!);

  if(num1 != 0 && num2 != 0)
  {
    print("Multiplication of $num1 * $num2 is : ${num1 * num2}");
  }
  else
  {
    print("Enter valid Number!!");
  }
  
  
}
