import 'package:flutter/material.dart';
import 'package:ieee_intern_task/screens/profile_screens.dart/screen.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: HomeScreen.selectedIndex,
      builder: (BuildContext context,int updatedIndex, Widget?_){
        return BottomNavigationBar(
        currentIndex: updatedIndex,
        onTap: (newIndex) {
          HomeScreen.selectedIndex.value = newIndex;
        },
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark),label: 'Transctions'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'Account'),
      ]);
      },
    );
  }
}