// 1.Display 30 Students Data with Roll no and name and Course with Factory Constructor.

import 'dart:io';

import 'Connect_File.dart';
// import 'Connect_File.dart';

class Student{

  late String Name,Course;
  late int Rollno;

  // Student({required this.Name,required this.Course, required this.Rollno});

  // factory Student.from({required data})
  // {
  //   return Student(
  //     Name : data['name'],
  //     Course : data['course'],
  //     Rollno:  data['rollno'],
  //   );
  // }
}

List StudentDetails =[
  {'name' : "Ankit", 'course' : "Flutter",'rollno' : 101},
  {'name' : "Avesh", 'course' : "Full Stack",'rollno' : 102},
  {'name' : "Parth", 'course' : "CA",'rollno' : 103},
  {'name' : "Praful", 'course' : "Flutter",'rollno' : 104},
  {'name' : "Ankit", 'course' : "Flutter",'rollno' : 101},
  {'name' : "Avesh", 'course' : "Full Stack",'rollno' : 102},
  {'name' : "Parth", 'course' : "CA",'rollno' : 103},
  {'name' : "Praful", 'course' : "Flutter",'rollno' : 104},
  {'name' : "Ankit", 'course' : "Flutter",'rollno' : 101},
  {'name' : "Avesh", 'course' : "Full Stack",'rollno' : 102},
  {'name' : "Parth", 'course' : "CA",'rollno' : 103},
  {'name' : "Praful", 'course' : "Flutter",'rollno' : 104},
  {'name' : "Ankit", 'course' : "Flutter",'rollno' : 101},
  {'name' : "Avesh", 'course' : "Full Stack",'rollno' : 102},
  {'name' : "Parth", 'course' : "CA",'rollno' : 103},
  {'name' : "Praful", 'course' : "Flutter",'rollno' : 104},
  {'name' : "Ankit", 'course' : "Flutter",'rollno' : 101},
  {'name' : "Avesh", 'course' : "Full Stack",'rollno' : 102},
  {'name' : "Parth", 'course' : "CA",'rollno' : 103},
  {'name' : "Praful", 'course' : "Flutter",'rollno' : 104},
  {'name' : "Ankit", 'course' : "Flutter",'rollno' : 101},
  {'name' : "Avesh", 'course' : "Full Stack",'rollno' : 102},
  {'name' : "Parth", 'course' : "CA",'rollno' : 103},
  {'name' : "Praful", 'course' : "Flutter",'rollno' : 104},
  {'name' : "Ankit", 'course' : "Flutter",'rollno' : 101},
  {'name' : "Avesh", 'course' : "Full Stack",'rollno' : 102},
  {'name' : "Parth", 'course' : "CA",'rollno' : 103},
  {'name' : "Praful", 'course' : "Flutter",'rollno' : 104},
  {'name' : "Ankit", 'course' : "Flutter",'rollno' : 101},
  {'name' : "Avesh", 'course' : "Full Stack",'rollno' : 102}
];

List StoreDetails = [];

void main()
{
  for(int i = 0; i < StudentDetails.length; i++)
  {
    Processclass student = Processclass.from(data : StudentDetails[i]);
    StoreDetails.add(student);
  }

  for(int i = 0; i < StoreDetails.length; i++)
  {
    print("Name : ${StoreDetails[i].Name}\nCourse : ${StoreDetails[i].Course}\nRollno : ${StoreDetails[i].Rollno}\n");
  }
}