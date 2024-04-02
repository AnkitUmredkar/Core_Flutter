// import 'dart:io';

// class ProductData {
//   List productList = [
//     {'productId': 1, "productName": "Milk", "price": 250, 'quantity': 0},
//     {'productId': 2, "productName": "Bread", "price": 165, 'quantity': 0},
//     {'productId': 3, "productName": "Eggs", "price": 290, 'quantity': 0},
//     {'productId': 4, "productName": "Bananas", "price": 65, 'quantity': 0},
//     {'productId': 5, "productName": "Chicken", "price": 500, 'quantity': 0},
//     {'productId': 6, "productName": "Cereal", "price": 370, 'quantity': 0},
//     {'productId': 7, "productName": "Coffee", "price": 580, 'quantity': 0},
//   ];

//   List customerCart = [];

//   List showInventory() {
//     int productChoice = 0;
//     int productQuantity = 0;
//     Map map = {};

//     print("\n* * * * * * * * * * * * * * * * * * * * *");
//     print("*                Inverntory             *");
//     print("*                                       *");

//     for (int i = 0; i < productList.length; i++) {
//       print(
//           "*   Enter ${productList[i]['productId']} for ${productList[i]['productName']} - price(${productList[i]['price']})\t*");
//     }

//     print("*                                       *");
//     print("* * * * * * * * * * * * * * * * * * * * *\n");

//     print("\n- - - - - - - - - - - - - - - - - -");
//     stdout.write(">> Enter your product choice : ");
//     productChoice = int.parse(stdin.readLineSync()!);

//     if (productChoice <= 7 && productChoice > 0) {
//       map['productId'] = productList[productChoice - 1]['productId'];
//       map['productName'] = productList[productChoice - 1]['productName'];
//       map['price'] = productList[productChoice - 1]['price'];

//       stdout.write("Enter quantity : ");
//       productQuantity = int.parse(stdin.readLineSync()!);
//       print("- - - - - - - - - - - - - - - - - -\n");

//       map['quantity'] = productQuantity;

//       customerCart.add(map);

//       stdout.write("Do you want to add another product ? [y/n] : ");
//       String repeat = stdin.readLineSync()!;

//       if (repeat == 'y') {
//         showInventory();
//       }
//     } else {
//       print("Enter valid option!");
//       showInventory();
//     }

//     return customerCart;
//   }

//   static getCartData(List list) {
//     double finalAmt = 0;
//     double discountAmt = 0;
//     double discount = 0;

//     print("\n- - - - Customer cart detail - - - -");

//     for (int i = 0; i < list.length; i++) {
//       finalAmt += ((list[i]['price'] as int) * (list[i]['quantity'] as int));
//       print(
//           "name : ${list[i]['productName']}, price : ${list[i]['price']}, quantity : ${list[i]['quantity']}");
//     }
//     if (finalAmt >= 500 && finalAmt <= 1500)
//       discount = 10;
//     else if (finalAmt > 1500 && finalAmt <= 3500)
//       discount = 20;
//     else if (finalAmt > 3500 && finalAmt <= 6500)
//       discount = 25;
//     else if (finalAmt > 6500) discount = 30;

//     discountAmt = finalAmt - (finalAmt * (discount / 100));

//     print(
//         "\nFinal Amount : $finalAmt\nDiscount Amonut : $discountAmt ($discount%)\n");

//     print("# # # # # # # # # # # # # # # # # #");
//   }
// }

// class CustomerData extends ProductData {
//   late int _customerId;
//   late String _customerName;
//   late String _customerContact;

//   setter() {
//     print("\n- - - - - - - - - - - - - - - - - -");
//     stdout.write(">> Enter customer id : ");
//     _customerId = int.parse(stdin.readLineSync()!);
//     stdout.write(">> Enter customer name : ");
//     _customerName = stdin.readLineSync()!;
//     stdout.write(">> Enter customer1 contact number : ");
//     _customerContact = stdin.readLineSync()!;
//     print("- - - - - - - - - - - - - - - - - -\n");
//   }

//   getter() {
//     print("\nCustomer id : $_customerId");
//     print("Customer name : $_customerName");
//     print("Customer contact number : $_customerContact");
//   }

//   getId() => _customerId;
// }

// class SuperMarket extends CustomerData {
//   List customerData = [];

//   static int getDash() {
//     int choice;

//     print("\n* * * * * * * * * * * * * * * * * *");
//     print("*                                 *");
//     print("*   1. for add new customer       *");
//     print("*   2. for all customer data      *");
//     print("*   3. for search customer data   *");
//     print("*   4. for exit                   *");
//     print("*                                 *");
//     print("* * * * * * * * * * * * * * * * * *\n");

