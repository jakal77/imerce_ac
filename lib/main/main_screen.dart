import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:imerce_ac/main/widgets/main_widgets.dart';
import 'package:imerce_ac/screen/cart/cart_screen.dart';
import 'package:imerce_ac/screen/category/category_screen.dart';
import 'package:imerce_ac/screen/home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  MainWidgets mainWidgets = MainWidgets();
  int _currentIndex = 0;
  HomeScreen home = HomeScreen();
  CategoryScreen cate = CategoryScreen();
  CartScreen cart = CartScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("comerceapp", style: TextStyle(color: Colors.black)),
        elevation: 0,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          home,
          cate,
          cart,
        ],
      ),
      bottomNavigationBar: mainWidgets.navigationBar(
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          }),
    );
  }
}
