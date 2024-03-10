// 6. Wap to print multiplication table of any number.

import 'dart:io';

void main()
{
  int n,i;

  stdout.write("Enter a Number : ");
  n = int.parse(stdin.readLineSync()!);

  for(i=1; i<=10; i++)
  {
    stdout.write("$n * $i = ${n*i}\n");
  }
}