// Write a Dart program to generate multiplication tables between n1 and n2 provided values.

import 'dart:io';

void main()
 {
  stdout.write("Enter First Number : ");  
  int n1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Second Number : ");
  int n2 = int.parse(stdin.readLineSync()!);;
  
  for(int i=n1; i<=n2; i++)
  {
    for(int j=1; j<=10; j++)
    {
        print("$i * $j = ${i * j}");
    }
    print("");
  }
}
// if(n1 <= n2)
//       {
//         int result = i * j;
//         stdout.write("$j * $i = $result");
//       } 
