// 23.Wap to addition of two matrices.

import 'dart:io';

void main()
{
  int r,c,i,j;
  List arr1 = [], arr2 = [], sum = [];

  stdout.write("Enter number of rows  : ");
  r = int.parse(stdin.readLineSync()!);

  stdout.write("Enter number of cols  : ");
  c = int.parse(stdin.readLineSync()!);
  
  stdout.write("\nEnter 1st Array Elements : \n");
  for(i=0; i<r; i++)
  {
    arr1.add([]);
    for(j=0; j<c; j++)
    {
      stdout.write("Enter a arr1[$i][$j] : ");
      arr1[i].add(int.parse(stdin.readLineSync()!));
    }
  }

  stdout.write("\nEnter 2st Array Elements : \n");
  for(i=0; i<r; i++)
  {
    arr2.add([]);
    for(j=0; j<c; j++)
    {
      stdout.write("Enter a arr2[$i][$j] : ");
      arr2[i].add(int.parse(stdin.readLineSync()!));
    }
  }

  stdout.write("\n1 St Matrix is Below :\n");
  for(i=0; i<r; i++)
  {
    print(arr1[i]);
  }
  
  stdout.write("\n2 nd Matrix is Below :\n");
  for(i=0; i<r; i++)
  {
    print(arr2[i]);
  }

  stdout.write("\nSum of two matrices is Below :\n");
  for(i=0; i<r; i++)
  {
    sum.add([]);
    for(j=0; j<c; j++)
    {
      sum[i].add(arr1[i][j] + arr2[i][j]);
    }
  }

  for(i=0; i<r; i++)
  {
    print(sum[i]);
  }

}