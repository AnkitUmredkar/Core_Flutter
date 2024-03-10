// 22.WAP to print prime no in array.

import 'dart:io';
void main()
{
  int size,i,num;
  List arr = [];

  stdout.write("Enter the size of array : ");
  size = int.parse(stdin.readLineSync()!);

  stdout.write("\nEnter Elements of an array \n");
  for(i=0; i<size; i++)
  {
    stdout.write("Enter Value of arr[$i] : ");
    num = int.parse(stdin.readLineSync()!);
    arr.add(num);
  }

  stdout.write("\nAll Prime Number of array :\n");

  for(i=0; i<size; i++)
  {
    if(PrimeorNot(arr[i]))
    {
      stdout.write("${arr[i]} ");
    }
  }

}

bool PrimeorNot(int n)
{
  if(n==1 || n==0)
  {
    return false;
  }
  for(int i=2; i<n; i++)
  {
    if(n % i == 0)
    {
      return false;
    }
  }
    return true;
}