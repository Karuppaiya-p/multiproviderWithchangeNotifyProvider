import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_3/provider/ItemAddNotifier.dart';
import 'package:provider_3/provider/ShopNameNotifier.dart';

class AddItemScreen extends StatelessWidget{
  AddItemScreen():super();

  @override
  Widget build(BuildContext context) {
    
    final TextEditingController _itemNameController=TextEditingController();
    final TextEditingController _shopNameController=TextEditingController();

    final title="Add Item";
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _itemNameController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15.0),
                hintText: 'Item Name',
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              child: Text('ADD ITEM'),
              onPressed: () async {
                if (_itemNameController.text.isEmpty) {
                  return;
                }
                await Provider.of<ItemAddNotifier>(context, listen: false)
                    .addItem(_itemNameController.text);
                Navigator.pop(context);
              },
            ),
             TextField(
              controller: _shopNameController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15.0),
                hintText: 'Shop Name',
              ),
            ),
            ElevatedButton(
              child: Text('ADD ITEM'),
              onPressed: () async {
                if (_shopNameController.text.isEmpty) {
                  return;
                }
                await Provider.of<ShopNameNotifier>(context, listen: false)
                    .updateShopName(_shopNameController.text);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}