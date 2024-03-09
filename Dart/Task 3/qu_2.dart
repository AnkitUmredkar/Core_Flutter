//2. Write a Dart Program to print all unique elements from a List. Elements may be  redundant
// while entring into a List. Usr can only enter elements of String datatype.

import 'dart:io';

void main() 
{
  List <String> str = [];
  int i;

  stdout.write("Enter the Size : ");
  int n = int.parse(stdin.readLineSync()!);

  for (i = 0; i < n; i++) {
    stdout.write("Enter element : ");
    str.add(stdin.readLineSync()!);
  }

  stdout.write("\n>----Entered List----<\n");
  for (i = 0; i < n; i++) {
    print("${str[i]}");
  }

  Set <String> uniqueSet = str.toSet();
  str = uniqueSet.toList();

  stdout.write("\n>----Unique List----<\n");
  str.forEach((element) => print(element));
}