//     //geeting user choice
//     print("\n- - - - - - - - - - - - - - - - - -");
//     stdout.write(">> Enter your choice : ");
//     choice = int.parse(stdin.readLineSync()!);
//     print("- - - - - - - - - - - - - - - - - -");

//     return choice;
//   }
// }

// void main() {
//   int choice;
//   choice = SuperMarket.getDash();
//   ProductData productData = ProductData();
//   List customerList = [];

//   while (true) {
//     switch (choice) {
//       case 1:
//         //getting user info
//         CustomerData customerData = new CustomerData();
//         customerData.setter();
//         productData = new ProductData();

//         //getting cart details

//         Map map = {};
//         map['customerInfo'] = customerData;
//         List list = productData.showInventory();
//         map['cartData'] = list;

//         customerList.add(map);

//         break;

//       case 2:
//         print("\n# # # # # # # # # # # # # # # # # #");

//         for (int i = 0; i < customerList.length; i++) {
//           customerList[i]['customerInfo'].getter();
//           ProductData.getCartData(customerList[i]['cartData']);
//         }
//         break;

//       case 3:
//         int searchId;
//         bool found = false;

//         print("\n- - - - - - - - - - - - - - - - - -");
//         stdout.write(">> Enter cutomer id for search data : ");
//         searchId = int.parse(stdin.readLineSync()!);
//         print("- - - - - - - - - - - - - - - - - -");

//         for (int i = 0; i < customerList.length; i++) {
//           if (searchId == customerList[i]['customerInfo'].getId()) {
//             found = true;
//             customerList[i]['customerInfo'].getter();
//             ProductData.getCartData(customerList[i]['cartData']);
//           }
//         }

//         if (!found) {
//           print("\n- - - - - - - - - - - - - - - - - -");
//           print("        No records found!");
//           print("- - - - - - - - - - - - - - - - - -\n");
//         }
//         break;

//       case 4:
//         exit(0);

//       default:
//         print("Enter valid choice!");
//         SuperMarket.getDash();
//     }
//     choice = SuperMarket.getDash();
//   }
// }

import 'dart:io';

void main() {
  int choice;

  choice = Market.Dashboard();

  All_Product p1 = All_Product();

  List customerList = [];

  while (true) {
    switch (choice) {
      case 1:
        Customer c1 = new Customer();
        c1.Input();
        p1 = new All_Product();

        Map map = {};
        map['customerInfo'] = c1;
        List list = p1.Materials();
        map['cartData'] = list;

        customerList.add(map);

        break;

      case 2:
        print("\n! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ");

        for (int i = 0; i < customerList.length; i++) {
          customerList[i]['customerInfo'].Output();
          All_Product.Cart_Data(customerList[i]['cartData']);
        }
        break;

      case 3:
        int searchId;
        bool found = false;

        print("\n- - - - - - - - - - - - - - - - - -");
        stdout.write("Enter cutomer id  : ");
        searchId = int.parse(stdin.readLineSync()!);
        print("- - - - - - - - - - - - - - - - - -");

        for (int i = 0; i < customerList.length; i++) {
          if (searchId == customerList[i]['customerInfo'].TakeId()) {
            found = true;
            customerList[i]['customerInfo'].Output();
            All_Product.Cart_Data(customerList[i]['cartData']);
          }
        }

        if (!found) {
          print("\n- - - - - - - - - - - - - - - - - -");
          print("        No records found!");
          print("- - - - - - - - - - - - - - - - - -\n");
        }
        break;

      case 4:
        exit(0);

      default:
        print("Enter valid choice!");
        Market.Dashboard();
    }
    choice = Market.Dashboard();
  }
}

class All_Product {
  List ProductList = [
    {"Pr.id": 1, "Pr.name": "Sugar", "Price": 50, "Quantity": 1},
    {"Pr.id": 2, "Pr.name": "Pulses", "Price": 120, "Quantity": 1},
    {"Pr.id": 3, "Pr.name": "Rice", "Price": 1200, "Quantity": 1},
    {"Pr.id": 4, "Pr.name": "Kaju", "Price": 600, "Quantity": 1},
    {"Pr.id": 5, "Pr.name": "Almond", "Price": 700, "Quantity": 1},
    {"Pr.id": 6, "Pr.name": "Kismis", "Price": 150, "Quantity": 1},
    {"Pr.id": 7, "Pr.name": "Tea", "Price": 50, "Quantity": 1},
    {"Pr.id": 8, "Pr.name": "coffee", "Price": 70, "Quantity": 1},
    {"Pr.id": 9, "Pr.name": "Bread", "Price": 50, "Quantity": 1},
    {"Pr.id": 10, "Pr.name": "Jam", "Price": 185, "Quantity": 1},
  ];

