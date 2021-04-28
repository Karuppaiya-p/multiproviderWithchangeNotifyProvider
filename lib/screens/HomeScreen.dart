import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'AddItemScreen.dart';
import '../provider/ItemAddNotifier.dart';
import '../provider/ShopNameNotifier.dart';
class HomeScreen extends StatelessWidget {
  //
  HomeScreen() : super();
  final String title = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (context) {
                    return AddItemScreen();
                  },
                ),
              );
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Consumer<ShopNameNotifier>(
              builder: (context, shopNameNotifier, _) {
              return Text('Shop Name: ${shopNameNotifier.shopName}');
              },
            ),
            Expanded(
              child: Consumer<ItemAddNotifier>(
                builder: (context, itemAddNotifier, _) {
                  return ListView.builder(
                    itemCount: itemAddNotifier.itemList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          itemAddNotifier.itemList[index].itemName,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black ,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}