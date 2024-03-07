// Write a Dart program to concate list element
// value with hello.
// For exmple,
// input: [1, 2, 3]
// output: [1 hello, 2 hello, 3 hello]

import 'dart:io';

void main()
{
  List num1 = [1,2,3];
  List num2 = [];

  num2 = num1.map((e) => ("$e hello")).toList();

  print(num2); 
}