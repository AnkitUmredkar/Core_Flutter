// 16.Wap to left rotate and right rotate an array.

import 'dart:io';

void main()
{
  List arr = [];
  int i,j,n,x=1;

  stdout.write("Enter the Size of an array : ");
  n = int.parse(stdin.readLineSync()!);

  for(i=0; i<n; i++)
  {
    stdout.write("Enter a arr[$i] : ");
    arr.add(int.parse(stdin.readLineSync()!));
  }
  print(arr);

  stdout.write("\nRotated Array is : ");
  x = n;
  for(i=0; i<n; i++)
  {
    x--;
    stdout.write("${arr[x]} ");
  }

}