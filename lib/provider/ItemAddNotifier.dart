import 'package:flutter/material.dart';
import 'Item.dart';

class ItemAddNotifier extends ChangeNotifier {

  List<Item> itemList = [];
  
  addItem(String itemName) {
    Item item = Item(itemName);
    itemList.add(item);   
    notifyListeners();
  }
}