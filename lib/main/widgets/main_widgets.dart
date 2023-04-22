import 'package:flutter/material.dart';

class MainWidgets {
  BottomNavigationBar navigationBar({
    required int currentIndex,
    required Function(int value) onTap,
  }) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: "category",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shop),
          label: "shop",
        ),
      ],
      currentIndex: currentIndex,
      onTap: (value) {
        onTap(value);
      },
    );
  }
}
