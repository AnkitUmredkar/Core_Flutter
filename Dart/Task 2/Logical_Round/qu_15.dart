// 15.Wap to Insert, Delete & Update operations the element into array.

import 'dart:io';
void main()
{
  int n,i,num,choice;
  int pos,elem;
  List<int> arr = [];

  stdout.write("Enter ths Size of an array : ");
  n = int.parse(stdin.readLineSync()!);

  stdout.write("\nEnter the Elements of an Array\n");
  for(i=0; i<n; i++)
  {
    stdout.write("Enter a arr[$i] : ");
    num = int.parse(stdin.readLineSync()!);
    arr.add(num);
  }

  do
  {
    stdout.write("\n=====================\n");
    stdout.write("For Insert press 1\n");
    stdout.write("For Delet press 2\n");
    stdout.write("For Update press 3\n");
    stdout.write("For View All press 4\n");
    stdout.write("For Exit press 0\n");
    choice = int.parse(stdin.readLineSync()!);

    switch(choice)
    {
      case 1 :
        stdout.write("Enter a Position : ");
        pos = int.parse(stdin.readLineSync()!);

        stdout.write("Enter a Element : ");
        elem = int.parse(stdin.readLineSync()!);

        arr.insert(pos,elem);
        break;

      case 2 :
        stdout.write("Enter a Position : ");
        pos = int.parse(stdin.readLineSync()!);

        arr.removeAt(pos);
        break;

      case 3 :
        stdout.write("Enter a Position : ");
        pos = int.parse(stdin.readLineSync()!);

        stdout.write("Enter a Element : ");
        elem = int.parse(stdin.readLineSync()!);

        arr.removeAt(pos);
        arr.insert(pos,elem);
        break;

      case 4 : 
        stdout.write("\nArray is Below...\n");
        print(arr);
        break;

      default :
        stdout.write("Enter valid Input!!\n");
    }

  }while(choice != 0);

}