import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<Home> {
  //This is the root of the application
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Text('Demo Page- END OF REVIEW'),
      ),
    );
  }
}
