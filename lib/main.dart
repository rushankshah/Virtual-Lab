import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:turing/Screens/activity_detail.dart';
import 'package:turing/Screens/activity_screen.dart';
import 'package:turing/Screens/home_screen.dart';
import 'package:turing/Screens/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Virtual Labs',
      theme: ThemeData(backgroundColor: Colors.white),
      initialRoute: '/loading',
      routes: {
        '/': (BuildContext context) => HomeScreen(),
        '/activityScreen': (BuildContext context) => ActivityScreen(),
        '/loading': (BuildContext context) => LoadingScreen(),
        '/activityDetail': (BuildContext context) => ActivityDetail(),
      },
    );
  }
}
