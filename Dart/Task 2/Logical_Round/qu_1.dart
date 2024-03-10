// 1. Wap to print 1 to N number.

import 'dart:io';

void main()
{
  var n;
  int i;

  stdout.write("Enter a Number : ");
  n = int.parse(stdin.readLineSync()!);

  for(i=1; i<=n; i++)
  {
    stdout.write("$i ");
  }
}