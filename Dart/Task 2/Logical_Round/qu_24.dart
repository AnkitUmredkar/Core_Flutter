// 24.Wap matrix convert into transpose matrix.

import 'dart:io';

void main()
{
  List arr = [];
  int i,j,n;

  stdout.write("Enter rows and cols : ");
  n = int.parse(stdin.readLineSync()!);

  for(i=0; i<n; i++)
  {
    arr.add([]);
    for(j=0; j<n; j++)
    {
      stdout.write("Enter a arr[$i][$j] : ");
      arr[i].add(int.parse(stdin.readLineSync()!));
    }
  }

  stdout.write("\nOrignal Array is Below :\n");
  for(i=0; i<n; i++)
  {
    print(arr[i]);
  }

  stdout.write("\nTranspose Array is Below :\n");
  for(i=0; i<n; i++)
  {
    for(j=0; j<n; j++)
    {
      stdout.write("${arr[j][i]}, ");
    }
    print("");
  }

}