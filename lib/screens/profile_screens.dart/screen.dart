import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ieee_intern_task/screens/profile_screens.dart/home.dart';
import 'package:ieee_intern_task/screens/profile_screens.dart/profile.dart';
import 'package:ieee_intern_task/screens/profile_screens.dart/transctions.dart';

import 'bottoam_navigation.dart';

class HomeScreen extends StatelessWidget {
HomeScreen({Key? key}) : super(key: key);

 static ValueNotifier<int> selectedIndex = ValueNotifier(0);

  final _pages = [
    Home(),
    Transctions(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 239, 239),
      bottomNavigationBar: const BottomNavigation(),
      body: SafeArea(child: ValueListenableBuilder(valueListenable: selectedIndex, 
        builder:( BuildContext context, int updatedIndex, Widget?_ ){
            return _pages[updatedIndex];
        }
        ),
        
        ),
    );
  }  
}
