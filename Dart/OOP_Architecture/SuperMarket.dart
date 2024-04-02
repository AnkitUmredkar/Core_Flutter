import 'dart:io';

class Supermarket {
  late String cust_name, cust_contact;
  late int cust_id, Choice, Choice2;

  void setter() {
    stdout.write("Enter Customer ID: ");
    cust_id = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Customer Name: ");
    cust_name = stdin.readLineSync()!;
    stdout.write("Enter Customer Contact: ");
    cust_contact = stdin.readLineSync()!;
  }

  void getter() {
    print("\nCustomer ${1} Deails are Below");
    print("Customer ID     : $cust_id");
    print("Customer Name   : $cust_name");
    print("Customer Contact: $cust_contact");
  }

  void GetChoice() {
    print("\n----------------------------");
    print("Enter 1 : Add Customer");
    print("Enter 2 : Display All Customer");
    print("Enter 3 : Search Customer By ID");
    print("Enter 4 : For Exit");
    print("\n----------------------------");
    stdout.write("\n>> Enter Your Choice : ");
    Choice = int.parse(stdin.readLineSync()!);
  }

  void Product() {
    print("\nWelcome To Our Super Market");
    print("Enter 1 For Milk - Price(250)");
    print("Enter 2 For Sugar - Price(180)");
    print("Enter 3 For Salt - Price(300)");
    print("Enter 4 For Tea - Price(180)");
    print("Enter 5 For Cofee - Price(200)");
    print("Enter 6 For Snacks - Price(400)");
    stdout.write("Enter Your Choice : ");
    Choice2 = int.parse(stdin.readLineSync()!);
  }

  void map({required int qty}) {}
}

void main() {
  Supermarket s1 = Supermarket();
  List l1 = [];
  List cart = [];
  int? choice, qty;
  List map = [
    {'name': "Milk", 'id': 541, 'qty': qty},
    {'name': "Sugar", 'id': 542, 'qty': qty},
    {'name': "Salt", 'id': 543, 'qty': qty},
    {'name': "Tea", 'id': 544, 'qty': qty},
    {'name': "Cofee", 'id': 545, 'qty': qty},
    {'name': "Snacks", 'id': 546, 'qty': qty},
  ];

  do {
    s1.GetChoice();

    switch (s1.Choice) {
      case 1:
        int ck;
        Supermarket s1 = Supermarket();
        s1.setter();
        l1.add(s1);
        s1.Product();
        if (s1.Choice2 >= 1 && s1.Choice2 <= 6) {
          stdout.write("Enter Quantity : ");
          int qty = int.parse(stdin.readLineSync()!);
          map[s1.Choice2]['qty'] = qty;
          cart.add(map[s1.Choice2]);
        } else {
          print("\nInvalid Choice\n");
          s1.Product();
        }

        do {
          stdout.write("\nDo You want to add Another Product\n[1 or 0] : ");
          ck = int.parse(stdin.readLineSync()!);

          if (ck == 1) {
            s1.Product();
            stdout.write("Enter Quantity : ");
            int qty = int.parse(stdin.readLineSync()!);
            map[s1.Choice2]['qty'] = qty;
            cart.add(map[s1.Choice2]);
          } else {
            print("\nThank You\n");
            s1.GetChoice();
          }
        } while (ck == 1);
        break;

      case 2:
        s1.getter();

      default:
        print("Enter Valid Input..!!");
    }
  } while (true);
}