  List cartList = [];

  List Materials() {
    int Choose_Product = 0;
    int Choose_Product_Quantity = 0;
    Map map = {};

    print("\n* * * * * * * * * * * * * * * * * * * * * *");
    print("*            --------------------         *");
    print("*            |   All Products   |         *");
    print("*            --------------------         *");
    print("*                                         *");

    for (int i = 0; i < ProductList.length; i++) {
      print(
          "*            ${ProductList[i]['Pr.id']}.${ProductList[i]['Pr.name']} (${ProductList[i]['Price']}Rs)\t\t  *");
    }
    print("*                                         *");
    print("*                                         *");
    print("* * * * * * * * * * * * * * * * * * * * * *\n");

    print("\n- - - - - - - - - - - - - - - - - -");
    stdout.write("Enter your product : ");
    Choose_Product = int.parse(stdin.readLineSync()!);

    if (Choose_Product <= 10 && Choose_Product > 0  ) {
      map['Pr.id'] = ProductList[Choose_Product - 1]['Pr.id'];
      map['Pr.name'] = ProductList[Choose_Product - 1]['Pr.name'];
      map['Price'] = ProductList[Choose_Product - 1]['Price'];

      stdout.write("Enter the number of Quantity : ");
      Choose_Product_Quantity = int.parse(stdin.readLineSync()!);
      print("- - - - - - - - - - - - - - - - - -\n");

      map['Quantity'] = Choose_Product_Quantity;

      cartList.add(map);

      stdout.write("You want to add moreee ? [y/n] : ");
      String Repeat = stdin.readLineSync()!;

      if (Repeat == 'y') {
        Materials();
      }
    } else {
      print("Plz enter the valid option!");
      Materials();
    }

    return cartList;
  }

  static Cart_Data(List list) {
    double Discount = 0;
    double Total_Amount = 0;
    double Discount_Amount = 0;
    double Payable_Amount = 0;

    print('\n-------- Customer cart Details --------\n');

    for (int i = 0; i < list.length; i++) {
      Total_Amount +=
          ((list[i]['Price'] as int) * (list[i]['Quantity'] as int));
      print(
          "Name : ${list[i]['Pr.name']}, Price : ${list[i]['Price']}Rs , Quantity : ${list[i]['Quantity']}");
    }

    if (Total_Amount >= 500 && Total_Amount <= 1510) {
      Discount = 10;
    } else if (Total_Amount > 1510 && Total_Amount <= 3510) {
      Discount = 20;
    } else if (Total_Amount > 3510 && Total_Amount <= 6510) {
      Discount = 25;
    } else if (Total_Amount > 6510) {
      Discount = 30;
    }

    Discount_Amount = Total_Amount * (Discount / 100);
    Payable_Amount = Total_Amount - Discount_Amount;

    print("\n Total Amount ->  $Total_Amount");
    print("\n Discount Amount ->  $Discount_Amount  ($Discount%)");
    print("\n Payable Amount ->  $Payable_Amount");

    print("\n - * - * - * - * - * - * - * - * - * - * - * - *\n");
  }
}

class Customer extends All_Product {
  late int _Id;
  late String _Name;
  late String _Contact_no;

  Input() {
    print("\n- - - - - - - - - - - - - - - - - -");

    stdout.write("Enter The Customer Id : ");
    _Id = int.parse(stdin.readLineSync()!);

    stdout.write("Enter customer name : ");
    _Name = stdin.readLineSync()!;

    stdout.write("Enter customer contact number : ");
    _Contact_no = stdin.readLineSync()!;

    print("- - - - - - - - - - - - - - - - - -\n");
  }

  Output() {
    print("\nCustomer id : $_Id");
    print("Customer name : $_Name");
    print("Customer contact number : $_Contact_no");
  }

  TakeId() => _Id;
}

class Market {
  List customer_data = [];

  static int Dashboard() {
    int choice;

    print("\n* * * * * * * * * * * * * * * * * * * * * * *");
    print("*                                           *");
    print("*                Welcomeeee                 *");
    print("*               ------------                *");
    print("*                                           *");
    print("*   Press 1 for Add new customer            *");
    print("*   Press 2 for All customer data           *");
    print("*   Press 3 for Search existed customer     *");
    print("*   Press 4 for Exit                        *");
    print("*                                           *");
    print("* * * * * * * * * * * * * * * * * * * * * * *\n");

    stdout.write("Enter your choice : ");
    choice = int.parse(stdin.readLineSync()!);
    print("- - - - - - - - - - - - - - - - - -");

    return choice;
  }
}