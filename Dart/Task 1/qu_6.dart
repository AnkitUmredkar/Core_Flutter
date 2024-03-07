// Write a Dart program to find a cube of any number.

import 'dart:io';

void main() 
{
  stdout.write("Enter any Number : ");
  int n1 = int.parse(stdin.readLineSync()!);

  stdout.write("Cube of Number is : ${n1*n1*n1}");
}
