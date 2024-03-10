// 13.Wap to find largest number in array.

import 'dart:io';

void main()
{
  int n,i,num,max;
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

  // max = arr[0];

  // for(i=0; i<n; i++)
  // {
  //   if(max < arr[i])
  //   {
  //     max = arr[i];
  //   }
  // }
  arr.sort();
  stdout.write("\nLargest Element is : ${arr[i-1]}\n\n");

}