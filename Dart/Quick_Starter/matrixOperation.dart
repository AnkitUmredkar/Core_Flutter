// Write a Dart program to find below mentioned operations on the 3x3 array using menu-driven programming approach. 
// Perform below all mentioned by user choice: 
// - Sum of all elements 
// - Sum of specific Row 
// - Sum of specific Column 
// - Sum of diagonal elements 
// - Sum of antidiagonal elements 
// - Press 0 for exit 

import 'dart:io';


void main()
{
  List arr = [];
  int i,j,choice,length;

  for(i=0; i<3; i++)
  {
    arr.add([]);
    for(j=0; j<3; j++)
    {
      stdout.write("Enter a arr[$i] : ");
      int num = int.parse(stdin.readLineSync()!);
      arr[i].add(num);
    }
  }

  print("\n2D Array is Below :");
  for(i=0; i<3; i++)
  {
    for(j=0; j<3; j++)
    {
      stdout.write("${arr[i][j]} ");
    }
    print("");
  }
  length = arr.length;

  do
  {
    stdout.write("\n--------------------");
    stdout.write("\nEnter 1 Sum of Element");
    stdout.write("\nEnter 2 Sum of Specific Row");
    stdout.write("\nEnter 3 Sum of Specific Cols");
    stdout.write("\nEnter 4 Sum of diagonal elements");
    stdout.write("\nEnter 5 Sum of antidiagonal elements");
    stdout.write("\nEnter 0 for Exit");
    stdout.write("\n--------------------");
    stdout.write("\nEnter your Choice : ");
    choice = int.parse(stdin.readLineSync()!);

    switch(choice)
    {
      case 1 :
        SumofAllElement(arr,length);
        break;

      case 2 :
        SumofRow(arr,length);
        break;

      case 3 :
        SumofColumn(arr,length);
        break;

      case 4 :
        SumofDiagonalElem(arr,length);
        break;

      case 5 :
        SumofAnitDiagonalElem(arr,length);
        break;

      case 0 :
        stdout.write("\nProgram Exit.....\n");
        break;

      default :
        stdout.write("\nEnter Valid Choice (1,2,3,4,5,0)\n");
    }

  }while(choice != 0);
}

void SumofAllElement(List arr,int length)
{
  int sum=0,temp;
  for(int i=0; i<length; i++)
  {
    for(int j=0; j<length; j++)
    {
      temp = arr[i][j];
      sum = sum + temp;
    }
  }

  stdout.write("\nSum of All element : $sum");
}

void SumofRow(List arr,int length)
{
  int sum=0,temp;
  for(int i=0; i<arr.length; i++)
  {
    sum = 0;
    for(int j=0; j<arr.length; j++)
    {
      temp = arr[i][j];
      sum = sum + temp;
    }
    stdout.write("\nSum of ${i+1} Row is : $sum");
  }
}

void SumofColumn(List arr,int length)
{
  int sum=0,temp;
  for(int i=0; i<length; i++)
  {
    sum = 0;
    for(int j=0; j<length; j++)
    {
      temp = arr[j][i];
      sum = sum + temp;
    }
    stdout.write("\nSum of ${i+1} Column is : $sum");
  }

}

void SumofDiagonalElem(List arr,int length)
{
  int sum=0,temp;
  for(int i=0; i<length; i++)
  {
    for(int j=0; j<length; j++)
    {
      if(i == j)
      {
        temp = arr[i][j];
        sum = sum + temp;
      }
      
    }
  }

  stdout.write("\nSum of Diagonal Element is : $sum");
}

void SumofAnitDiagonalElem(List arr,int length)
{
  int sum=0,temp,rows=3;
  for(int i=0; i<length; i++)
  {
    for(int j=0; j<length; j++)
    {
      temp = arr[i][j];
      if(i+j == rows-1)
      {
        sum = sum + temp;
      }
      
    }
  }

  stdout.write("\nSum of Anit-Diagonal Element is : $sum");
// 9
// 5
// 1
// 8
// 2
// 7
// 4
// 6
// 3
}
