// 25.Wap to find sum of diagonal elements of a matrix.

import 'dart:io';

void main()
{
  List arr = [];
  int i,n,j;
  double sum=0;

  stdout.write("Enter a row and cols : ");
  n = int.parse(stdin.readLineSync()!);

  for(i=0; i<n; i++)
  {
    arr.add([]);
    for(j=0; j<n; j++)
    {
      stdout.write("Enter a arr[$i][$j] : ");
      arr[i].add(int.parse(stdin.readLineSync()!));
      if(i == j)
      {
        sum = sum + arr[i][j];
      }
    }
  }

  stdout.write("\nMatrix is below :\n");
  for(i=0; i<n; i++)
  {
    print(arr[i]);
  }

  print("\nSum of Diagonal Elemenets : $sum\n");

}