import 'package:flutter/material.dart';
import 'provider/ItemAddNotifier.dart';
import 'provider/ShopNameNotifier.dart';
import 'package:provider/provider.dart';
import 'provider/HomeScreen.dart';
void main() {
  runApp(HomeApp());
}class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ItemAddNotifier>(
          create: (BuildContext context) {
            return ItemAddNotifier();
          },
        ),
        ChangeNotifierProvider<ShopNameNotifier>(
          create: (BuildContext context) {
            return ShopNameNotifier();
          },
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}