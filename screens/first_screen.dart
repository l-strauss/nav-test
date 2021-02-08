import 'package:flutter/material.dart';
import 'package:nav_test/models/args.dart';
import 'package:nav_test/screens/home.dart';

class FirstScreen extends StatelessWidget {
  static const routeName = '/FirstScreen';

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute settings and cast
    // them as ScreenArguments.
    final FirstScreenArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Column(
        children: [
          Center(
            child: Text(args.message),
          ),
          ElevatedButton(
            child: Text("Navigate to home screen"),
            onPressed: () {
              // When the user taps the button, navigate to a named route
              // and provide the arguments as an optional parameter.
              Navigator.pushNamed(
                context,
                Home.routeName,
              );
            },
          ),
        ],
      ),
    );
  }
}
