// Write a Dart program to create a list which
// contains all Indian states.
// Add all indian states in list by user input.
// After that print all states using any type of loop.

import 'dart:io';

void main()
{
  List <String> indianStates = [];

    stdout.write("\nIf You Want to Exit Then press : 0\n");
    for(int i=0; i<29; i++)
    {
      stdout.write("Enter State Name ${i+1} : ");
      String stateName = stdin.readLineSync()!;
      if(stateName == '0')
      {
        break;
      }
      indianStates.add(stateName);
    }

    print(indianStates);

}