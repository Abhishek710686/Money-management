import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ieee_intern_task/screens/login.dart';
import 'package:ieee_intern_task/screens/profile_screens.dart/screen.dart';
import 'package:ieee_intern_task/screens/sign_up.dart';
import 'package:ieee_intern_task/screens/welcome.dart';
import 'package:ieee_intern_task/starting_screens.dart/pageview.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    home: Pageview(),
    );
  }
}
