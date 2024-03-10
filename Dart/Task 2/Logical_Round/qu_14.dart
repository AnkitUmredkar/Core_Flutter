// 14.Wap to find second largest number in array.

import 'dart:io';

void main()
{
  int n,i,j,num,temp;
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

  // for(i=0; i<n; i++)
  // {
  //   for(j=i+1; j<n; j++)
  //   {
  //     if(arr[i] < arr[j])
  //     {
  //       temp = arr[j];
  //       arr[j] = arr[i];
  //       arr[i] = temp;
  //     }
  //   }
  // }
  arr.sort();
  print(arr);
  stdout.write("\nSecond Largest Element is : ${arr[i-2]}\n\n");

}