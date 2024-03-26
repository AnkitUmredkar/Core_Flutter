// 1. Write a Dart Class which convert given distance in appropriate feet and inches.
// e.g. Input: 5 feet and 15 inch
// Output: 6 feet and 3 inch

import 'dart:io';

class DistanceConverter {
  late var feet, inches;

  void setter() {
    stdout.write("Enter the feet : ");
    feet = int.parse(stdin.readLineSync()!);

    stdout.write("Enter the inches : ");
    inches = int.parse(stdin.readLineSync()!);
  }

  void convert() {
    feet = (inches ~/ 12) + feet;
    inches = inches % 12;
  }

  void getter()
  {
    stdout.write("\n$feet feet and $inches inches\n");
  }
}

void main() {
  DistanceConverter obj = new DistanceConverter();

  obj 
   ..setter()
   ..convert()
   ..getter();
}
