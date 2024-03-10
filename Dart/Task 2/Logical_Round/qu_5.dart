// 5. Wap to calculate factorial of a number.

import 'dart:io';

void main()
{
  var n,fact=1;
  int i;

  stdout.write("Enter a Number : ");
  n = int.parse(stdin.readLineSync()!);

  for(i=1; i<=n; i++)
  {
    fact = fact * i;
  }

  stdout.write("The Factorial is : $fact\n");

}