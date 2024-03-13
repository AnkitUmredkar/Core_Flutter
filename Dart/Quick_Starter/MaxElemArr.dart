// Write a Dart program to find largest number in an array.

import 'dart:io';

void main()
{
  List<int> arr = [];
  int n,i,max;

  stdout.write("Enter a Size of an Array : ");
  n = int.parse(stdin.readLineSync()!);

  for(i=0; i<n; i++)
  {
    stdout.write("Enter a arr[$i] : ");
    int num = int.parse(stdin.readLineSync()!);
    arr.add(num);
  }
  max = arr[0];

  arr.forEach((element)
  {
    if(max < element)
    {
      max = element;
    }
  });
  
  print(max);

}