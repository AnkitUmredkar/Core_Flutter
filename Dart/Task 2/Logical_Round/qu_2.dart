// 2. Wap print all even no into 1 to N.

import 'dart:io';

void main()
{
  var n;
  int i;

  stdout.write("Enter a Number : ");
  n = int.parse(stdin.readLineSync()!);

  for(i=1; i<=n; i++)
  {
    if(i % 2 == 0)
    {
      stdout.write("$i ");
    }
  }
}