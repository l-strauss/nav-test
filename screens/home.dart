import 'package:flutter/material.dart';
import 'package:nav_test/models/args.dart';
import 'package:nav_test/screens/first_screen.dart';
import 'package:nav_test/screens/second_screen.dart';

class Home extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Column(
        children: [
          ElevatedButton(
            child: Text("Navigate to first screen"),
            onPressed: () {
              // When the user taps the button, navigate to a named route
              // and provide the arguments as an optional parameter.
              Navigator.pushNamed(
                context,
                FirstScreen.routeName,
                arguments: FirstScreenArguments(
                  'First Screen',
                  'Arguments for first screen',
                ),
              );
            },
          ),
          ElevatedButton(
            child: Text("Navigate to second screen"),
            onPressed: () {
              // When the user taps the button, navigate to a named route
              // and provide the arguments as an optional parameter.
              Navigator.pushNamed(
                context,
                SecondScreen.routeName,
                arguments: SecondScreenArguments(
                  'Second Screen',
                  'Arguments for second screen',
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
