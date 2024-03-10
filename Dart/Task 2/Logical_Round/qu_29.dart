// 29.Wap to remove all repeated characters in a string.

import 'dart:io';

void main()
{
  var str,len;
  List<String> arr = [];
  int i,j;

  stdout.write("Enter a string : ");
  str = stdin.readLineSync()!;

  len = str.length;

  for(i=0; i<len; i++)
  {
    arr.add(str[i]);
  }

  stdout.write("\nString After Removing All Repeated Character : ");

  // for(i=0; i<len; i++)
  // {
  //   for(j=i+1; j<len; j++)
  //   {
  //     if(arr[i] == arr[j])
  //     {
  //       arr[j] = 0;
  //     }
  //   }
  //   if(arr[i] != 0)
  //   {
  //     stdout.write("${arr[i]}");
  //   }
  // }
  Set<String> uniqueSet = arr.toSet();
  arr = uniqueSet.toList();

  arr.forEach((element) => stdout.write(element));

}