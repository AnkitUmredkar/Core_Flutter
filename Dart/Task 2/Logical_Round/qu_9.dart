// 9. Wap to enter a number and check the no is prime or not?

import 'dart:io';

void main()
{
  int n,i,count=0;

  stdout.write("Enter any Number : ");
  n = int.parse(stdin.readLineSync()!);

  for(i=1; i<=n ; i++)
  {
    if(n % i == 0)
    {
      count++;
    }
  }

  if(count == 2)
  {
    stdout.write("Entered Number is Prime...\n\n");
  }
  else{
    stdout.write("Entered Number is Not Prime...\n\n");
  }
}