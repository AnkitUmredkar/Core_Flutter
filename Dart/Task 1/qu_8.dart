// Write a Dart program to find a Simple Interest.

import 'dart:io';
void main()
{
  stdout.write("Enter Principle Amount : ");
  int principleAmount = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Intrest rate : ");
  double rate = double.parse(stdin.readLineSync()!);

  stdout.write("Enter Time : ");
  double time = double.parse(stdin.readLineSync()!);

  stdout.write("Interest is ${principleAmount * time * rate / 100}");

}