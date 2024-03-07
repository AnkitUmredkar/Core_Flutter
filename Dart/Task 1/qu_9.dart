// Write a Dart program to create a calculator using switch case.

import 'dart:io';

void main()
{
  double n1,n2;
  int op;

  stdout.write(" 1 for + \n 2 for - \n 3 for * \n 4 for / \n 5 for % \n 0 for Exit");
  stdout.write("\nEnter your choice : ");
  op = int.parse(stdin.readLineSync()!);

  while(op != 0)
  {
    stdout.write("Enter First Value : ");
    n1 = double.parse(stdin.readLineSync()!);

    stdout.write("Enter Second Value : ");
    n2 = double.parse(stdin.readLineSync()!);

    switch(op)
    {
      case 1:
          stdout.write("$n1 + $n2 : ${n1 + n2}");
          break;

      case 2:
          stdout.write("$n1 - $n2 : ${n1 - n2}");
          break;  
      
      case 3:
          stdout.write("$n1 * $n2 : ${n1 * n2}");
          break;

      case 4:
          stdout.write("$n1 / $n2 : ${n1 / n2}");
          break;  

      case 5:
          stdout.write("$n1 % $n2 : ${n1 % n2}");
          break; 

      default :
          stdout.write("Enter Valid Input!!");  
    }
      stdout.write("\n\n 1 for + \n 2 for - \n 3 for * \n 4 for / \n 5 for % \n 0 for Exit");
      stdout.write("\nEnter your choice : ");
      op = int.parse(stdin.readLineSync()!); 
      if(op == 0)
      {
        stdout.write("Calculator off!!");
      } 
  }
}