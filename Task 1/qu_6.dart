// Write a Dart program to find a cube of any number.

import 'dart:io';

void main() 
{
  stdout.write("Enter any Number : ");
  int n1 = int.parse(stdin.readLineSync()!);

  int cube = n1*n1*n1;
  stdout.write("Cube of Number is : $cube");
}
