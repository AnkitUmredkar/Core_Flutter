// 16.Wap to left rotate and right rotate an array.

import 'dart:io';

void main()
{
  List<int> arr1 = [];
  List<int> arr2 = [];
  int i,j,n,temp,leftRotate,rightRotate;

  stdout.write("Enter the Size of an array : ");
  n = int.parse(stdin.readLineSync()!);

  for(i=0; i<n; i++)
  {
    stdout.write("Enter a arr[$i] : ");
    arr1.add(int.parse(stdin.readLineSync()!));
    arr2.add(arr1[i]);
  }
  stdout.write("\nArray is : ");
  print(arr1);

  stdout.write("Enter the Number of Position to Left-Rotate : ");
  leftRotate = int.parse(stdin.readLineSync()!);

  for(i=0; i<leftRotate; i++)
  {
    temp = arr1[0];
    for(j=0; j<n-1; j++)
    {
      arr1[j] = arr1[j+1];
    }
    arr1[n-1] = temp;
  }

  stdout.write("\nLeft-Rotated Array : ");
  print(arr1);

  stdout.write("Enter the Number of Position to Right-Rotate : ");
  rightRotate = int.parse(stdin.readLineSync()!);

  for(i=0; i<rightRotate; i++)
  {
    temp = arr2[n-1];
    for(j=n-1; j>=1; j--)
    {
      arr2[j] = arr2[j-1];
    }
    arr2[0] = temp;
  }

  stdout.write("\nRight-Rotated Array : ");
  print(arr2);

}
