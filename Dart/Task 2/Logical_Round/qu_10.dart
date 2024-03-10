//10.Wap print all prime no into 1 to N.

import 'dart:io';


bool isPrime(int i,int n)
{
  bool check = true;
    if(i==1)
    {
      return false;
    }
    for(int j=2; j<i; j++)
    {
      if(i % j == 0)
      {
        check = false;
        break;
      }
    }
    return check;
}
void main()
{
  int n,i;

  stdout.write("Enter a Number : ");
  n = int.parse(stdin.readLineSync()!);

  stdout.write("\nAll Prime Number between 1 and $n are Below :\n");
  for(i=1; i<=n; i++)
  {
    if(isPrime(i,n))
    {
      stdout.write("$i ");
    }
  }
}