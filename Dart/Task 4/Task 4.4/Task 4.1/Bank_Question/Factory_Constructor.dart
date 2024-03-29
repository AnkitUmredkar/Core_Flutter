import 'dart:io';

class UserDetails
{
  late bool isActive;
  late int age;
  late String balance, phone, eyeColor, name, gender, company, email, address;

  UserDetails(
      {required this.isActive,
      required this.balance,
      required this.age,
      required this.phone,
      required this.eyeColor,
      required this.name,
      required this.address,
      required this.company,
      required this.email,
      required this.gender});

  factory UserDetails.frombank({required data}) {
    return UserDetails(
      isActive: data['isActive'],
      age: data['age'],
      balance: data['balance'],
      phone: data['phone'],
      eyeColor: data['eyeColor'],
      name: data['name'],
      gender: data['gender'],
      company: data['company'],
      email: data['email'],
      address: data['address'],
    );
  }
}