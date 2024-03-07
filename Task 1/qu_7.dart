// Write a Dart program to print full name by getting first name and last name by user input.

import 'dart:io';
void main()
{
  stdout.write("Enter First Name : ");  
  String firstName = stdin.readLineSync()!;

  stdout.write("Enter Last Name : ");
  String lastName = stdin.readLineSync()!;

  String fullName = "$firstName $lastName";
  stdout.write("Full Name : $fullName");
}