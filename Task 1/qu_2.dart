// Write a Dart program to perform addition of two
// different numbers.

import 'dart:io';

void main()
{
    stdout.write("Enter First Number : ");  
    int a = int.parse(stdin.readLineSync()!);

    stdout.write("Enter Second Number : ");
    int b = int.parse(stdin.readLineSync()!);

    int sum = a + b;
    stdout.write("The sum is : $sum");
    
}