import 'package:flutter/material.dart';
class ShopNameNotifier extends ChangeNotifier {
  //
  String shopName = '';
  
  updateShopName(String shopName) {
    this.shopName = shopName;
    notifyListeners();
  }
}