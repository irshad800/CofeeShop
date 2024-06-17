import 'package:flutter/cupertino.dart';

import 'cofee.dart';

class CofeeShop extends ChangeNotifier {
  final List<cofee> _shop = [
    cofee(
        name: 'Long black',
        price: '400',
        imagepath: 'assets/images/Long+Black.jpeg'),
    cofee(name: 'Latte', price: '500', imagepath: 'assets/images/LATTE.jpeg'),
    cofee(
        name: 'Espresso',
        price: '200',
        imagepath: 'assets/images/ESPRESSO.jpeg'),
    cofee(
        name: 'iced cofee',
        price: '450',
        imagepath: 'assets/images/ICED C.JPG'),
  ];
  List<cofee> _usercart = [];

  List<cofee> get coffeeshop => _shop;
  List<cofee> get usercart => _usercart;

  void addItemToCart(cofee cofee) {
    _usercart.add(cofee);
    notifyListeners();
  }

  void removeItemFromCart(cofee cofee) {
    _usercart.remove(cofee);
    notifyListeners();
  }
}
