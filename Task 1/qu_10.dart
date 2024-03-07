// Write a Dart program to find a user given number is even or odd.

import 'dart:io';

void main()
{
  stdout.write("Enter Any Number : ");
  int num = int.parse(stdin.readLineSync()!);

  if(num % 2 == 0)
  {
    stdout.write("Number is even...");
  }
  else
  {
    stdout.write("Number is odd...");
  }
}
