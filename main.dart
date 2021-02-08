import 'package:flutter/material.dart';
import 'package:nav_test/screens/first_screen.dart';
import 'package:nav_test/screens/home.dart';
import 'package:nav_test/screens/second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Home.routeName: (context) => Home(),
        FirstScreen.routeName: (context) => FirstScreen(),
        SecondScreen.routeName: (context) => SecondScreen(),
      },
    );
  }
}
