// Write a Dart program to print multiplication table of user given number.

import 'dart:io';

void main()
{
    stdout.write("Enter any Number : ");
    int n = int.parse(stdin.readLineSync()!);

    for(int i=1; i<=10; i++)
    {
      print("$n * $i = ${i * n}");
    }
}