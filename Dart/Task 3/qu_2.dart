//2. Write a Dart Program to print all unique elements from a List. Elements may be  redundant 
// while entring into a List. Usr can only enter elements of String datatype.

import 'dart:io';

void main()
{
    List str = [];
    List unique = [];
    int i,j;

    stdout.write("Enter the Size : ");
    int n = int.parse(stdin.readLineSync()!);

    for(i=0; i<n; i++)
    {
      stdout.write("Enter element : ");
      str.add(stdin.readLineSync()!);
      unique.add(1);
    }

    stdout.write("\n>----Entered List----<\n");
    for(i=0; i<n; i++)
    {
        print("${str[i]}");
    }

    stdout.write("\n>----Unique List----<\n");
    for(i=0; i<n; i++)
    {
      if(unique[i] == 0)
      {
        continue;
      }
      for(j=i+1; j<n; j++)
      {
        if(str[i] == str[j])
        {
          unique[i] = 0;
          unique[j] = 0;
        }
      }
      if(unique[i] == 1)
      {
        print(str[i]);
      }
    }  
}
