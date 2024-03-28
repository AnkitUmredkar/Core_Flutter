import 'dart:io';

class Processclass
{
  late String Name,Course;
  late int Rollno;

  Processclass({required this.Name,required this.Course,required this.Rollno});

  factory Processclass.from({required data})
  {
    return  Processclass(
      Name : data['name'],
      Course : data['course'],
      Rollno : data['rollno'],
    );
  }
}