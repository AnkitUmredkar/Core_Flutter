
void main()
{
  List <int> a = [1, 2, 3, 4, 5, 2];

  for (int i = 0; i < a.length; i++)
  {
    print(a[i]);
  }

  //add : add element to the end of the list
  //a.add(6);  
  //print(a);

  //addAll : add all elements to the end of the list
  //a.addAll([7,8,9,10]); 
  //print(a);

  //insert : add element to the given position in List
  // a.insert(2,20);
  // print(a);

  //insertALl : add Multiple values at given position in List
  // a.insertAll(2,[10,20,30]);
  // print(a);

  //remove : remove elment from the given Value
  // a.remove(4);
  // print(a);

  //removeAt : remove element to the given postion in List
  // a.removeAt(1);
  // print(a);

  //removeRange : to remove the range in the give position value
  // a.removeRange(0, 3);
  // print(a);

  //clear : remove all elements from the List
  // a.clear();
  // print(a);

  //indexOf : To know the Index of value int The list
  // int i = a.indexOf(2);
  // print("\n$i");

  //elementAt : To know the element at th given index in List
  // print("\n${a.elementAt(2)}");

  //lastIndexOf: To know the Last Index of value int The list
  // if [1,2,3,4,5,2]
  // then the output will be 5
  // print("\n${a.lastIndexOf(2)}");

  // contains : To know if the value is present in the list
  // if [1,2,3,4,5,2] and we put a.contains(2) now 2 is present in 
  // List so output will be true
  // print("\n${a.contains(2)}");

  //reversed : to reverse the list
  // print("${a.reversed.toList()}")

  //runtimeType : to know the runtime type
  // print("\n${a.runtimeType}");

  //length : to know the length of the list
  // print("\n${a.length}");

  //replaceRange : to replace the range in the give position to given value
  // a.replaceRange(0, 3, [8,7,6]);
  // print(a);

  //first : print First element only of the list
  // print("\n${a.first}");

  //last : print Last element only of the list
  // print("\n${a.last}");

  //firstWhere : print First element only of the list where the given value is the first
  // int i = a.firstWhere((element) => element == 2);
  // print("\n${a.indexOf(i)}");

  //lastWhere : print Last element only of the list where the given value is the last
  // print("\n${a.lastWhere((element) => element == 3)}");

  //isEmpty : To know if the list is empty
  // print("\n${a.isEmpty}"); 

  //isNotEmpty : To know if the list is not empty
  // print("\n${a.isNotEmpty}"); 

  // every : To know if all the elements in the list are true
  // print("\n${a.every((element) => element == 6)}");
  //if i write a = [1] only then the output will be true

  //iterator : To know if the list is iterator or not 
  // print("\n${a.iterator}");
  //it is return the type of the list
  
  //getRange : To know if the list is a range or not and return the Values of the range
  // a.getRange(start, end)
  // print("\n ${a.getRange(0, 5)}");

  //setRange : To Set a Range of Element by the user
  // a.setRange(start, end, iterable)
  // a.setRange(0, 6, [5,4,3,2,1,2]);
  // print(a);

  // Syntax of fixed List is : List of elements with the specified length
  

  //filledList : A list of same elements with the specified length
  //Syntax :  List_Name,filled(length, element)
  // List<int> b = List.filled(5, 2);
  // print(b);

}