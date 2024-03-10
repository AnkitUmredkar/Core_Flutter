// 12.Wap to print all negative elements in an array.

import 'dart:io';

void main()
{
  int n,i,num;
  List arr = [];

  stdout.write("Enter the size of array : ");
  n = int.parse(stdin.readLineSync()!);

  stdout.write("\nEnter Elements of an array \n");
  for(i=0; i<n; i++)
  {
    stdout.write("Enter Value of arr[$i] : ");
    num = int.parse(stdin.readLineSync()!);
    arr.add(num);
  }

  stdout.write("\nAll The Negative Elements are below :\n");
  for(i=0; i<n; i++)
  {
    if(arr[i] < 0)
    {
      stdout.write("${arr[i]}");
    }
  }
}