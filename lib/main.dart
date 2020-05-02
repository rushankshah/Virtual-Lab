import 'package:flutter/material.dart';
import 'package:turing/Screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(backgroundColor: Colors.white),
      home: HomeScreen(),
    );
  }
}
