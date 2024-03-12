// 17.Wap to change 9 to 0 in array..

import 'dart:io';

void main()
{
  List arr = [];
  int i,n;

  stdout.write("Enter a Size of an array : ");
  n = int.parse(stdin.readLineSync()!);

  for(i=0; i<n; i++)
  {
    stdout.write("Enter a arr[$i] : ");
    int num = int.parse(stdin.readLineSync()!);
    arr.add(num);
  }

  stdout.write("\nReversed Array is : ");
  for(i=n-1; i>=0; i--)
  {
    stdout.write("${arr[i]} ");
  }

}