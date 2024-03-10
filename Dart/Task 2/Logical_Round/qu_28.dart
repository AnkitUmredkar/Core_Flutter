// 28.Wap to remove spaces, blanks from a string.

import 'dart:io';

void main()
{
  var str;

  stdout.write("Enter a String : ");
  str = stdin.readLineSync()!;
  
  stdout.write("\nAfter Remove All Space or Blank : ");
  stdout.write("${str.replaceAll(' ','')}");

  // for(int i=0; i<str.length; i++)
  // {
  //   if(str[i] != ' ')
  //   {
  //     stdout.write(str[i]);
  //   }
  // }
}