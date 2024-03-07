// Write a Dart program to perform addition of two different numbers.

import 'dart:io';

void main()
{
    stdout.write("Enter First Number : ");  
    int a = int.parse(stdin.readLineSync()!);

    stdout.write("Enter Second Number : ");
    int b = int.parse(stdin.readLineSync()!);

    stdout.write("The sum is : ${a + b}");
    
}