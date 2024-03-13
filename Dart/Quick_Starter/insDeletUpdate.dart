// Write a Dart program to Insert, Delete, Update and 
// View operations on the elements in an array 
// using menu-driven programming approach.

import 'dart:io';

void main()
{
  List arr = [];
  int i,choice,n;

  stdout.write("Enter a Size of an Array : ");
  n = int.parse(stdin.readLineSync()!);

  for(i=0; i<n; i++)
  {
    stdout.write("Enter a arr[$i] : ");
    int num = int.parse(stdin.readLineSync()!);
    arr.add(num);
  }

  do
  {
    stdout.write("\n--------------------");
    stdout.write("\nEnter 1 for Insert ");
    stdout.write("\nEnter 2 for Delet ");
    stdout.write("\nEnter 3 for Update ");
    stdout.write("\nEnter 4 for Display ");
    stdout.write("\nEnter 0 for Exit ");
    stdout.write("\n--------------------");
    stdout.write("\nEnter your Choice : ");
    choice = int.parse(stdin.readLineSync()!);

    switch(choice)
    {
      case 1 :
        insertValue(arr);
        break;

      case 2 :
        deletValue(arr);
        break;

      case 3 :
        updateValue(arr);
        break;

      case 4 :
        displayArray(arr);
        break;

      case 0 :
        stdout.write("\nProgram Exit! Thank You...\n");
        break;

      default :
        stdout.write("\nEnter Valid Input (1,2,3,4)!!\n");
    }  

  }while(choice != 0);
}

void displayArray(List arr)
{
  stdout.write("\nArray is Below..\n");
  for(int i=0; i<arr.length; i++)
  {
    stdout.write("${arr[i]} ");
  }
}

void insertValue(List arr)
{
  int pos,elem;

  stdout.write("Enter a Position : ");
  pos = int.parse(stdin.readLineSync()!);

  stdout.write("Enter a Element : ");
  elem = int.parse(stdin.readLineSync()!);

  if(pos < arr.length)
  {
    arr.insert(pos, elem);
    stdout.write("\nArray Update Successfully...\n");
  }
  else
  {
    stdout.write("\nInvalid Array Index!!");
  }
  
}

void deletValue(List arr)
{
  int pos;

  stdout.write("Enter a Position : ");
  pos = int.parse(stdin.readLineSync()!);

  if(pos < arr.length)
  {
    arr.removeAt(pos);
    stdout.write("\nArray Update Successfully...\n");
  }
  else
  {
    stdout.write("\nInvalid Array Index!!");
  }
}

void updateValue(List arr)
{
  int pos,elem;

  stdout.write("Enter a Position : ");
  pos = int.parse(stdin.readLineSync()!);

  stdout.write("Enter a Element : ");
  elem = int.parse(stdin.readLineSync()!);

  if(pos < arr.length)
  {
    arr.removeAt(pos);
    arr.insert(pos,elem);
    stdout.write("\nArray Update Successfully...\n");
  }
  else
  {
    stdout.write("\nInvalid Array Index!!");
  }
}