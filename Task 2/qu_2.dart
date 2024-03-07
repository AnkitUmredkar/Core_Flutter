// Write a Dart program to create a list which
// contains all Indian states.
// Add all indian states in list by user input.
// After that print all states using any type of loop.

import 'dart:io';

void main()
{
  List l1 = [];

    stdout.write("Enter State Name : ");
    for(int i=1; i<30; i++)
    {
      stdout.write("$i : ");
      String n = stdin.readLineSync()!;
      l1.add(n);
    }

    print(l1);
}