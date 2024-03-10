// 27.Wap to check whether a string is palindrome or not.

import 'dart:io';

void main()
{
  var str,revstr;

  stdout.write("Enter a String  : ");
  str = stdin.readLineSync()!;
  stdout.write("Entered String is : $str\n");

  revstr = str.split('').reversed.join();
  stdout.write("Reversed String is : $revstr");

  if(str == revstr)
  {
    stdout.write("\nYes,Entered String is Palindrom\n\n");
  }
  else
  {
    stdout.write("\nNo,Entered String is Palindrom!!\n\n");
  }

}