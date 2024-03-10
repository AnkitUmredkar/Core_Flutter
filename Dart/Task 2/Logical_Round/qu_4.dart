// 4. Wap to calculate 1 to N no sum.

import 'dart:io';

void main()
{
  var n,sum=0;
  int i;

  stdout.write("Enter a Number : ");
  n = int.parse(stdin.readLineSync()!);

  for(i=1; i<=n; i++)
  {
    sum = sum + i;
  }

  stdout.write("Sum is : $sum\n");

}