// Write a Dart program to addition of two matrices of dimension 3x3. 

import 'dart:io';

void main()
{
  List firstArray = [],secondArray = [],sumOfArray = [];
  int i,j,num;

  print("Enter the Elements of First Array :");
  for(i=0; i<3; i++)
  {
    firstArray.add([]);
    for(j=0; j<3; j++)
    {
      stdout.write("Enter the a[$i] : ");
      num = int.parse(stdin.readLineSync()!);
      firstArray[i].add(num);
    }
  }

  print("\nEnter the Elements of Second Array :");
  for(i=0; i<3; i++)
  {
    secondArray.add([]);
    for(j=0; j<3; j++)
    {
      stdout.write("Enter the b[$i] : ");
      num = int.parse(stdin.readLineSync()!);
      secondArray[i].add(num);
    }
  }

  for(i=0; i<3; i++)
  {
    sumOfArray.add([]);
    for(j=0; j<3; j++)
    {
      sumOfArray[i].add(firstArray[i][j] + secondArray[i][j]);
    }
  }

  print("\nFirst Array Below");
  print(firstArray);
  print("\nSecond Array Below");
  print(secondArray);
  print("\nSum of Array Below");
  print(sumOfArray);
}