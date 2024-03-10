// 8. Wap to sum of first and last digits in a number.

import 'dart:io';

void main()
{
  int n,ld,fd;

  stdout.write("Enter any Number : ");
  n = int.parse(stdin.readLineSync()!);

  ld = (n % 10);

  while(n >= 9)
  {
    n = (n ~/ 10);
  }
  fd = n;

  stdout.write("\n$fd + $ld = ${fd + ld}\n");

}
