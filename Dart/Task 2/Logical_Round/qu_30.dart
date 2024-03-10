// 30.C program to find factorial of number using recursion.

import 'dart:io';

int fact(int n)
{
  if(n == 1)
  {
    return 1;
  }
  return n * fact(n-1);
  
}

void main()
{
  int n;

  stdout.write("Enter a Number : ");
  n = int.parse(stdin.readLineSync()!);

  stdout.write("\nFactorial is : ${fact(n)}\n\n");
}