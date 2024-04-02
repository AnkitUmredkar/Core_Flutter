import 'dart:io';

void main() {
  SuperMarket supermarket = SuperMarket();
  int count = 1, qty = 0;
  int ck = 1;
  List customers = [];
  List cart = [];
  List map = [
    {'name': "Milk", 'id': 541, 'qty': qty},
    {'name': "Sugar", 'id': 542, 'qty': qty},
    {'name': "Salt", 'id': 543, 'qty': qty},
    {'name': "Tea", 'id': 544, 'qty': qty},
    {'name': "Cofee", 'id': 545, 'qty': qty},
    {'name': "Snacks", 'id': 546, 'qty': qty},
  ];

  do {
    supermarket.GetChoice();

    switch (supermarket.Choice) {
      case 1:
        print("Enter Customer $count Details :\n");
        SuperMarket supermarket = SuperMarket();
        supermarket.setter();
        customers.add(supermarket);
        supermarket.Product();

        if (supermarket.qty != 0) {
          map[supermarket.ChoiceProduct - 1]['qty'] = supermarket.qty;
          cart.add(map[supermarket.ChoiceProduct - 1]);
        }
        count++;

        while (ck == 1) {
          stdout.write("\nDo You want to add Another Product\n[1 or 0] : ");
          int ck = int.parse(stdin.readLineSync()!);
          if (ck == 1) {
            supermarket.Product();
            map[supermarket.ChoiceProduct - 1]['qty'] = supermarket.qty;
            if (supermarket.qty != 0) {
              map[supermarket.ChoiceProduct - 1]['qty'] = supermarket.qty;
              cart.add(map[supermarket.ChoiceProduct - 1]);
            }
          } else {
            print("\nThank You....\n");
            break;
          }
        }
        break;

      case 2:
        print("----------------------------");
        for (int i = 0; i < cart.length; i++) {
          customers[i].getter(i);
          print(cart[i]);
        }
        print("----------------------------\n");
        break;

      case 3:
        bool found = false;
        stdout.write("\nEnter Customer ID Number : ");
        int search = int.parse(stdin.readLineSync()!);
        print("----------------------------");
        for (int i = 0; i < customers.length; i++) {
          if (search == customers[i].cust_id) {
            customers[i].getter(i);

            found = true;
          }
        }
        print("----------------------------\n");
        if (found == false) {
          print("\nCustomer ID Number not found..!!");
        }
        break;

      case 4:
        print("\n----------------------------");
        print("Thank you for Visit..");
        print("----------------------------\n");
        break;

      default:
        print("\nInvalid Choice..!!\n");
    }
  } while (supermarket.Choice != 4);
}

class SuperMarket {
  late String cust_name, cust_contact;
  late int cust_id, Choice, ChoiceProduct, qty;

  void setter() {
    stdout.write("Enter Customer ID: ");
    cust_id = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Customer Name: ");
    cust_name = stdin.readLineSync()!;
    stdout.write("Enter Customer Contact: ");
    cust_contact = stdin.readLineSync()!;
  }

  void getter(int i) {
    print("Customer ${i + 1} Deails are Below...");
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
    print("----------------------------");
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
    ChoiceProduct = int.parse(stdin.readLineSync()!);
    if (ChoiceProduct >= 1 && ChoiceProduct <= 6) {
      stdout.write("Enter Quantity : ");
      qty = int.parse(stdin.readLineSync()!);
    } else {
      print("\nInvalid Choice\n");
      Product();
    }
  }
}
