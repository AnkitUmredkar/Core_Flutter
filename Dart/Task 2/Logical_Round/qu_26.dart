// 26.Wap to count frequency of each character in a string.

import 'dart:io';

void main()
{
  var str;
  List arr = [];
  int i,j,f=1,length;

  stdout.write("Enter a String : ");
  str = stdin.readLineSync()!;
  length = str.length;

  for(i=0; i<length; i++)
  {
    arr.add(str[i]);
  }

  stdout.write("\nFrequency of all Character :\n");
  for(i=0; i<length; i++)
  {
    for(j=i+1; j<length; j++)
    {
      if(arr[i] == arr[j])
      {
        arr[j] = 0;
        f++;
      }
    }
    if(arr[i] != 0)
    {
      print("${arr[i]} --> $f");
    }
    f=1;
  }

}