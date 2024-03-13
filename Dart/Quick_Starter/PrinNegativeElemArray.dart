// Write a Dart program to to print all negative elements in an array

import 'dart:io';

void main()
{
  List<int> arr = [];
  List<int> negativeElement = [];
  int n,i,ck=1;

  stdout.write("Enter a Size of an Array : ");
  n = int.parse(stdin.readLineSync()!);

  for(i=0; i<n; i++)
  {
    stdout.write("Enter a arr[$i] : ");
    int num = int.parse(stdin.readLineSync()!);
    arr.add(num);
  }

  for(i=0; i<n; i++)
  {
    if(arr[i] < 0)
    {
      ck = 0;
      negativeElement.add(arr[i]);
    }
  }

  if(ck == 1)
  {
    stdout.write("\nAll Element is Positive....\n");
    print(arr);
  }
  else
  {
    stdout.write("\nAll Negative Element are Below :\n");
    print(negativeElement);
  }

}