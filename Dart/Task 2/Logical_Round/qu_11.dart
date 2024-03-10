// 11.Wap print fibonacci series.

import 'dart:io';

void main()
{
  int n,first=0,second=1,sum=0;

  stdout.write("Enter Limit of Series : ");
  n = int.parse(stdin.readLineSync()!);

  for(int i=1; i <= n; i++)
  {
    stdout.write("$first ");
    sum = first + second;
    first = second;
    second = sum;
  }
}