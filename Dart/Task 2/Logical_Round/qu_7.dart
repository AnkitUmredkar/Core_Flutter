// 7. Wap to count number of digits in a number.

import 'dart:io';

void main()
{
  int n,count=0;

  stdout.write("Enter any Number : ");
  n = int.parse(stdin.readLineSync()!);

  while(n > 0);
  {
    n ~/= 10;
    count++;
  }

  stdout.write("Number of Digit is : $count\n");

}