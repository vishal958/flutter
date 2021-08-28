import 'package:flutter/material.dart';

class Shoppingcart extends ChangeNotifier {
  List<String> _shoppingCart = ['Apple', 'Mango', 'Banana'];
  int get counts => _shoppingCart.length;

  List<String> get cart => _shoppingCart;

  void addItme(String item) {
    _shoppingCart.add(item);
    notifyListeners();
  }
}
